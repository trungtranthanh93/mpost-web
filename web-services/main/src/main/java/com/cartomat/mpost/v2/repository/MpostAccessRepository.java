package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.MpostAccess;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * @author huong.dang@cartomat.com 9/23/2015.
 */
public interface MpostAccessRepository extends JpaRepository<MpostAccess, Long> {
    @Query("SELECT access.id FROM MpostAccess access WHERE access.companyId = ?1")
    long getAccessByCompany(long getCompanyId);
}
