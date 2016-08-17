package com.cartomat.mpost.v2.service;

import java.math.BigDecimal;

/**
 * @author dat.tran@cartomat.com
 */
public interface FinOpService {
    BigDecimal getLatestBalanceByCompany(long company);
}
