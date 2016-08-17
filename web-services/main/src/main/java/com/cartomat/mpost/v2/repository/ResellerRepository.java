package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.Reseller;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author dat.tran@cartomat.com
 */
public interface ResellerRepository extends JpaRepository<Reseller, Long> {
    @Query("from Reseller where active = true")
    List<Reseller> activeList();
}
