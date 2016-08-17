package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author dat.tran@cartomat.com
 */
@Entity
@Table(name = "Product")
@Access(AccessType.FIELD)
public class ProductCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sName", length = 256)
    private String name;

    @Column(name = "sCode", length = 256)
    private String code;

    @ManyToOne
    @JoinColumn(name = "nProductId")
    private Product product;

    @Column(name = "bActive")
    private boolean active;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
