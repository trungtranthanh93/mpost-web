package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author trung.tran on 9/17/2015.
 */
@Entity
@Table(name = "ResellerOpType")
@Access(AccessType.FIELD)
public class ResellerOptype {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sName", length = 256)
    private String name;

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
}
