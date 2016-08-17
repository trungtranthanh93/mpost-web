package com.cartomat.mpost.v2.service.impl;

import com.cartomat.mpost.v2.service.FinOpService;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.math.BigDecimal;

/**
 * @author dat.tran@cartomat.com
 */
@Service
public class FinOpServiceImpl implements FinOpService {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public BigDecimal getLatestBalanceByCompany(long company) {
        Query query = entityManager.createQuery("SELECT balance FROM FinOp WHERE company.id = ?1 ORDER BY id DESC");
        query.setParameter(1, company);
        query.setFirstResult(0);
        query.setMaxResults(1);

        return (BigDecimal) query.getSingleResult();
    }
}
