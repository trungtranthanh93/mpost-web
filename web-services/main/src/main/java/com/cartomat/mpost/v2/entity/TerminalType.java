package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Entity
@Table(name = "TerminalType")
@Access(AccessType.FIELD)
public class TerminalType {
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
