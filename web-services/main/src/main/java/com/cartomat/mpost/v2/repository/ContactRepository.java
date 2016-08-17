package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.Contact;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public interface ContactRepository extends JpaRepository<Contact, Long> {
    @Query("from Contact where nId = id")
    Contact getContact();
}
