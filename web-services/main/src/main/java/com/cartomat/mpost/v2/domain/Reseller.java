package com.cartomat.mpost.v2.domain;

import java.math.BigDecimal;

/**
 * @author trung.tran on 9/21/2015.
 */
public class Reseller {
    private long resellerId;
    private BigDecimal balance;

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public long getResellerId() {
        return resellerId;
    }

    public void setResellerId(long resellerId) {
        this.resellerId = resellerId;
    }
}
