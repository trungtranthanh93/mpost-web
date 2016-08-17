package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.math.BigDecimal;

/**
 * @author huong.dang@cartomat.com 9/18/2015.
 */

@Entity
@Table(name = "FinPayment")
@Access(AccessType.FIELD)
public class FinPayment {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @ManyToOne
    @JoinColumn(name = "nFinPaymentTypeId", updatable = false, insertable = false)
    private FinPaymentType finPaymentType;

    @Column(name = "nFinPaymentTypeId")
    private long finPaymentTypeId;

    @Column(name = "nAmount")
    private BigDecimal amount;

    @ManyToOne
    @JoinColumn(name = "nFinCashRefId")
    private FinCashRef finCashRef;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public FinPaymentType getFinPaymentType() {
        return finPaymentType;
    }

    public void setFinPaymentType(FinPaymentType finPaymentType) {
        this.finPaymentType = finPaymentType;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public FinCashRef getFinCashRef() {
        return finCashRef;
    }

    public void setFinCashRef(FinCashRef finCashRef) {
        this.finCashRef = finCashRef;
    }

    public long getFinPaymentTypeId() {
        return finPaymentTypeId;
    }

    public void setFinPaymentTypeId(long finPaymentTypeId) {
        this.finPaymentTypeId = finPaymentTypeId;
    }
}
