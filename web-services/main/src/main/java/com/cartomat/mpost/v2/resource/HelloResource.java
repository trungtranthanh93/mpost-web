package com.cartomat.mpost.v2.resource;

import com.cartomat.mpost.v2.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

@Component
@Path("/hello")
public class HelloResource {

    @Autowired
    private CompanyService companyService;

    @GET
    public String greeting() {
        return "xin chao ban";
    }

    @GET
    @Path("/test/{name}")
    public String test(@PathParam("name") String name) {
        return "xin chao ban " + name;
    }
}
