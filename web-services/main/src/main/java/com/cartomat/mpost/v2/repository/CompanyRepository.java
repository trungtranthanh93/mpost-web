package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.Company;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * @author dat.tran@cartomat.com
 */
public interface CompanyRepository extends JpaRepository<Company, Long> {
    @Query("from Company where nId = id")
    Company getCompany();
}
