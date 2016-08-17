package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.entity.SaleChannel;
import com.cartomat.mpost.v2.repository.SaleChannelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * @author dat.tran@cartomat.vn
 */
@Component
@Path("/sale-channel")
@Produces(MediaType.APPLICATION_JSON)
public class SaleChannelResource {
    @Autowired
    private SaleChannelRepository saleChannelRepos;

    @GET
    @Path(":id")
    @ResponseBody
    public SaleChannel get(@PathParam("id") long id) {
        return saleChannelRepos.findOne(id);
    }

    @GET
    @ResponseBody
    public List<SaleChannel> list() {
        return saleChannelRepos.findAll();
    }
}
