package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Entity
@Table(name = "TerminalSer")
@Access(AccessType.FIELD)
public class TerminalSer {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @ManyToOne
    @JoinColumn(name = "nTerminalId")
    private Terminal terminal;

    @ManyToOne
    @JoinColumn(name = "nServiceId")
    private Service service;

    @Column(name = "bActive")
    private boolean active;

    @Column(name = "bModify")
    private boolean modify;

    @Column(name = "nPrint")
    private long print;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Terminal getTerminal() {
        return terminal;
    }

    public void setTerminal(Terminal terminal) {
        this.terminal = terminal;
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

    public boolean isModify() {
        return modify;
    }

    public void setModify(boolean modify) {
        this.modify = modify;
    }

    public long getPrint() {
        return print;
    }

    public void setPrint(long print) {
        this.print = print;
    }
}
