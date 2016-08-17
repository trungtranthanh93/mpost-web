package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author dat.tran@cartomat.com
 */
@Entity
@Table(name = "Transactions")
@Access(AccessType.FIELD)
public class Transaction {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}
