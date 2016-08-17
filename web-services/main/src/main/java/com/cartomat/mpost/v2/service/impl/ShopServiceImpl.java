package com.cartomat.mpost.v2.service.impl;

import com.cartomat.mpost.v2.domain.Shop;
import com.cartomat.mpost.v2.repository.CompanyRepository;
import com.cartomat.mpost.v2.repository.PostCodeRepository;
import com.cartomat.mpost.v2.repository.ShopRepository;
import com.cartomat.mpost.v2.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class ShopServiceImpl implements ShopService {
    @Autowired
    private ShopRepository shopRepos;

    @Autowired
    private CompanyRepository companyRepos;

    @Autowired
    private PostCodeRepository postCodeRepos;

    @Override
    public boolean createShop(Shop shop) {
        com.cartomat.mpost.v2.entity.Shop entity = new com.cartomat.mpost.v2.entity.Shop();

        entity.setAddress1(shop.getAddress());
        entity.setAddress2(shop.getNumber());
        entity.setName(shop.getName());
        entity.setInsertion(new Date());
        entity.setActive(true);
        entity.setContractActive(true);

        entity.setCompanyId(shop.getCompanyId());
        entity.setPostCodeId(shop.getPostCodeId());

        entity.setActive(true);
        shopRepos.save(entity);
        return true;
    }
}
