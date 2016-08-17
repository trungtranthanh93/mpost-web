package com.cartomat.mpost.v2.service.impl;

import com.cartomat.mpost.v2.domain.TerminalStock;
import com.cartomat.mpost.v2.repository.TelcoSupplierRepository;
import com.cartomat.mpost.v2.repository.TerminalStockRepository;
import com.cartomat.mpost.v2.service.TerminalStockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Service
public class TerminalStockServiceImpl implements TerminalStockService {
    @Autowired
    private TerminalStockRepository terminalStockRepos;

    @Override
    public boolean createTerminalStock(TerminalStock terminalStock) {
        com.cartomat.mpost.v2.entity.TerminalStock terminalStockEntity = new com.cartomat.mpost.v2.entity.TerminalStock();
        terminalStockEntity.setMacAddress(terminalStock.getMacAddress());
        terminalStockEntity.setSerialNumber(terminalStock.getSerialNumber());
        terminalStockEntity.setSimSerialNum(terminalStock.getSimSerialNum());
        terminalStockEntity.setCli(terminalStock.getSimPhoneNumber());
        terminalStockEntity.setLinked(true);
        terminalStockEntity.setInsertion(new Date());

        terminalStockEntity.setTelcoSupplierId(terminalStock.getTelcoSupplierId());
        terminalStockRepos.save(terminalStockEntity);

        return true;
    }
}
