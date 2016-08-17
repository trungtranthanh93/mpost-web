package com.cartomat.mpost.v2.service.impl;

import com.cartomat.mpost.v2.domain.GAB;
import com.cartomat.mpost.v2.entity.Shop;
import com.cartomat.mpost.v2.entity.Terminal;
import com.cartomat.mpost.v2.repository.GABRepository;
import com.cartomat.mpost.v2.repository.ShopRepository;
import com.cartomat.mpost.v2.repository.TerminalRepository;
import com.cartomat.mpost.v2.service.GABService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Service
public class GABServiceImpl implements GABService {
    @Autowired
    private GABRepository gabRepos;

    @Autowired
    private ShopRepository shopRepos;

    @Autowired
    private TerminalRepository terminalRepos;


    @Override
    public boolean createGAB(GAB gab) {
        com.cartomat.mpost.v2.entity.GAB gabEntity = new com.cartomat.mpost.v2.entity.GAB();
        gabEntity.setName(gab.getName());
        gabEntity.setGabId(gab.getGabId());

        Shop shop = shopRepos.findOne(gab.getShopId());
        Terminal terminal = new Terminal();
        terminal.setShop(shop);
        terminal = terminalRepos.save(terminal);

        gabEntity.setTerminal(terminal);
        gabRepos.save(gabEntity);

        return true;
    }
}
