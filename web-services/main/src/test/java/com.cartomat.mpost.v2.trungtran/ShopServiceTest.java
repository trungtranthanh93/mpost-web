package com.cartomat.mpost.v2.trungtran;

import com.cartomat.mpost.v2.entity.Shop;
import com.cartomat.mpost.v2.repository.ShopRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * @author trung.tran on 9/24/2015.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:beans-test.xml"})
public class ShopServiceTest {
    @Autowired
    private ShopRepository shopRepos;

    @Test
    public void testCreateShop() throws Exception {

    }
}