package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Entity
@Table(name = "Service")
@Access(AccessType.FIELD)
public class Service {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sName")
    private String name;

    @Column(name = "sActiveLogo")
    private String activeLogo;

    @Column(name = "sNonActiveLogo")
    private String nonActiveLogo;

    @Column(name = "nPosition")
    private Long position;

    @Column(name = "bPass2pay")
    private Boolean pass2pay;

    @Column(name = "nPass2PayPosition")
    private Long pass2PayPosition;

    @Column(name = "nReprint")
    private Long reprint;

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

    public String getActiveLogo() {
        return activeLogo;
    }

    public void setActiveLogo(String activeLogo) {
        this.activeLogo = activeLogo;
    }

    public String getNonActiveLogo() {
        return nonActiveLogo;
    }

    public void setNonActiveLogo(String nonActiveLogo) {
        this.nonActiveLogo = nonActiveLogo;
    }

    public long getPosition() {
        return position;
    }

    public void setPosition(long position) {
        this.position = position;
    }

    public boolean isPass2pay() {
        return pass2pay;
    }

    public void setPass2pay(boolean pass2pay) {
        this.pass2pay = pass2pay;
    }

    public long getPass2PayPosition() {
        return pass2PayPosition;
    }

    public void setPass2PayPosition(long pass2PayPosition) {
        this.pass2PayPosition = pass2PayPosition;
    }

    public long getReprint() {
        return reprint;
    }

    public void setReprint(long reprint) {
        this.reprint = reprint;
    }
}
