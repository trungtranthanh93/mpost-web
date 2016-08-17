package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.domain.Reseller;
import com.cartomat.mpost.v2.repository.ResellerRepository;
import com.cartomat.mpost.v2.service.ResellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Component
@Path("/reseller")
@Produces(MediaType.APPLICATION_JSON)
public class ResellerResource {
    @Autowired
    private ResellerRepository resellerRepos;

    @Autowired
    private ResellerService resellerService;

    @GET
    @Path(":id")
    @ResponseBody
    public com.cartomat.mpost.v2.entity.Reseller get(@PathParam("id") long id) {
        return resellerRepos.findOne(id);
    }

    @GET
    @ResponseBody
    public List<com.cartomat.mpost.v2.entity.Reseller> list() {
        return resellerRepos.activeList();
    }

    @POST
    @ResponseBody
    public boolean updateReseller(@RequestBody Reseller resellerUpdate){
        return resellerService.updateReseller(resellerUpdate);
    }
}
