package com.cartomat.mpost.v2.service.impl;

import com.cartomat.mpost.v2.entity.MpostUserDetails;
import com.cartomat.mpost.v2.entity.User;
import com.cartomat.mpost.v2.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author dat.tran@cartomat.com
 */
@Service
public class MpostUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository userRepos;

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepos.findByUsername(username);
        if (user != null) {
            return new MpostUserDetails(user);
        }

        throw new UsernameNotFoundException(username);
    }
}