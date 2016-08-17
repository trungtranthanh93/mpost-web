package com.cartomat.mpost.v2.repository;

import com.cartomat.mpost.v2.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * @author dat.tran@cartomat.com
 */
public interface UserRepository extends JpaRepository<User, Long> {

    @Query("from User where upper(username) = upper(?1)")
    User findByUsername(String username);
}
