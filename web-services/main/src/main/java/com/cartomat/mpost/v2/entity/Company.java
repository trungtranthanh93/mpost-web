package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author huong.dang@cartomat.com.
 */
@Entity
@Table(name = "Company")
@Access(AccessType.FIELD)
public class Company {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "nContractNumber", length = 50)
    private String contractNumber;

    @Column(name = "sName", length = 30)
    private String name;

    @Column(name = "sVat", length = 18)
    private String vat;

    @Column(name = "sAddress1", length = 60)
    private String address1;

    @Column(name = "sAddress2", length = 10)
    private String address2;

    @ManyToOne
    @JoinColumn(name = "nPostCodeId", updatable = false, insertable = false)
    private PostCode postCode;

    @Column(name = "nPostCodeId")
    private long postCodeId;

    @Column(name = "sLg", length = 10)
    private String lg;

    @Column(name = "sWebSite", length = 15)
    private String webSite;

    @Column(name = "sTel", length = 15)
    private String tel;

    @Column(name = "sFax", length = 15)
    private String fax;

    @Column(name = "sLogin", length = 20)
    private String login;

    @Column(name = "sPwd", length = 20)
    private String pwd;

    @Column(name = "bActive", length = 256)
    private boolean active;

    @Column(name = "nMentorId")
    private int mentor;

    @ManyToOne
    @JoinColumn(name = "nComListId", updatable = false, insertable = false)
    private ComList comList;

    @Column(name = "nComListId")
    private Long comListId;

    @Column(name = "nBalance")
    private BigDecimal balance;

    @Column(name = "sInvoiceType", length = 20)
    private String invoiceType;

    @Column(name = "dInsertion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertion;

    @Column(name = "dLastModification")
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastModification;

    @Column(name = "nRiskValue")
    private BigDecimal riskValue;

    @Column(name = "bContractActive")
    private Boolean contractActive;

    @Column(name = "dContractEnd")
    @Temporal(TemporalType.TIMESTAMP)
    private Date contractEnd;

    @Column(name = "sBillingLevel", length = 15)
    private String billingLevel;

    @ManyToOne
    @JoinColumn(name = "nResellerId", updatable = false, insertable = false)
    private Reseller reseller;

    @Column(name = "nResellerId")
    private Long resellerId;

    @ManyToOne
    @JoinColumn(name = "nSaleChannelId", updatable = false, insertable = false)
    private SaleChannel saleChannel;

    @Column(name = "nSaleChannelId")
    private Long saleChannelId;

    @ManyToOne
    @JoinColumn(name = "nProductSupplierId", updatable = false, insertable = false)
    private ProductSupplier productSupplier;

    @Column(name = "nProductSupplierId")
    private Long productSupplierId;

    @ManyToOne
    @JoinColumn(name = "nContactId")
    private Contact contact;

    @Column(name = "nInterConnectedPlatformId")
    private int interConnectedPlatform;

    @Column(name = "bInterConnected", length = 256)
    private boolean interConnected;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getContractNumber() {
        return contractNumber;
    }

    public void setContractNumber(String contractNumber) {
        this.contractNumber = contractNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVat() {
        return vat;
    }

    public void setVat(String vat) {
        this.vat = vat;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public PostCode getPostCode() {
        return postCode;
    }

    public void setPostCode(PostCode postCode) {
        this.postCode = postCode;
    }

    public long getPostCodeId() {
        return postCodeId;
    }

    public void setPostCodeId(long postCodeId) {
        this.postCodeId = postCodeId;
    }

    public String getLg() {
        return lg;
    }

    public void setLg(String lg) {
        this.lg = lg;
    }

    public String getWebSite() {
        return webSite;
    }

    public void setWebSite(String webSite) {
        this.webSite = webSite;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public int getMentor() {
        return mentor;
    }

    public void setMentor(int mentor) {
        this.mentor = mentor;
    }

    public ComList getComList() {
        return comList;
    }

    public void setComList(ComList comList) {
        this.comList = comList;
    }

    public Long getComListId() {
        return comListId;
    }

    public void setComListId(Long comListId) {
        this.comListId = comListId;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public String getInvoiceType() {
        return invoiceType;
    }

    public void setInvoiceType(String invoiceType) {
        this.invoiceType = invoiceType;
    }

    public Date getInsertion() {
        return insertion;
    }

    public void setInsertion(Date insertion) {
        this.insertion = insertion;
    }

    public Date getLastModification() {
        return lastModification;
    }

    public void setLastModification(Date lastModification) {
        this.lastModification = lastModification;
    }

    public BigDecimal getRiskValue() {
        return riskValue;
    }

    public void setRiskValue(BigDecimal riskValue) {
        this.riskValue = riskValue;
    }

    public Boolean getContractActive() {
        return contractActive;
    }

    public void setContractActive(Boolean contractActive) {
        this.contractActive = contractActive;
    }

    public Date getContractEnd() {
        return contractEnd;
    }

    public void setContractEnd(Date contractEnd) {
        this.contractEnd = contractEnd;
    }

    public String getBillingLevel() {
        return billingLevel;
    }

    public void setBillingLevel(String billingLevel) {
        this.billingLevel = billingLevel;
    }

    public Reseller getReseller() {
        return reseller;
    }

    public void setReseller(Reseller reseller) {
        this.reseller = reseller;
    }

    public Long getResellerId() {
        return resellerId;
    }

    public void setResellerId(Long resellerId) {
        this.resellerId = resellerId;
    }

    public SaleChannel getSaleChannel() {
        return saleChannel;
    }

    public void setSaleChannel(SaleChannel saleChannel) {
        this.saleChannel = saleChannel;
    }

    public Long getSaleChannelId() {
        return saleChannelId;
    }

    public void setSaleChannelId(Long saleChannelId) {
        this.saleChannelId = saleChannelId;
    }

    public ProductSupplier getProductSupplier() {
        return productSupplier;
    }

    public void setProductSupplier(ProductSupplier productSupplier) {
        this.productSupplier = productSupplier;
    }

    public Long getProductSupplierId() {
        return productSupplierId;
    }

    public void setProductSupplierId(Long productSupplierId) {
        this.productSupplierId = productSupplierId;
    }

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public int getInterConnectedPlatform() {
        return interConnectedPlatform;
    }

    public void setInterConnectedPlatform(int interConnectedPlatform) {
        this.interConnectedPlatform = interConnectedPlatform;
    }

    public boolean isInterConnected() {
        return interConnected;
    }

    public void setInterConnected(boolean interConnected) {
        this.interConnected = interConnected;
    }
}
