package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author dat.tran@cartomat.com
 */
@Entity
@Table(name = "Terminal")
@Access(AccessType.FIELD)
public class Terminal {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "nConvention", length = 256)
    private String convention;

    @Column(name = "bActiveConvention")
    private boolean activeConvention;

    @Column(name = "bActive")
    private boolean active;

    @Column(name = "nGuarantyAmount")
    private BigDecimal guarantyAmount;

    @Column(name = "sMacAddress", length = 256)
    private String macAddress;

    @Column(name = "sSerialNumber", length = 256)
    private String serialNumber;

    @Column(name = "sSimSerialNum", length = 256)
    private String simSerialNum;

    @Column(name = "sCli", length = 256)
    private String cli;

    @Column(name = "sLogin", length = 256)
    private String login;

    @Column(name = "sPwd", length = 256)
    private String pwd;

    @Column(name = "nMentorId")
    private String mentorId;

    @Column(name = "dInsertion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertion;

    @Column(name = "bModify")
    private boolean modify;

    @Column(name = "nReloadTries")
    private String reloadTries;

    @Column(name = "nDbTimeMarker")
    private String dbTimeMarker;

    @Column(name = "nOrderNumber")
    private String orderNumber;

    @Column(name = "bReprint")
    private boolean reprint;

    @Column(name = "dConventionEnd")
    @Temporal(TemporalType.TIMESTAMP)
    private Date conventionEnd;

    @Column(name = "nVirtualCorrespondance")
    private String virtualCorespondance;

    @ManyToOne
    @JoinColumn(name = "nShopId", insertable = false, updatable = false)
    private Shop shop;

    @Column(name = "nShopId")
    private long shopId;

    @ManyToOne
    @JoinColumn(name = "nTelcoSupplierId")
    private TelcoSupplier telcoSupplier;

    @ManyToOne
    @JoinColumn(name = "nTerminalStockId", insertable = false, updatable = false)
    private TerminalStock terminalStock;

    @Column(name = "nTerminalStockId")
    private long terminalStockId;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getConvention() {
        return convention;
    }

    public void setConvention(String convention) {
        this.convention = convention;
    }

    public boolean isActiveConvention() {
        return activeConvention;
    }

    public void setActiveConvention(boolean activeConvention) {
        this.activeConvention = activeConvention;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public BigDecimal getGuarantyAmount() {
        return guarantyAmount;
    }

    public void setGuarantyAmount(BigDecimal guarantyAmount) {
        this.guarantyAmount = guarantyAmount;
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

    public String getMentorId() {
        return mentorId;
    }

    public void setMentorId(String mentorId) {
        this.mentorId = mentorId;
    }

    public Date getInsertion() {
        return insertion;
    }

    public void setInsertion(Date insertion) {
        this.insertion = insertion;
    }

    public boolean isModify() {
        return modify;
    }

    public void setModify(boolean modify) {
        this.modify = modify;
    }

    public String getReloadTries() {
        return reloadTries;
    }

    public void setReloadTries(String reloadTries) {
        this.reloadTries = reloadTries;
    }

    public String getDbTimeMarker() {
        return dbTimeMarker;
    }

    public void setDbTimeMarker(String dbTimeMarker) {
        this.dbTimeMarker = dbTimeMarker;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public boolean isReprint() {
        return reprint;
    }

    public void setReprint(boolean reprint) {
        this.reprint = reprint;
    }

    public Date getConventionEnd() {
        return conventionEnd;
    }

    public void setConventionEnd(Date conventionEnd) {
        this.conventionEnd = conventionEnd;
    }

    public String getVirtualCorespondance() {
        return virtualCorespondance;
    }

    public void setVirtualCorespondance(String virtualCorespondance) {
        this.virtualCorespondance = virtualCorespondance;
    }

    public Shop getShop() {
        return shop;
    }

    public void setShop(Shop shop) {
        this.shop = shop;
    }

    public TelcoSupplier getTelcoSupplier() {
        return telcoSupplier;
    }

    public void setTelcoSupplier(TelcoSupplier telcoSupplier) {
        this.telcoSupplier = telcoSupplier;
    }

    public TerminalStock getTerminalStock() {
        return terminalStock;
    }

    public void setTerminalStock(TerminalStock terminalStock) {
        this.terminalStock = terminalStock;
    }

    public long getShopId() {
        return shopId;
    }

    public void setShopId(long shopId) {
        this.shopId = shopId;
    }

    public long getTerminalStockId() {
        return terminalStockId;
    }

    public void setTerminalStockId(long terminalStockId) {
        this.terminalStockId = terminalStockId;
    }
}
