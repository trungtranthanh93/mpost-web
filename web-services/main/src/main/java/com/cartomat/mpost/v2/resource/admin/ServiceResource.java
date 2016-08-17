package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.repository.ServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * @author dat.tran@cartomat.com
 */
@Component
@Path("/service")
@Produces(MediaType.APPLICATION_JSON)
public class ServiceResource {
    @Autowired
    private ServiceRepository serviceRepos;

    @GET
    @ResponseBody
    public List<com.cartomat.mpost.v2.entity.Service> list() {
        return serviceRepos.findAll();
    }
}