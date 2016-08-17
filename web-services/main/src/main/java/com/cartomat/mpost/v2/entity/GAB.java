package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Entity
@Table(name = "GAB")
@Access(AccessType.FIELD)
public class GAB {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sName", length = 256)
    private String name;

    @Column(name = "sGABId", length = 256)
    private String gabId;

    @ManyToOne
    @JoinColumn(name = "nTerminalId")
    private Terminal terminal;

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

    public String getGabId() {
        return gabId;
    }

    public void setGabId(String gabId) {
        this.gabId = gabId;
    }

    public Terminal getTerminal() {
        return terminal;
    }

    public void setTerminal(Terminal terminal) {
        this.terminal = terminal;
    }
}
