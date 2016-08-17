package com.cartomat.mpost.v2.domain;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public class GAB {
    private String name;
    private String gabId;
    private long shopId;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGabId() {
        return gabId;
    }

    public void setGabId(String gabId) {
        this.gabId = gabId;
    }

    public long getShopId() {
        return shopId;
    }

    public void setShopId(long shopId) {
        this.shopId = shopId;
    }
}
