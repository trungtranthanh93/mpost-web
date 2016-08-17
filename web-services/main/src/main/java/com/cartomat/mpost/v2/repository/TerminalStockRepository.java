package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.TerminalStock;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public interface TerminalStockRepository extends JpaRepository<TerminalStock, Long> {
    @Query("from TerminalStock where linked = false")
    List<TerminalStock> activeList();
}
