package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public interface ProductRepository extends JpaRepository<Product, Long> {
}
