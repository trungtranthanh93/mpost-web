package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.util.List;

/**
 * @author huong.dang@cartomat.com 9/18/2015.
 */
@Entity
@Table(name = "Access")
@Access(AccessType.FIELD)
public class MpostAccessUser {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sLogin", length = 256)
    private String username;

    @Column(name = "sPwd", length = 256)
    private String password;

    @Column(name = "bActive", length = 256)
    private boolean active;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "nShopId", referencedColumnName = "nid")
    private List<Shop> shops;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public List<Shop> getShops() {
        return shops;
    }

    public void setShops(List<Shop> shops) {
        this.shops = shops;
    }
}
