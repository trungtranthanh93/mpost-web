package com.cartomat.mpost.v2.service.impl;

import com.cartomat.mpost.v2.domain.Reseller;
import com.cartomat.mpost.v2.entity.ResellerTransaction;
import com.cartomat.mpost.v2.repository.ResellerRepository;
import com.cartomat.mpost.v2.repository.ResellerTransactionRepository;
import com.cartomat.mpost.v2.service.ResellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * @author dat.tran@cartomat.com
 */
@Service
public class ResellerServiceImpl implements ResellerService {
    @Autowired
    private ResellerRepository resellerRepos;

    @Autowired
    private ResellerTransactionRepository resellerTransactionRepos;

    @Override
    public List<com.cartomat.mpost.v2.entity.Reseller> list() {
        return resellerRepos.activeList();
    }

    @Override
    public boolean updateReseller(Reseller postReseller) {
        ResellerTransaction entity = new ResellerTransaction();
        entity.setResellerId(postReseller.getResellerId());
        com.cartomat.mpost.v2.entity.Reseller saveReseller = resellerRepos.findOne(postReseller.getResellerId());
        entity.setResellerInitialBalance(saveReseller.getBalance());
        BigDecimal resselerFinalBalance = postReseller.getBalance().add(saveReseller.getBalance());
        entity.setResellerFinalBalance(resselerFinalBalance);
        entity.setValue(postReseller.getBalance());
        entity.setResellerOpTypeId((long) 1);
        entity.setInsertion(new Date());
        resellerTransactionRepos.save(entity);

        saveReseller.setBalance(resselerFinalBalance);
        resellerRepos.save(saveReseller);

        return true;
    }
}
