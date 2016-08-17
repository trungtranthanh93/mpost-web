package com.cartomat.mpost.v2.domain;

import java.math.BigDecimal;

/**
 * @author huong.dang@cartomat.com 9/21/2015.
 */
public class ClosedConvention {
    private long terminalId;
    private long shopId;
    private long companyId;

    private String comment;
    private BigDecimal guarantyAmountValue;
    private BigDecimal guarantyLossAmountValue;
    private String conventionNumberValue;

    public String getConventionNumberValue() {
        return conventionNumberValue;
    }

    public void setConventionNumberValue(String conventionNumberValue) {
        this.conventionNumberValue = conventionNumberValue;
    }

    public BigDecimal getGuarantyLossAmountValue() {
        return guarantyLossAmountValue;
    }

    public void setGuarantyLossAmountValue(BigDecimal guarantyLossAmountValue) {
        this.guarantyLossAmountValue = guarantyLossAmountValue;
    }

    public long getTerminalId() {
        return terminalId;
    }

    public void setTerminalId(long terminalId) {
        this.terminalId = terminalId;
    }

    public long getShopId() {
        return shopId;
    }

    public void setShopId(long shopId) {
        this.shopId = shopId;
    }

    public long getCompanyId() {
        return companyId;
    }

    public void setCompanyId(long companyId) {
        this.companyId = companyId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public BigDecimal getGuarantyAmountValue() {
        return guarantyAmountValue;
    }

    public void setGuarantyAmountValue(BigDecimal guarantyAmountValue) {
        this.guarantyAmountValue = guarantyAmountValue;
    }
}
