package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author huong.dang@cartomat.com 9/21/2015.
 */

@Entity
@Table(name = "MpostReloadType")
@Access(AccessType.FIELD)
public class MpostReloadType {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sName", length = 50)
    private String name;
}
