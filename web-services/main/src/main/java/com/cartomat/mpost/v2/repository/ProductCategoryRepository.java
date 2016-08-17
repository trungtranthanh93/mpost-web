package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author dat.tran@cartomat.com
 */
public interface ProductCategoryRepository extends JpaRepository<ProductCategory, Long> {
}
