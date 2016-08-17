package com.cartomat.mpost.v2.domain;

import java.math.BigDecimal;
import java.util.List;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public class Terminal {
    private String collectorName;
    private String collectorCode;

    private boolean riskLimited;
    private BigDecimal riskLimit;

    private String conventionNumber;

    private long serialNumber;
    private String partnerCorrespondence;

    private BigDecimal guarantyAmount;

    private String convention;

    private long shopId;
    private long terminalTypeId;

    private List<Long> services;
    private List<Product> products;

    public String getCollectorName() {
        return collectorName;
    }

    public void setCollectorName(String collectorName) {
        this.collectorName = collectorName;
    }

    public String getCollectorCode() {
        return collectorCode;
    }

    public void setCollectorCode(String collectorCode) {
        this.collectorCode = collectorCode;
    }

    public boolean isRiskLimited() {
        return riskLimited;
    }

    public void setRiskLimited(boolean riskLimited) {
        this.riskLimited = riskLimited;
    }

    public BigDecimal getRiskLimit() {
        return riskLimit;
    }

    public void setRiskLimit(BigDecimal riskLimit) {
        this.riskLimit = riskLimit;
    }

    public String getConventionNumber() {
        return conventionNumber;
    }

    public void setConventionNumber(String conventionNumber) {
        this.conventionNumber = conventionNumber;
    }

    public long getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(long serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getPartnerCorrespondence() {
        return partnerCorrespondence;
    }

    public void setPartnerCorrespondence(String partnerCorrespondence) {
        this.partnerCorrespondence = partnerCorrespondence;
    }

    public BigDecimal getGuarantyAmount() {
        return guarantyAmount;
    }

    public void setGuarantyAmount(BigDecimal guarantyAmount) {
        this.guarantyAmount = guarantyAmount;
    }

    public String getConvention() {
        return convention;
    }

    public void setConvention(String convention) {
        this.convention = convention;
    }

    public long getShopId() {
        return shopId;
    }

    public void setShopId(long shopId) {
        this.shopId = shopId;
    }

    public long getTerminalTypeId() {
        return terminalTypeId;
    }

    public void setTerminalTypeId(long terminalTypeId) {
        this.terminalTypeId = terminalTypeId;
    }

    public List<com.cartomat.mpost.v2.domain.Product> getProducts() {
        return products;
    }

    public void setProducts(List<com.cartomat.mpost.v2.domain.Product> products) {
        this.products = products;
    }

    public List<Long> getServices() {
        return services;
    }

    public void setServices(List<Long> services) {
        this.services = services;
    }
}
