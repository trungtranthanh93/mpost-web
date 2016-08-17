package com.cartomat.mpost.v2.service;

import com.cartomat.mpost.v2.domain.Documents;

/**
 * @author trung.tran on 9/17/2015.
 */
public interface DocumentService {
    boolean createDocument(Documents doc);

    long size();
}
