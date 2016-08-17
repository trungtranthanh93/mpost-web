package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.math.BigDecimal;

/**
 * @author huong.dang@cartomat.com 9/20/2015.
 */

@Entity
@Table(name = "FinSale")
@Access(AccessType.FIELD)
public class FinSale {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @ManyToOne
    @JoinColumn(name = "nFinProductId")
    private FinProduct finProduct;

    @Column(name = "nQuantity")
    private int quantity;

    @Column(name = "nAmount")
    private BigDecimal amount;

    @ManyToOne
    @JoinColumn(name = "nMpostReloadId")
    private MpostReload mpostReload;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public FinProduct getFinProduct() {
        return finProduct;
    }

    public void setFinProduct(FinProduct finProduct) {
        this.finProduct = finProduct;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public MpostReload getMpostReload() {
        return mpostReload;
    }

    public void setMpostReload(MpostReload mpostReload) {
        this.mpostReload = mpostReload;
    }
}
