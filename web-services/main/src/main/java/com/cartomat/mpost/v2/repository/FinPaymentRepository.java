package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.FinPayment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author huong.dang@cartomat.com 9/21/2015.
 */
public interface FinPaymentRepository extends JpaRepository<FinPayment, Long> {
    @Query("from FinPayment where active = true")
    List<FinPayment> activeList();
}
