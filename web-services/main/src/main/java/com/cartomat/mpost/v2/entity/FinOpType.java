package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author huong.dang@cartomat.com 9/20/2015.
 */

@Entity
@Table(name = "FinOp")
@Access(AccessType.FIELD)
public class FinOpType {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sName", length = 20)
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
