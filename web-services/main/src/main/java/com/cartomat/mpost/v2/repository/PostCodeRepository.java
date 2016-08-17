package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.PostCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * Created by trung on 9/16/2015.
 */
public interface PostCodeRepository extends JpaRepository<PostCode, Long> {
    @Query("from PostCode where nId = id")
    PostCode getCompany();
}
