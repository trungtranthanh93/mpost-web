package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * @author huong.dang@cartomat.com 9/18/2015.
 */

@Entity
@Table(name = "SMS")
@javax.persistence.Access(AccessType.FIELD)
public class Sms {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sSmsId", length = 50)
    private String smsId;

    @Column(name = "sSender", length = 50)
    private String sender;

    @Column(name = "sMsg", length = 30)
    private String msg;

    @Column(name = "sProvider", length = 50)
    private String provider;

    @Column(name = "dInsertion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertion;

    @ManyToOne
    @JoinColumn(name = "nSmsTypeId")
    private SmsType smsType;

    @Column(name = "sOutBoundId", length = 50)
    private String outBound;

    @Column(name = "bReceip", length = 256)
    private boolean receip;

    @Column(name = "dReceipt")
    @Temporal(TemporalType.TIMESTAMP)
    private Date receipt;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getSmsId() {
        return smsId;
    }

    public void setSmsId(String smsId) {
        this.smsId = smsId;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getProvider() {
        return provider;
    }

    public void setProvider(String provider) {
        this.provider = provider;
    }

    public Date getInsertion() {
        return insertion;
    }

    public void setInsertion(Date insertion) {
        this.insertion = insertion;
    }

    public SmsType getSmsType() {
        return smsType;
    }

    public void setSmsType(SmsType smsType) {
        this.smsType = smsType;
    }

    public String getOutBound() {
        return outBound;
    }

    public void setOutBound(String outBound) {
        this.outBound = outBound;
    }

    public boolean isReceip() {
        return receip;
    }

    public void setReceip(boolean receip) {
        this.receip = receip;
    }

    public Date getReceipt() {
        return receipt;
    }

    public void setReceipt(Date receipt) {
        this.receipt = receipt;
    }
}
