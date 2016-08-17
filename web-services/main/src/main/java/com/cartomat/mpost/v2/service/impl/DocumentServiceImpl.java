package com.cartomat.mpost.v2.service.impl;

import com.cartomat.mpost.v2.domain.Documents;
import com.cartomat.mpost.v2.entity.Document;
import com.cartomat.mpost.v2.repository.DocumentRepository;
import com.cartomat.mpost.v2.service.DocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author trung.tran on 9/17/2015.
 */
@Service
public class DocumentServiceImpl implements DocumentService {

    @Autowired
    private DocumentRepository documentRepos;

    @Override
    public boolean createDocument(Documents doc) {
        Document entity = new Document();

        entity.setName(doc.getName());
        entity.setInsertion(new Date());

        entity.setTerminalId(doc.getTerminalId());
        entity.setDocTypeId(doc.getDocTypeId());

        documentRepos.save(entity);
        return true;

    }

    public long size() {
        return 0;
    }

}
