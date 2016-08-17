package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author huong.dang@cartomat.com.
 */
@Entity
@Table(name = "Reseller")
@Access(AccessType.FIELD)
public class Reseller {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sName", length = 30)
    private String name;

    @Column(name = "dInsertion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertion;

    @Column(name = "nMentorId")
    private int mentor;

    @ManyToOne
    @JoinColumn(name = "nResellerComListId")
    private ResellerComList resellerComList;

    @Column(name = "nBalance")
    private BigDecimal balance;

    @ManyToOne
    @JoinColumn(name = "nSaleChannelId")
    private SaleChannel saleChannel;

    @Column(name = "nPrepaidBalance")
    private BigDecimal prepaidBalance;

    @Column(name = "sMapping", length = 20)
    private String mapping;

    @Column(name = "bOnNet", length = 256)
    private boolean onNet;

    @Column(name = "nLevel")
    private int level;

    @Column(name = "nMentorResellerId")
    private int mentorReseller;

    @Column(name = "bActive", length = 256)
    private boolean active;

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

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
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

    public ResellerComList getResellerComList() {
        return resellerComList;
    }

    public void setResellerComList(ResellerComList resellerComList) {
        this.resellerComList = resellerComList;
    }

    public SaleChannel getSaleChannel() {
        return saleChannel;
    }

    public void setSaleChannel(SaleChannel saleChannel) {
        this.saleChannel = saleChannel;
    }

    public String getMapping() {
        return mapping;
    }

    public void setMapping(String mapping) {
        this.mapping = mapping;
    }

    public boolean isOnNet() {
        return onNet;
    }

    public void setOnNet(boolean onNet) {
        this.onNet = onNet;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getMentorReseller() {
        return mentorReseller;
    }

    public void setMentorReseller(int mentorReseller) {
        this.mentorReseller = mentorReseller;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public BigDecimal getPrepaidBalance() {
        return prepaidBalance;
    }

    public void setPrepaidBalance(BigDecimal prepaidBalance) {
        this.prepaidBalance = prepaidBalance;
    }
}
