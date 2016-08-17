package com.cartomat.mpost.v2.service;

import com.cartomat.mpost.v2.domain.Company;

/**
 * @author dat.tran@cartomat.com
 */
public interface CompanyService {
    boolean createCompany(Company company);

    long size();
}
