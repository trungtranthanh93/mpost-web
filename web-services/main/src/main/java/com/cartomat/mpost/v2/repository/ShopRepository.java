package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.Shop;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public interface ShopRepository extends JpaRepository<Shop, Long> {
    @Query("from Shop where active = true")
    List<Shop> activeList();
}
