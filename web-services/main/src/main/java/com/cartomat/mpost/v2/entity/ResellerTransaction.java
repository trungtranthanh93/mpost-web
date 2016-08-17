package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author trung.tran on 9/16/2015.
 */

@Entity
@Table(name = "ResellerTransaction")
@Access(AccessType.FIELD)
public class ResellerTransaction {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @ManyToOne
    @JoinColumn(name = "nResellerId", updatable = false, insertable = false)
    private Reseller reseller;

    @Column(name = "nResellerId")
    private long resellerId;

    @ManyToOne
    @JoinColumn(name = "nCompanyId")
    private Company company;

    @ManyToOne
    @JoinColumn(name = "nTransactionsId")
    private Transaction transaction;

    @Column(name = "nResellerInitialBalance")
    private BigDecimal resellerInitialBalance;

    @Column(name = "nResellerFinalBalance")
    private BigDecimal resellerFinalBalance;

    @Column(name = "nValue")
    private BigDecimal value;

    @Column(name = "dInsertion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertion;

    @ManyToOne
    @JoinColumn(name = "nResellerComListId")
    private ResellerComList resellerComListId;

    @ManyToOne
    @JoinColumn(name = "nAccessId")
    private MpostAccessUser access;

    @ManyToOne
    @JoinColumn(name = "nResellerOpTypeId" , updatable = false , insertable = false)
    private ResellerOptype resellerOpType;

    @Column(name = "nResellerOpTypeId")
    private long resellerOpTypeId;

    public MpostAccessUser getAccess() {
        return access;
    }

    public void setAccess(MpostAccessUser access) {
        this.access = access;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
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

    public Reseller getReseller() {
        return reseller;
    }

    public void setReseller(Reseller reseller) {
        this.reseller = reseller;
    }

    public ResellerComList getResellerComListId() {
        return resellerComListId;
    }

    public void setResellerComListId(ResellerComList resellerComListId) {
        this.resellerComListId = resellerComListId;
    }

    public Transaction getTransaction() {
        return transaction;
    }

    public void setTransaction(Transaction transaction) {
        this.transaction = transaction;
    }

    public BigDecimal getResellerInitialBalance() {
        return resellerInitialBalance;
    }

    public void setResellerInitialBalance(BigDecimal resellerInitialBalance) {
        this.resellerInitialBalance = resellerInitialBalance;
    }

    public BigDecimal getResellerFinalBalance() {
        return resellerFinalBalance;
    }

    public void setResellerFinalBalance(BigDecimal resellerFinalBalance) {
        this.resellerFinalBalance = resellerFinalBalance;
    }

    public BigDecimal getValue() {
        return value;
    }

    public void setValue(BigDecimal value) {
        this.value = value;
    }

    public ResellerOptype getResellerOpType() {
        return resellerOpType;
    }

    public void setResellerOpType(ResellerOptype resellerOpType) {
        this.resellerOpType = resellerOpType;
    }

    public long getResellerId() {
        return resellerId;
    }

    public void setResellerId(long resellerId) {
        this.resellerId = resellerId;
    }

    public long getResellerOpTypeId() {
        return resellerOpTypeId;
    }

    public void setResellerOpTypeId(long resellerOpTypeId) {
        this.resellerOpTypeId = resellerOpTypeId;
    }
}
