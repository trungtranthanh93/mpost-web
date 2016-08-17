package com.cartomat.mpost.v2.domain;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public class ShopManager {
    private long shopId;
    private String firstName;
    private String lastName;
    private long contactTypeId;
    private String mail;
    private String gsmNumber;

    public long getShopId() {
        return shopId;
    }

    public void setShopId(long shopId) {
        this.shopId = shopId;
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

    public long getContactTypeId() {
        return contactTypeId;
    }

    public void setContactTypeId(long contactTypeId) {
        this.contactTypeId = contactTypeId;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getGsmNumber() {
        return gsmNumber;
    }

    public void setGsmNumber(String gsmNumber) {
        this.gsmNumber = gsmNumber;
    }
}
