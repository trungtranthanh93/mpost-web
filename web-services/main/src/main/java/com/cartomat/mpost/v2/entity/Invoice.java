package com.cartomat.mpost.v2.entity;

/**
 * @author trung.tran
 */

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Invoice")
@Access(AccessType.FIELD)
public class Invoice {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sInvoiceOut", length = 256)
    private String invoiceOut;

    @Column(name = "nInvoiceIn")
    private long invoiceIn;

    @Column(name = "dInvoicePeriode")
    @Temporal(TemporalType.TIMESTAMP)
    private Date invoicePeriode;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getInvoiceOut() {
        return invoiceOut;
    }

    public void setInvoiceOut(String invoiceOut) {
        this.invoiceOut = invoiceOut;
    }

    public long getInvoiceIn() {
        return invoiceIn;
    }

    public void setInvoiceIn(long invoiceIn) {
        this.invoiceIn = invoiceIn;
    }

    public Date getInvoicePeriode() {
        return invoicePeriode;
    }

    public void setInvoicePeriode(Date invoicePeriode) {
        this.invoicePeriode = invoicePeriode;
    }
}