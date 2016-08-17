package com.cartomat.mpost.v2.service.impl;

import com.cartomat.mpost.v2.domain.Company;
import com.cartomat.mpost.v2.entity.Contact;
import com.cartomat.mpost.v2.repository.CompanyRepository;
import com.cartomat.mpost.v2.repository.ContactRepository;
import com.cartomat.mpost.v2.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author dat.tran@cartomat.com
 */
@Service
public class CompanyServiceImpl implements CompanyService {
    @Autowired
    private CompanyRepository companyRepos;

    @Autowired
    private ContactRepository contactRepos;

    /**
     * Company in argument is domain obj (in package com.cartomat.mpost.v2.domain) stores data submitted by client
     * Need to create entity Company and use Repository to store it to database
     */
    @Override
    public boolean createCompany(Company company) {
        com.cartomat.mpost.v2.entity.Company entity = new com.cartomat.mpost.v2.entity.Company();

        Contact contact = new Contact();
        contact.setFirstName(company.getFirstName());
        contact.setLastName(company.getLastName());
        contact.setGsm(company.getGsm());
        contact.setMail(company.getMail());
        contact.setActive(true);
        contact.setInsertion(new Date());
        contact.setLastModification(new Date());

        contactRepos.save(contact);

        entity.setName(company.getName());
        entity.setVat(company.getVat());
        entity.setAddress1(company.getAddress());
        entity.setAddress2(company.getNumber());
        entity.setInterConnected(company.isInterConnected());
        entity.setActive(true);
        entity.setContractActive(true);
        entity.setInterConnectedPlatform(company.getInterConnectedPlatform());
        entity.setLastModification(new Date());
        entity.setInsertion(new Date());

        if (company.getSaleChannelId() == 2) {
            entity.setProductSupplierId(company.getProductSupplierId());
        } else {
            entity.setComListId(company.getComListId());
            entity.setResellerId(company.getResellerId());
            entity.setBillingLevel(company.getBillingLevel());
        }

        entity.setPostCodeId(company.getPostCodeId());
        entity.setSaleChannelId(company.getSaleChannelId());

        companyRepos.save(entity);

        return true;
    }

    @Override
    public long size() {
        return companyRepos.count();
    }
}
