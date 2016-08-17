package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author huong.dang@cartomat.com 9/18/2015.
 */

@Entity
@Table(name = "Access")
@javax.persistence.Access(AccessType.FIELD)
public class MpostAccess {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sLogin", length = 100)
    private String login;

    @Column(name = "sPwd", length = 100)
    private String pwd;

    @ManyToOne
    @JoinColumn(name = "nAccessTypeId")
    private MpostAccessType accessType;

    @ManyToOne
    @JoinColumn(name = "nCompanyId", insertable = false, updatable = false)
    private Company company;

    @Column(name = "nCompanyId")
    private long companyId;

    @Column(name = "nUsersId")
    private int users;

    @Column(name = "bActive")
    private boolean active;

    @ManyToOne
    @JoinColumn(name = "nResellerId")
    private Reseller reseller;

    @ManyToOne
    @JoinColumn(name = "nProductSupplierId")
    private ProductSupplier productSupplier;

    @ManyToOne
    @JoinColumn(name = "nLanguageId")
    private Language language;

    @Column(name = "sAppCategory", length = 10)
    private String appCategory;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public MpostAccessType getAccessType() {
        return accessType;
    }

    public void setAccessType(MpostAccessType accessType) {
        this.accessType = accessType;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public long getCompanyId() {
        return companyId;
    }

    public void setCompanyId(long companyId) {
        this.companyId = companyId;
    }

    public int getUsers() {
        return users;
    }

    public void setUsers(int users) {
        this.users = users;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Reseller getReseller() {
        return reseller;
    }

    public void setReseller(Reseller reseller) {
        this.reseller = reseller;
    }

    public ProductSupplier getProductSupplier() {
        return productSupplier;
    }

    public void setProductSupplier(ProductSupplier productSupplier) {
        this.productSupplier = productSupplier;
    }

    public Language getLanguage() {
        return language;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }

    public String getAppCategory() {
        return appCategory;
    }

    public void setAppCategory(String appCategory) {
        this.appCategory = appCategory;
    }
}
