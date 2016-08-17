package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.ContactType;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public interface ContactTypeRepository extends JpaRepository<ContactType, Long> {
}
