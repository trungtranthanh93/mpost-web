package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.entity.Product;
import com.cartomat.mpost.v2.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * @author dat.tran@cartomat.vn
 */
@Component
@Path("/product")
@Produces(MediaType.APPLICATION_JSON)
public class ProductResource {
    @Autowired
    private ProductRepository productRepos;

    @POST
    @ResponseBody
    public List<Product> list() {
        return productRepos.findAll();
    }
}
