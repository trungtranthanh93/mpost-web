package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.TelcoSupplier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public interface TelcoSupplierRepository extends JpaRepository<TelcoSupplier, Long> {
}
