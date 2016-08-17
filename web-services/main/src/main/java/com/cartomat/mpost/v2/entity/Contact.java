package com.cartomat.mpost.v2.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * @author huong.dang@cartomat.com.
 */
@Entity
@Table(name = "Contact")
@Access(AccessType.FIELD)
public class Contact {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @ManyToOne
    @JoinColumn(name = "nContactTypeId", insertable = false, updatable = false)
    private ContactType contactType;

    @Column(name = "nContactTypeId", length = 256)
    private long contactTypeId;

    @Column(name = "sFirstName", length = 256)
    private String firstName;

    @Column(name = "sLastName", length = 256)
    private String lastName;

    @Column(name = "sGsm", length = 256)
    private String gsm;

    @Column(name = "sMail", length = 256)
    private String mail;

    @Column(name = "bActive")
    private boolean active;

    @Column(name = "dInsertion")
    private Date insertion;

    @Column(name = "dLastModification")
    private Date lastModification;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public ContactType getContactType() {
        return contactType;
    }

    public void setContactType(ContactType contactType) {
        this.contactType = contactType;
    }

    public long getContactTypeId() {
        return contactTypeId;
    }

    public void setContactTypeId(long contactTypeId) {
        this.contactTypeId = contactTypeId;
    }

    public String getGsm() {
        return gsm;
    }

    public void setGsm(String gsm) {
        this.gsm = gsm;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Date getInsertion() {
        return insertion;
    }

    public void setInsertion(Date insertion) {
        this.insertion = insertion;
    }

    public Date getLastModification() {
        return lastModification;
    }

    public void setLastModification(Date lastModification) {
        this.lastModification = lastModification;
    }
}
