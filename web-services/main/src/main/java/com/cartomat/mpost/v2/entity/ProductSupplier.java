package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author huong.dang@cartomat.com.
 */
@Entity
@Table(name = "ProductSupplier")
@Access(AccessType.FIELD)
public class ProductSupplier {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sName", length = 20)
    private String name;

    @Column(name = "sAddress", length = 50)
    private String address;

    @ManyToOne
    @JoinColumn(name = "nPostCodeId")
    private PostCode postCode;

    @Column(name = "sTel", length = 15)
    private String tel;

    @Column(name = "sFax", length = 15)
    private String fax;

    @Column(name = "sWebSite", length = 20)
    private String webSite;

    @Column(name = "sMapping", length = 50)
    private String mapping;

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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public PostCode getPostCode() {
        return postCode;
    }

    public void setPostCode(PostCode postCode) {
        this.postCode = postCode;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getWebSite() {
        return webSite;
    }

    public void setWebSite(String webSite) {
        this.webSite = webSite;
    }

    public String getMapping() {
        return mapping;
    }

    public void setMapping(String mapping) {
        this.mapping = mapping;
    }
}
