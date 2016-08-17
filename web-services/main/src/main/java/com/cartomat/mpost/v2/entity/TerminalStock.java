package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * @author dat.tran@cartomat.com
 */
@Entity
@Table(name = "TerminalStock")
@Access(AccessType.FIELD)
public class TerminalStock {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sMacAddress", length = 256)
    private String macAddress;

    @Column(name = "sSerialNumber", length = 256)
    private String serialNumber;

    @Column(name = "sSimSerialNum", length = 256)
    private String simSerialNum;

    @Column(name = "sCli", length = 256)
    private String cli;

    @Column(name = "bLinked")
    private boolean linked;

    @Column(name = "nMentorId")
    private long mentorId;

    @Column(name = "dInsertion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertion;

    @ManyToOne
    @JoinColumn(name = "nTelcoSupplierId", updatable = false, insertable = false)
    private TelcoSupplier telcoSupplier;

    @Column(name = "nTelcoSupplierId", length = 256)
    private long telcoSupplierId;

    @ManyToOne
    @JoinColumn(name = "nTerminalTypeId")
    private TerminalType terminalType;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getMacAddress() {
        return macAddress;
    }

    public void setMacAddress(String macAddress) {
        this.macAddress = macAddress;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getSimSerialNum() {
        return simSerialNum;
    }

    public void setSimSerialNum(String simSerialNum) {
        this.simSerialNum = simSerialNum;
    }

    public String getCli() {
        return cli;
    }

    public void setCli(String cli) {
        this.cli = cli;
    }

    public boolean isLinked() {
        return linked;
    }

    public void setLinked(boolean linked) {
        this.linked = linked;
    }

    public long getMentorId() {
        return mentorId;
    }

    public void setMentorId(long mentorId) {
        this.mentorId = mentorId;
    }

    public Date getInsertion() {
        return insertion;
    }

    public void setInsertion(Date insertion) {
        this.insertion = insertion;
    }

    public TelcoSupplier getTelcoSupplier() {
        return telcoSupplier;
    }

    public void setTelcoSupplier(TelcoSupplier telcoSupplier) {
        this.telcoSupplier = telcoSupplier;
    }

    public TerminalType getTerminalType() {
        return terminalType;
    }

    public void setTerminalType(TerminalType terminalType) {
        this.terminalType = terminalType;
    }

    public long getTelcoSupplierId() {
        return telcoSupplierId;
    }

    public void setTelcoSupplierId(long telcoSupplierId) {
        this.telcoSupplierId = telcoSupplierId;
    }
}
