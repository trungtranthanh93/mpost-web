package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.domain.ShopManager;
import com.cartomat.mpost.v2.entity.ContactType;
import com.cartomat.mpost.v2.repository.ContactTypeRepository;
import com.cartomat.mpost.v2.service.ShopManagerService;
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
 * @author tuananh.nguyen@cartomat.com
 */
@Component
@Path("/shop-manager")
@Produces(MediaType.APPLICATION_JSON)
public class ShopManagerResource {
    @Autowired
    private ShopManagerService shopManagerService;

    @Autowired
    private ContactTypeRepository contactTypeRepos;

    @POST
    @ResponseBody
    public boolean creatShopManager(@RequestBody ShopManager shopManager) {
        return shopManagerService.createShopManager(shopManager);
    }

    @GET
    @ResponseBody
    public List<ContactType> list() {
        return contactTypeRepos.findAll();
    }
}
