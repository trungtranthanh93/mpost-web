package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author huong.dang@cartomat.com 9/18/2015.
 */

@Entity
@Table(name = "FinCashRef")
@Access(AccessType.FIELD)
public class FinCashRef {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "nAmount")
    private BigDecimal amount;

    @Column(name = "nInsertedAmount")
    private BigDecimal insertedAmount;

    @ManyToOne
    @JoinColumn(name = "nSmsId")
    private Sms sms;

    @ManyToOne
    @JoinColumn(name = "nAccessId")
    private MpostAccess access;

    @Column(name = "dInsertion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertion;

    @Column(name = "bActive")
    private boolean active;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public BigDecimal getInsertedAmount() {
        return insertedAmount;
    }

    public void setInsertedAmount(BigDecimal insertedAmount) {
        this.insertedAmount = insertedAmount;
    }

    public Sms getSms() {
        return sms;
    }

    public void setSms(Sms sms) {
        this.sms = sms;
    }

    public MpostAccess getAccess() {
        return access;
    }

    public void setAccess(MpostAccess access) {
        this.access = access;
    }

    public Date getInsertion() {
        return insertion;
    }

    public void setInsertion(Date insertion) {
        this.insertion = insertion;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
