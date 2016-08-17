package com.cartomat.mpost.v2.security;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.core.userdetails.*;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;

/**
 * @author dattran
 * 
 */
public class EmAuthenticationUserDetailsService implements AuthenticationUserDetailsService<PreAuthenticatedAuthenticationToken> {

    private UserDetailsService userDetailsService;
    private UserCache userCache;

    public void setUserDetailsService(UserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;
    }

    public void setUserCache(UserCache userCache) {
        this.userCache = userCache;
    }

    @Override
    public UserDetails loadUserDetails(PreAuthenticatedAuthenticationToken authentication)
            throws UsernameNotFoundException {
        // Determine username
        String username = (authentication.getPrincipal() == null) ? "NONE_PROVIDED" : authentication.getName();

        boolean cacheWasUsed = true;
        UserDetails user = userCache.getUserFromCache(username);

        if (user == null) {
            cacheWasUsed = false;

            try {
                user = userDetailsService.loadUserByUsername(username);
            } catch (UsernameNotFoundException notFound) {
                throw notFound;
            } catch (Exception repositoryProblem) {
                throw new AuthenticationServiceException(repositoryProblem.getMessage(), repositoryProblem);
            }

            if (user == null) {
                throw new AuthenticationServiceException(
                        "UserDetailsService returned null, which is an interface contract violation");
            }
        }

        if (!cacheWasUsed) {
            userCache.putUserInCache(user);
        }

        return user;
    }

}
