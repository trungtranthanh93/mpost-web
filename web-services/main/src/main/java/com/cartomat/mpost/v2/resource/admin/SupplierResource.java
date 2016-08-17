package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.entity.ProductSupplier;
import com.cartomat.mpost.v2.repository.ProductSupplierRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * @author dat.tran@cartomat.vn
 */
@Component
@Path("/supplier")
@Produces(MediaType.APPLICATION_JSON)
public class SupplierResource {
    @Autowired
    private ProductSupplierRepository supplierRepos;

    @GET
    @Path(":id")
    @ResponseBody
    public ProductSupplier get(@PathParam("id") long id) {
        return supplierRepos.findOne(id);
    }

    @GET
    @ResponseBody
    public List<ProductSupplier> list() {
        return supplierRepos.findAll();
    }

}
