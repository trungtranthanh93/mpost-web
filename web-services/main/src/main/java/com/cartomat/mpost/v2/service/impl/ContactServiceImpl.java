package com.cartomat.mpost.v2.service.impl;

import com.cartomat.mpost.v2.domain.Contact;
import com.cartomat.mpost.v2.entity.Company;
import com.cartomat.mpost.v2.repository.CompanyRepository;
import com.cartomat.mpost.v2.repository.ContactRepository;
import com.cartomat.mpost.v2.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Service
public class ContactServiceImpl implements ContactService {
    @Autowired
    private CompanyRepository companyRepos;

    @Autowired
    private ContactRepository contactRepos;

    @Override
    public boolean createContact(Contact contact) {
        com.cartomat.mpost.v2.entity.Contact entity = new com.cartomat.mpost.v2.entity.Contact();

        entity.setFirstName(contact.getFirstName());
        entity.setLastName(contact.getLastName());
        entity.setMail(contact.getMail());
        entity.setGsm(contact.getGsm());
        entity.setActive(true);
        entity.setInsertion(new Date());
        entity.setLastModification(new Date());
        contactRepos.save(entity);

        Company company = companyRepos.findOne(contact.getCompanyId());
        company.setContact(entity);
        companyRepos.save(company);

        return true;
    }

    @Override
    public long size() {
        return 0;
    }
}
