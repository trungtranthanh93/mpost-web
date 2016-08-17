package com.cartomat.mpost.v2.service.impl;

import com.cartomat.mpost.v2.domain.ClosedConvention;
import com.cartomat.mpost.v2.entity.*;
import com.cartomat.mpost.v2.repository.*;
import com.cartomat.mpost.v2.service.FinOpService;
import com.cartomat.mpost.v2.service.FinOperationTypeService;
import com.cartomat.mpost.v2.service.TerminalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Random;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Service
public class TerminalServiceImpl implements TerminalService {
    @Autowired
    private TerminalRepository terminalRepos;

    @Autowired
    private ShopRepository shopRepos;

    @Autowired
    private CompanyRepository companyRepos;

    @Autowired
    private TerminalStockRepository terminalStockRepos;

    @Autowired
    private TerminalSSSRepository terminalSSSRepos;

    @Autowired
    private TerminalSerRepository terminalSerRepos;

    @Autowired
    private ServiceRepository serviceRepos;

    @Autowired
    private TerminalProductRepository terminalProductRepos;

    @Autowired
    private ProductRepository productRepos;

    @Autowired
    private FinPaymentRepository finPaymentRepos;

    @Autowired
    private FinOpService finOpService;

    @Autowired
    private FinOpRepository finOpRepos;

    @Autowired
    private FinOperationTypeService finOperationTypeService;

    @Autowired
    private MpostAccessRepository mpostAccessRepos;

    @Override
    public boolean createTerminal(com.cartomat.mpost.v2.domain.Terminal terminal) {
        Terminal savedTerminal = new Terminal();
        Shop shop = shopRepos.findOne(terminal.getShopId());
        Company company = shop.getCompany();
        savedTerminal.setShop(shop);
        savedTerminal.setLogin(company.getName());
        savedTerminal.setPwd(randomPwd());

        SaleChannel saleChannel = company.getSaleChannel();

        if (saleChannel.getId() == 2) {
            savedTerminal.setConvention(terminal.getConventionNumber());
            savedTerminal.setGuarantyAmount(terminal.getGuarantyAmount());
            savedTerminal.setVirtualCorespondance(terminal.getPartnerCorrespondence());
        }

        TerminalStock terminalStock = terminalStockRepos.findOne(terminal.getSerialNumber());   //SerialNumber = TerminalStock.Id
        savedTerminal.setTerminalStock(terminalStock);
        savedTerminal.setActive(true);
        savedTerminal = terminalRepos.save(savedTerminal);

        terminalStock.setLinked(true); // set bLink = 1 for TerminalStock
        terminalStockRepos.save(terminalStock);

        // insert TerminalProduct
        List<Product> products = productRepos.findAll();
        for (Product product : products) {
            TerminalProduct terminalProduct = new TerminalProduct();
            terminalProduct.setTerminal(savedTerminal);
            terminalProduct.setProduct(product);

            int productPosition = isProductChecked(product.getId(), terminal.getProducts());
            if (productPosition > 0) {
                terminalProduct.setActive(true);
            } else {
                terminalProduct.setActive(false);
            }

            terminalProduct.setPosition(productPosition);
            terminalProductRepos.save(terminalProduct);
        }

        // insert TerminalSer
        List<com.cartomat.mpost.v2.entity.Service> services = serviceRepos.findAll();
        for (com.cartomat.mpost.v2.entity.Service service : services) {
            TerminalSer terminalSer = new TerminalSer();
            terminalSer.setTerminal(savedTerminal);
            terminalSer.setModify(true);
            terminalSer.setService(service);
            terminalSer.setActive(isServiceSelected(service.getId(), terminal.getProducts()));
            terminalSerRepos.save(terminalSer);
        }

        // insert TerminalSSS
        if (saleChannel.getId() == 2) {
            TerminalSSS terminalSSS = new TerminalSSS();
            terminalSSS.setTerminal(savedTerminal);

            if (terminal.isRiskLimited()) {
                terminalSSS.setLimitation(true);
                terminalSSS.setBalance(terminal.getRiskLimit());
            }

            terminalSSS.setName(terminal.getCollectorName());
            terminalSSS.setCode(terminal.getCollectorCode());
            terminalSSSRepos.save(terminalSSS);
        }

        return true;
    }

