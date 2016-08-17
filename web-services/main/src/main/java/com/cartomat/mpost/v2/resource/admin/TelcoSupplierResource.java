package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.entity.TelcoSupplier;
import com.cartomat.mpost.v2.repository.TelcoSupplierRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Component
@Path("/telco-supplier")
@Produces(MediaType.APPLICATION_JSON)
public class TelcoSupplierResource {
    @Autowired
    private TelcoSupplierRepository telcoSupplierRepos;

    @GET
    @ResponseBody
    public List<TelcoSupplier> listTelcoSupplier(){
        return telcoSupplierRepos.findAll();
    }
}
