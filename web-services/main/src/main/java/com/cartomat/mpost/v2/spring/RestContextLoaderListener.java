package com.cartomat.mpost.v2.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.XmlWebApplicationContext;

import javax.servlet.ServletContext;

public class RestContextLoaderListener extends ContextLoaderListener {
    @Autowired
    private XmlWebApplicationContext applicationContext;

    public RestContextLoaderListener(XmlWebApplicationContext applicationContext) {
        super(applicationContext);
        this.applicationContext = applicationContext;
    }

    @Override
    protected WebApplicationContext createWebApplicationContext(ServletContext sc) {
        applicationContext.setServletContext(sc);
        return super.createWebApplicationContext(sc);
    }
}
