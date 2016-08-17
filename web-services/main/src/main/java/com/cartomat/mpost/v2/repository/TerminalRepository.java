package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.Terminal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import javax.persistence.Column;
import java.util.List;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public interface TerminalRepository extends JpaRepository<Terminal, Long> {
    @Query("SELECT COUNT(terminal.id) " +
            "FROM Terminal terminal " +
            "JOIN terminal.shop shop " +
            "WHERE bActiveConvention = 1 AND shop.companyId = ?1")
    long countTerminalByCompany(long company);

    @Query("SELECT COUNT(terminal.id) " +
            "FROM Terminal terminal " +
            "JOIN terminal.shop shop " +
            "WHERE bActiveConvention = 1 AND shop.companyId = ?1")
    int countTerminalByShop(long shopId);

    @Query("FROM Terminal WHERE active = true AND activeConvention = true")
    List<Terminal> activeList();
}