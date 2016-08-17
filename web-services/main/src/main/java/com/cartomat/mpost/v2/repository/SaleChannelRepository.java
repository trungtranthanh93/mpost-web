package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.SaleChannel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author huong.dang@cartomat.com 9/17/2015.
 */
public interface SaleChannelRepository extends JpaRepository<SaleChannel, Long> {
    @Query("from SaleChannel where active = true")
    List<SaleChannel> activeList();
}
