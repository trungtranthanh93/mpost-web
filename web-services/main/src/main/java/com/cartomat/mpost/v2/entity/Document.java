package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * @author trung.tran on 9/14/2015.
 */
@Entity
@Table(name = "Documents")
@Access(AccessType.FIELD)
public class Document {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @Column(name = "sName", length = 100)
    private String name;

    @ManyToOne
    @JoinColumn(name = "nDocTypeId")
    private DocType docType;

    @Column(name = "nDocTypeId", insertable = false, updatable = false)
    private long docTypeId;

    @Column(name = "dInsertion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertion;

    @ManyToOne
    @JoinColumn(name = "nCompanyId", insertable = false, updatable = false)
    private Company company;

    @Column(name = "nCompanyId")
    private long companyId;

    @ManyToOne
    @JoinColumn(name = "nTerminalId", insertable = false, updatable = false)
    private Terminal terminal;

    @Column(name = "nTerminalId")
    private long terminalId;

    @ManyToOne
    @JoinColumn(name = "nInvoiceId")
    private Invoice invoiceId;

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public DocType getDocType() {
        return docType;
    }

    public void setDocType(DocType docType) {
        this.docType = docType;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Date getInsertion() {
        return insertion;
    }

    public void setInsertion(Date insertion) {
        this.insertion = insertion;
    }

    public Invoice getInvoiceId() {
        return invoiceId;
    }

    public void setInvoiceId(Invoice invoiceId) {
        this.invoiceId = invoiceId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Terminal getTerminal() {
        return terminal;
    }

    public void setTerminal(Terminal terminal) {
        this.terminal = terminal;
    }

    public long getDocTypeId() {
        return docTypeId;
    }

    public void setDocTypeId(long docTypeId) {
        this.docTypeId = docTypeId;
    }

    public long getCompanyId() {
        return companyId;
    }

    public void setCompanyId(long companyId) {
        this.companyId = companyId;
    }

    public long getTerminalId() {
        return terminalId;
    }

    public void setTerminalId(long terminalId) {
        this.terminalId = terminalId;
    }
}