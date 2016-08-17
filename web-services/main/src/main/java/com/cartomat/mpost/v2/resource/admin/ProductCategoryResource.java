package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.entity.ProductCategory;
import com.cartomat.mpost.v2.repository.ProductCategoryRepository;
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
@Path("/product-category")
@Produces(MediaType.APPLICATION_JSON)
public class ProductCategoryResource {
    @Autowired
    private ProductCategoryRepository productCategoryRepos;

    @POST
    @ResponseBody
    public List<ProductCategory> list() {
        return productCategoryRepos.findAll();
    }
}
