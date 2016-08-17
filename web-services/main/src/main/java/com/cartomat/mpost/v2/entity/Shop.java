package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author dat.tran@cartomat.com
 */
@Entity
@Table(name = "Shop")
@Access(AccessType.FIELD)
public class Shop {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @ManyToOne
    @JoinColumn(name = "nCompanyId", updatable = false, insertable = false)
    private Company company;

    @Column(name = "nCompanyId")
    private long companyId;

    @ManyToOne
    @JoinColumn(name = "nContactId")
    private Contact contact;

    @Column(name = "sName", length = 256)
    private String name;

    @Column(name = "sAddress1", length = 256)
    private String address1;

    @Column(name = "sAddress2", length = 256)
    private String address2;

    @ManyToOne
    @JoinColumn(name = "nPostCodeId", updatable = false, insertable = false)
    private PostCode postCode;

    @Column(name = "nPostCodeId")
    private long postCodeId;

    @Column(name = "sTel", length = 256)
    private String tel;

    @Column(name = "sFax", length = 256)
    private String fax;

    @Column(name = "bActive")
    private boolean active;

    @Column(name = "nMentorId")
    private int mentor;

    @Column(name = "dInsertion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertion;

    @Column(name = "bContractActive")
    private boolean contractActive;

    @Column(name = "dContractEnd")
    @Temporal(TemporalType.TIMESTAMP)
    private Date contractEnd;

    @Column(name = "nBalance")
    private BigDecimal balance;

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public boolean isContractActive() {
        return contractActive;
    }

    public void setContractActive(boolean contractActive) {
        this.contractActive = contractActive;
    }

    public Date getContractEnd() {
        return contractEnd;
    }

    public void setContractEnd(Date contractEnd) {
        this.contractEnd = contractEnd;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Date getInsertion() {
        return insertion;
    }

    public void setInsertion(Date insertion) {
        this.insertion = insertion;
    }

    public int getMentor() {
        return mentor;
    }

    public void setMentor(int mentor) {
        this.mentor = mentor;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public Contact getContact() {
        return contact;
    }

    public void setContact(Contact contact) {
        this.contact = contact;
    }

    public long getCompanyId() {
        return companyId;
    }

    public void setCompanyId(long companyId) {
        this.companyId = companyId;
    }

    public long getPostCodeId() {
        return postCodeId;
    }

    public void setPostCodeId(long postCodeId) {
        this.postCodeId = postCodeId;
    }
}
