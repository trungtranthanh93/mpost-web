package com.cartomat.mpost.v2.domain;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public class Product {
    private long id;
    private int position;

    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }
}
