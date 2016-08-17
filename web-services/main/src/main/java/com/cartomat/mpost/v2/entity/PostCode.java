package com.cartomat.mpost.v2.entity;

import javax.persistence.*;

/**
 * @author huong.dang@cartomat.com.
 */
@Entity
@Table(name = "PostCode")
@Access(AccessType.FIELD)
public class PostCode {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "nId")
    private long id;

    @ManyToOne
    @JoinColumn(name = "nCountryId")
    private Country country;

    @Column(name = "sCity", length = 50)
    private String city;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }


    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