    @Override
    /**
     *
     */
    public boolean closeConvention(ClosedConvention convention) {

        // 1. INSERT INTO FinPayment (nFinPaymentTypeId, nAmount) VALUES (paymentTypeId, #amount#)
        FinPayment finPayment = new FinPayment();
        finPayment.setAmount(convention.getGuarantyAmountValue().subtract(convention.getGuarantyLossAmountValue()));
        finPayment.setFinPaymentTypeId(4);
        finPayment = finPaymentRepos.save(finPayment);

        long insertedFinPaymentId = finPayment.getId();
        BigDecimal amount = finPayment.getAmount();

        // 2. Get latest balance in FinOp by company
        BigDecimal lastFinOpBalanceByCompany = finOpService.getLatestBalanceByCompany(convention.getCompanyId());

        // 3. create FinOp
        long finOperationTypeId = finOperationTypeService.getFinOperationTypeId();
        String comment = "System repaid the guarantee: " + convention.getGuarantyAmountValue() + ", " +
                "that corresponds to the convention number: " + convention.getConventionNumberValue();

        if (convention.getGuarantyLossAmountValue().doubleValue() > 0) {
            comment = comment + ". The garantee loss cause: " + convention.getComment();
        }

        FinOp finOp = new FinOp();
        finOp.setFinOperationTypeId(finOperationTypeId);
        finOp.setOperation(new Date());
        finOp.setCompanyId(convention.getCompanyId());
        finOp.setFinPaymentId(insertedFinPaymentId);
        finOp.setMentor(1);
        finOp.setOperationSourceId(5);
        finOp.setBalance(lastFinOpBalanceByCompany);
        finOp.setComment(comment);
        finOpRepos.save(finOp);

        // 4. Get nTerminalStockId in Terminal where nid = terinal
        // UPDATE TerminalStock SET bLinked = 0  WHERE nId = terminal stock id
        Terminal terminal = terminalRepos.findOne(convention.getTerminalId());
        TerminalStock terminalStock = terminal.getTerminalStock();
        terminalStock.setLinked(false);
        terminalStockRepos.save(terminalStock);

        // 5. UPDATE Terminal SET nTerminalStockId = NULL, bActive = 0, bActiveConvention = 0,
        // ConventionEnd =; Where nid =terinal id
        terminal.setTerminalStock(null);
        terminal.setActive(false);
        terminal.setActiveConvention(false);
        terminal.setConventionEnd(new Date());
        terminalRepos.save(terminal);

        // 6.1. Get balance in company
        // If balance > 0, comment = Credit Left in you account: #company Balance# is kicked back to your outstanding Account.
        // else: comment = Credit Left in you account: #companyBalance# is added to your outstanding Account.
        if (terminalRepos.countTerminalByCompany(convention.getCompanyId()) > 0) {
            Company company = companyRepos.findOne(convention.getCompanyId());
            BigDecimal balance = company.getBalance();

            // 6.2 INSERT INTO FinPayment (nFinPaymentTypeId, nAmount) nFinPaymentTypeId, amount: company balance
            finPayment.setFinPaymentTypeId(4);
            finPayment.setAmount(company.getBalance());
            finPayment = finPaymentRepos.save(finPayment);

            // 6.3 INSERT INTO FinOp (nFinOperationTypeId, dOperation, nCompanyId,
            //  FinPaymentId, nMentorId, nOperationSourceId, nBalance, sComment)
            String comments = "Credit Left in you account: " + balance;

            if (balance.doubleValue() > 0) {
                comments = comments + " is kicked back to your outstanding Account.";
            } else {
                comments = comments + " is added to your outstanding Account.";
            }

            long idFinPayment = finPayment.getId();
            finOp.setFinOperationTypeId(4);
            finOp.setOperation(new Date());
            finOp.setCompanyId(convention.getCompanyId());
            finOp.setFinPaymentId(idFinPayment);
            finOp.setMentor(1);
            finOp.setOperationSourceId(1);
            finOp.setBalance(company.getBalance());
            finOp.setComment(comments);
            finOpRepos.save(finOp);

            // 6.4. UPDATE Company SET bActive = 0, bContractActive = 0, dContractEnd = today
            company.setActive(false);
            company.setContractActive(false);
            company.setContractEnd(new Date());
            companyRepos.save(company);

            // 6.5. Update shop by this company
            Shop shop = shopRepos.findOne(convention.getShopId());
            shop.setActive(false);
            shop.setContractActive(false);
            shop.setContractEnd(new Date());
            shopRepos.save(shop);

            // 6.6. update access
            // UPDATE Access SET bActive = 0 WHERE nCompanyId = company id tu form
            long accessId = mpostAccessRepos.getAccessByCompany(convention.getCompanyId());
            MpostAccess mpostAccess = mpostAccessRepos.findOne(accessId);
            mpostAccess.setActive(false);
            mpostAccessRepos.save(mpostAccess);
        } else {
            return false;
        }

        // 7.Find all shops: Terminal.bActiveConvention = 1
        // UPDATE Shop SET bActive = 0, bContractActive = 0, dContractEnd = today WHere nid = shop id

        if (terminalRepos.countTerminalByShop(convention.getShopId()) > 0) {
            Shop shop = shopRepos.findOne(convention.getShopId());
            shop.setActive(false);
            shop.setContractActive(false);
            shop.setContractEnd(new Date());
            shopRepos.save(shop);
        }

        return true;
    }

    /**
     * random password function
     */

    private String randomPwd() {
        Random r = new Random();

        String alphabetLower = "abcdefghijklmnopqrstvwuxyz";
        String alphabetUpper = "ABCDEFGHIJKLMNOPQRSTVWUXYZ";
        String number = "0123456789";
        String str = alphabetLower + alphabetUpper + number;
        String password = "";

        for (int j = 0; j < 12; j++) {
            password += str.charAt(r.nextInt(str.length()));
        }

        return password;
    }

    /*
     *  test product checked
     *  if product is checked then return position
     *  if priduct is not checked then return 0
     */
    private int isProductChecked(long id, List<com.cartomat.mpost.v2.domain.Product> products) {
        for (com.cartomat.mpost.v2.domain.Product product : products) {
            if (id == product.getId()) {
                return product.getPosition();
            }
        }
        return 0;
    }

    /*
     *  test service selected
     *  if service is selected then return true;
     *  if service is not selected then return false;
     */
    private boolean isServiceSelected(long id, List<com.cartomat.mpost.v2.domain.Product> products) {
        for (com.cartomat.mpost.v2.domain.Product product : products) {
            long idProductChecked = product.getId();
            long idServiceSelected = productRepos.findOne(idProductChecked).getService().getId();
            if (id == idServiceSelected) {
                return true;
            }
        }
        return false;
    }


}
