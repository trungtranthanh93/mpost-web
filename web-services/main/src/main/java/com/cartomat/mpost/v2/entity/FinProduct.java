package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author huong.dang@cartomat.com 9/20/2015.
 */

@Entity
@Table(name = "FinOp")
@Access(AccessType.FIELD)
public class FinProduct {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sName", length = 20)
    private String name;

    @Column(name = "sCode", length = 10)
    private String code;

    @ManyToOne
    @JoinColumn(name = "nServiceId")
    private Service service;

    @Column(name = "bActive", length = 256)
    private boolean active;

    @Column(name = "slogo", length = 50)
    private String logo;

    @Column(name = "sPrintLogo", length = 50)
    private String printLogo;

    @Column(name = "sPrintText", length = 1000)
    private String printText;

    @Column(name = "sPosition", length = 50)
    private String position;

    @ManyToOne
    @JoinColumn(name = "nCountryId")
    private Country country;

    @Column(name = "bModify", length = 256)
    private boolean modify;

    @Column(name = "sCustomerCare", length = 50)
    private String customerCare;

    @Column(name = "bPass2Pay", length = 256)
    private boolean pass2Pay;

    @Column(name = "nPass2PayPosition")
    private int pass2PayPosition;

    @Column(name = "sInfoText", length = 150)
    private String infoText;

    @Column(name = "sPass2PayBGCode", length = 50)
    private String pass2PayBGCode;

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

    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getPrintLogo() {
        return printLogo;
    }

    public void setPrintLogo(String printLogo) {
        this.printLogo = printLogo;
    }

    public String getPrintText() {
        return printText;
    }

    public void setPrintText(String printText) {
        this.printText = printText;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public boolean isModify() {
        return modify;
    }

    public void setModify(boolean modify) {
        this.modify = modify;
    }

    public String getCustomerCare() {
        return customerCare;
    }

    public void setCustomerCare(String customerCare) {
        this.customerCare = customerCare;
    }

    public boolean isPass2Pay() {
        return pass2Pay;
    }

    public void setPass2Pay(boolean pass2Pay) {
        this.pass2Pay = pass2Pay;
    }

    public int getPass2PayPosition() {
        return pass2PayPosition;
    }

    public void setPass2PayPosition(int pass2PayPosition) {
        this.pass2PayPosition = pass2PayPosition;
    }

    public String getInfoText() {
        return infoText;
    }

    public void setInfoText(String infoText) {
        this.infoText = infoText;
    }

    public String getPass2PayBGCode() {
        return pass2PayBGCode;
    }

    public void setPass2PayBGCode(String pass2PayBGCode) {
        this.pass2PayBGCode = pass2PayBGCode;
    }
}
