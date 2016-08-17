package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.Document;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author trung.tran on 9/17/2015.
 */
public interface DocumentRepository extends JpaRepository<Document, Long> {

}
