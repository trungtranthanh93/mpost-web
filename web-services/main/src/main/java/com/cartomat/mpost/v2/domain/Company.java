package com.cartomat.mpost.v2.domain;

import javax.validation.constraints.NotNull;

/**
 * @author dat.tran@cartomat.com
 */
public class Company {
    @NotNull
    private String name;

    @NotNull
    private String vat;

    @NotNull
    private String address;
    private String number;
    private String billingLevel;
    private boolean interConnected;
    private int interConnectedPlatform;

    private long comListId;
    private long postCodeId;
    private long resellerId;
    private long saleChannelId;
    private long productSupplierId;

    @NotNull
    private String firstName;

    @NotNull
    private String lastName;

    @NotNull
    private String mail;

    private String gsm;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVat() {
        return vat;
    }

    public void setVat(String vat) {
        this.vat = vat;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getBillingLevel() {
        return billingLevel;
    }

    public void setBillingLevel(String billingLevel) {
        this.billingLevel = billingLevel;
    }

    public boolean isInterConnected() {
        return interConnected;
    }

    public void setInterConnected(boolean interConnected) {
        this.interConnected = interConnected;
    }

    public long getComListId() {
        return comListId;
    }

    public void setComListId(long comListId) {
        this.comListId = comListId;
    }

    public long getPostCodeId() {
        return postCodeId;
    }

    public void setPostCodeId(long postCodeId) {
        this.postCodeId = postCodeId;
    }

    public long getResellerId() {
        return resellerId;
    }

    public void setResellerId(long resellerId) {
        this.resellerId = resellerId;
    }

    public long getSaleChannelId() {
        return saleChannelId;
    }

    public void setSaleChannelId(long saleChannelId) {
        this.saleChannelId = saleChannelId;
    }

    public long getProductSupplierId() {
        return productSupplierId;
    }

    public void setProductSupplierId(long productSupplierId) {
        this.productSupplierId = productSupplierId;
    }

    public int getInterConnectedPlatform() {
        return interConnectedPlatform;
    }

    public void setInterConnectedPlatform(int interConnectedPlatform) {
        this.interConnectedPlatform = interConnectedPlatform;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getGsm() {
        return gsm;
    }

    public void setGsm(String gsm) {
        this.gsm = gsm;
    }
}