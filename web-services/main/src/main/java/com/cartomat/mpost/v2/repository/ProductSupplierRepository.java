package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.ProductSupplier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author huong.dang@cartomat.com 9/17/2015.
 */
public interface ProductSupplierRepository extends JpaRepository<ProductSupplier, Long> {
    @Query("from ProductSupplier where active = true")
    List<ProductSupplier> activeList();
}
