package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author huong.dang@cartomat.com 9/18/2015.
 */

@Entity
@Table(name = "AccessType")
@Access(AccessType.FIELD)
public class MpostAccessType {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sName", length = 50)
    private String name;

    @Column(name = "sAccessTable", length = 20)
    private String accessTable;

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

    public String getAccessTable() {
        return accessTable;
    }

    public void setAccessTable(String accessTable) {
        this.accessTable = accessTable;
    }
}
