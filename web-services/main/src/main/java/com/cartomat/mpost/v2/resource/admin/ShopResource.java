package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.domain.Shop;
import com.cartomat.mpost.v2.repository.ShopRepository;
import com.cartomat.mpost.v2.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * @author trung.tran@cartomat.com
 */
@Component
@Path("/shop")
@Produces(MediaType.APPLICATION_JSON)
public class ShopResource {
    @Autowired
    private ShopService shopService;

    @Autowired
    private ShopRepository shopRepos;

    @GET
    @Path(":id")
    @ResponseBody
    public com.cartomat.mpost.v2.entity.Shop get(@PathParam("id") long id) {
        return shopRepos.findOne(id);
    }

    @GET
    @ResponseBody
    public List<com.cartomat.mpost.v2.entity.Shop> list() {
        return shopRepos.activeList();
    }

    @POST
    @ResponseBody
    public boolean createShop(@RequestBody Shop shop) {
        if (shop.getCompanyId() == 0 || shop.getName() == null
                || shop.getAddress() == null || shop.getPostCodeId() == 0) {
            return false;
        }
        return shopService.createShop(shop);
    }

}