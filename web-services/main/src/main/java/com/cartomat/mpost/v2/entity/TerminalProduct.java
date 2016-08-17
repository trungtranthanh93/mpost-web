package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Entity
@Table(name = "TerminalProduct")
@Access(AccessType.FIELD)
public class TerminalProduct {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @ManyToOne
    @JoinColumn(name = "nProductId")
    private Product product;

    @ManyToOne
    @JoinColumn(name = "nTerminalId")
    private Terminal terminal;

    @Column(name = "bActive")
    private boolean active;

    @Column(name = "nPosition")
    private long position;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Terminal getTerminal() {
        return terminal;
    }

    public void setTerminal(Terminal terminal) {
        this.terminal = terminal;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public long getPosition() {
        return position;
    }

    public void setPosition(long position) {
        this.position = position;
    }
}
