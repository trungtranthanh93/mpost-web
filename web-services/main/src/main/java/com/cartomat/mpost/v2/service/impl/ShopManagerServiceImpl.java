package com.cartomat.mpost.v2.service.impl;

import com.cartomat.mpost.v2.domain.ShopManager;
import com.cartomat.mpost.v2.entity.Contact;
import com.cartomat.mpost.v2.entity.Shop;
import com.cartomat.mpost.v2.repository.ContactRepository;
import com.cartomat.mpost.v2.repository.ShopRepository;
import com.cartomat.mpost.v2.service.ShopManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Service
public class ShopManagerServiceImpl implements ShopManagerService {

    @Autowired
    private ShopRepository shopRepos;

    @Autowired
    private ContactRepository contactRepos;

    @Override
    public boolean createShopManager(ShopManager shopManager) {
        Contact contact = new Contact();
        contact.setFirstName(shopManager.getFirstName());
        contact.setLastName(shopManager.getLastName());
        contact.setContactTypeId(shopManager.getContactTypeId());
        contact.setInsertion(new Date());
        contact.setLastModification(new Date());
        contact.setMail(shopManager.getMail());
        contact.setGsm(shopManager.getGsmNumber());
        contact.setActive(true);
        contactRepos.save(contact);

        Shop shop = shopRepos.findOne(shopManager.getShopId());
        shop.setContact(contact);
        shopRepos.save(shop);

        return true;
    }
}
