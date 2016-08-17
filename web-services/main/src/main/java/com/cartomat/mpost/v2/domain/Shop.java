package com.cartomat.mpost.v2.domain;

/**
 * @author trung.tran
 */
public class Shop {
    private long companyId;
    private long postCodeId;

    private String name;
    private String address;
    private String number;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public long getCompanyId() {
        return companyId;
    }

    public void setCompanyId(long companyId) {
        this.companyId = companyId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public long getPostCodeId() {
        return postCodeId;
    }

    public void setPostCodeId(long postCodeId) {
        this.postCodeId = postCodeId;
    }
}
