package com.cartomat.mpost.v2.resource.admin;

import org.springframework.stereotype.Component;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

@Component
@Path("/admin")
public class AdminResource {
    @GET
    public String list() {
        return "Hello World";
    }
}
