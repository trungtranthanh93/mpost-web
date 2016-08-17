package com.cartomat.mpost.v2.service;

import com.cartomat.mpost.v2.domain.Contact;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public interface ContactService {
    boolean createContact(Contact contact);

    long size();
}
