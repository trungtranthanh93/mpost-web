package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author huong.dang@cartomat.com.
 */
@Entity
@Table(name = "Country")
@Access(AccessType.FIELD)
public class Country {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sName", length = 25)
    private String name;

    @Column(name = "sCode", length = 5)
    private String code;

    @Column(name = "nDigitMin")
    private int digitMin;

    @Column(name = "nDigitMax")
    private int digitMax;

    @Column(name = "sPrefix", length = 50)
    private String prefix;

    @Column(name = "bNational", length = 256)
    private boolean national;

    @Column(name = "sCountryPrefix", length = 5)
    private String countryPrefix;

    @Column(name = "nPosition")
    private int position;

    @Column(name = "sLogo", length = 25)
    private String logo;

    @Column(name = "bActive", length = 256)
    private boolean active;

    @Column(name = "bModify", length = 256)
    private boolean modify;

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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getDigitMin() {
        return digitMin;
    }

    public void setDigitMin(int digitMin) {
        this.digitMin = digitMin;
    }

    public int getDigitMax() {
        return digitMax;
    }

    public void setDigitMax(int digitMax) {
        this.digitMax = digitMax;
    }

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    public boolean isNational() {
        return national;
    }

    public void setNational(boolean national) {
        this.national = national;
    }

    public String getCountryPrefix() {
        return countryPrefix;
    }

    public void setCountryPrefix(String countryPrefix) {
        this.countryPrefix = countryPrefix;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public boolean isModify() {
        return modify;
    }

    public void setModify(boolean modify) {
        this.modify = modify;
    }
}
