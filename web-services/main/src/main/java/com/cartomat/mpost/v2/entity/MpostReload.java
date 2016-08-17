package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * @author huong.dang@cartomat.com 9/20/2015.
 */

@Entity
@Table(name = "MpostReload")
@Access(AccessType.FIELD)
public class MpostReload {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @ManyToOne
    @JoinColumn(name = "nFinProductId")
    private FinProduct finProduct;

    @Column(name = "sPinCode", length = 12)
    private String pinCode;

    @Column(name = "sSerialNumber", length = 6)
    private String serialNumber;

    @Column(name = "nValue")
    private int value;

    @Column(name = "dInsertion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertion;

    @Column(name = "bActive", length = 256)
    private boolean active;

    @Column(name = "dUsed")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dUsed;

    @Column(name = "bused", length = 256)
    private boolean bUsed;

    @ManyToOne
    @JoinColumn(name = "nMpostReloadTypeId")
    private MpostReloadType mpostReloadType;

    @Column(name = "bDelivered", length = 256)
    private boolean bDelivered;

    @Column(name = "dDelivered")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dDelivered;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public FinProduct getFinProduct() {
        return finProduct;
    }

    public void setFinProduct(FinProduct finProduct) {
        this.finProduct = finProduct;
    }

    public String getPinCode() {
        return pinCode;
    }

    public void setPinCode(String pinCode) {
        this.pinCode = pinCode;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
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

    public Date getdUsed() {
        return dUsed;
    }

    public void setdUsed(Date dUsed) {
        this.dUsed = dUsed;
    }

    public boolean isbUsed() {
        return bUsed;
    }

    public void setbUsed(boolean bUsed) {
        this.bUsed = bUsed;
    }

    public MpostReloadType getMpostReloadType() {
        return mpostReloadType;
    }

    public void setMpostReloadType(MpostReloadType mpostReloadType) {
        this.mpostReloadType = mpostReloadType;
    }

    public boolean isbDelivered() {
        return bDelivered;
    }

    public void setbDelivered(boolean bDelivered) {
        this.bDelivered = bDelivered;
    }

    public Date getdDelivered() {
        return dDelivered;
    }

    public void setdDelivered(Date dDelivered) {
        this.dDelivered = dDelivered;
    }
}
