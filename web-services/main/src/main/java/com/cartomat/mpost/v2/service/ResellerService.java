package com.cartomat.mpost.v2.service;

import com.cartomat.mpost.v2.domain.Reseller;

import java.util.List;

/**
 * @author dat.tran@cartomat.com
 */
public interface ResellerService {
    List<com.cartomat.mpost.v2.entity.Reseller> list();

    boolean updateReseller(Reseller postReseller);

}
