package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author huong.dang@cartomat.com 9/20/2015.
 */

@Entity
@Table(name = "FinOp")
@Access(AccessType.FIELD)
public class FinOp {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @ManyToOne
    @JoinColumn(name = "nFinOperationTypeId", updatable = false, insertable = false)
    private FinOperationType finOperationType;

    @Column(name = "nFinOperationTypeId")
    private long finOperationTypeId;

    @Column(name = "dInsertion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertion;

    @Column(name = "dOperation")
    @Temporal(TemporalType.TIMESTAMP)
    private Date operation;

    @ManyToOne
    @JoinColumn(name = "nCompanyId", updatable = false, insertable = false)
    private Company company;

    @Column(name = "nCompanyId")
    private long companyId;

    @ManyToOne
    @JoinColumn(name = "nFinSaleId")
    private FinSale finSale;

    @ManyToOne
    @JoinColumn(name = "nFinPaymentId", updatable = false, insertable = false)
    private FinPayment finPayment;

    @Column(name = "nFinPaymentId")
    private long finPaymentId;

    @Column(name = "nBalance")
    private BigDecimal balance;

    @Column(name = "sComment", length = 1000)
    private String comment;

    @Column(name = "bActive", length = 256)
    private boolean active;

    @Column(name = "nMentorId")
    private int mentor;

    @ManyToOne
    @JoinColumn(name = "nFinOpTypeId")
    private FinOpType finOpType;

    @ManyToOne
    @JoinColumn(name = "nOperationSourceId", updatable = false, insertable = false)
    private OperationSource operationSource;

    @Column(name = "nOperationSourceId")
    private long operationSourceId;

    @ManyToOne
    @JoinColumn(name = "nSmsId")
    private Sms sms;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getCompanyId() {
        return companyId;
    }

    public void setCompanyId(long companyId) {
        this.companyId = companyId;
    }

    public FinOperationType getFinOperationType() {
        return finOperationType;
    }

    public void setFinOperationType(FinOperationType finOperationType) {
        this.finOperationType = finOperationType;
    }

    public long getFinOperationTypeId() {
        return finOperationTypeId;
    }

    public void setFinOperationTypeId(long finOperationTypeId) {
        this.finOperationTypeId = finOperationTypeId;
    }

    public long getFinPaymentId() {
        return finPaymentId;
    }

    public void setFinPaymentId(long finPaymentId) {
        this.finPaymentId = finPaymentId;
    }

    public Date getInsertion() {
        return insertion;
    }

    public void setInsertion(Date insertion) {
        this.insertion = insertion;
    }

    public Date getOperation() {
        return operation;
    }

    public void setOperation(Date operation) {
        this.operation = operation;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public FinSale getFinSale() {
        return finSale;
    }

    public void setFinSale(FinSale finSale) {
        this.finSale = finSale;
    }

    public FinPayment getFinPayment() {
        return finPayment;
    }

    public void setFinPayment(FinPayment finPayment) {
        this.finPayment = finPayment;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public int getMentor() {
        return mentor;
    }

    public void setMentor(int mentor) {
        this.mentor = mentor;
    }

    public FinOpType getFinOpType() {
        return finOpType;
    }

    public void setFinOpType(FinOpType finOpType) {
        this.finOpType = finOpType;
    }

    public OperationSource getOperationSource() {
        return operationSource;
    }

    public void setOperationSource(OperationSource operationSource) {
        this.operationSource = operationSource;
    }

    public long getOperationSourceId() {
        return operationSourceId;
    }

    public void setOperationSourceId(long operationSourceId) {
        this.operationSourceId = operationSourceId;
    }

    public Sms getSms() {
        return sms;
    }

    public void setSms(Sms sms) {
        this.sms = sms;
    }
}
