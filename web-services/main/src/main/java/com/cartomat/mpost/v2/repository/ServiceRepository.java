package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.Service;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public interface ServiceRepository extends JpaRepository<Service, Long> {
}
