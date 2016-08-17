package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.math.BigDecimal;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Entity
@Table(name = "TerminalSSS")
@Access(AccessType.FIELD)
public class TerminalSSS {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @ManyToOne
    @JoinColumn(name = "nTerminalId")
    private Terminal terminal;

    @Column(name = "bLimitation")
    private boolean limitation;

    @Column(name = "nBalance")
    private BigDecimal balance;

    @Column(name = "sName", length = 256)
    private String name;

    @Column(name = "sCode", length = 256)
    private String code;

    @Column(name = "bActive")
    private boolean active;

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

    public boolean isLimitation() {
        return limitation;
    }

    public void setLimitation(boolean limitation) {
        this.limitation = limitation;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
