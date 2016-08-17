package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.ComList;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author dat.tran@cartomat.com
 */
public interface ComListRepository extends JpaRepository<ComList, Long> {
    @Query("from ComList where active = true")
    List<ComList> activeList();
}
