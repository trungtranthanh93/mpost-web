package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.domain.GAB;
import com.cartomat.mpost.v2.entity.Shop;
import com.cartomat.mpost.v2.repository.ShopRepository;
import com.cartomat.mpost.v2.service.GABService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * @author tuananh.nguyen@cartomat.vn
 */
@Component
@Path("/gab")
@Produces(MediaType.APPLICATION_JSON)
public class GABResource {
    @Autowired
    private GABService gabService;

    @Autowired
    private ShopRepository shopRepos;

    @POST
    @ResponseBody
    public boolean create(@RequestBody GAB gab){
        return gabService.createGAB(gab);
    }

    @GET
    @ResponseBody
    public List<Shop> listShop(){
        return shopRepos.findAll();
    }
}
