package com.cartomat.mpost.v2.service.impl;

import com.cartomat.mpost.v2.service.FinOperationTypeService;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 * @author huong.dang@cartomat.com on 9/23/2015.
 */
@Service
public class FinOperationTypeImpl implements FinOperationTypeService {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public long getFinOperationTypeId() {
        Query query = entityManager.createQuery("SELECT finOperationType.id FROM FinOperationType finOperationType WHERE finOperationType.name = 'Payment'");

        return query.getFirstResult();
    }
}
