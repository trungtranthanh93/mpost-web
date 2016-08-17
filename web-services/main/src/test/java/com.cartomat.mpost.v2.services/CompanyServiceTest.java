package com.cartomat.mpost.v2.services;

import com.cartomat.mpost.v2.service.CompanyService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:beans-test.xml"})
public class CompanyServiceTest {

    @Autowired
    private CompanyService companyService;

    @Test
    public void testCreateCompany() {
        
    }
}

