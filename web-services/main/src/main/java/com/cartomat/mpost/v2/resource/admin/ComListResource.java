package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.entity.ComList;
import com.cartomat.mpost.v2.repository.ComListRepository;
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
 * @author tuananh.nguyen@cartomat.vn
 */
@Component
@Path("/com-list")
@Produces(MediaType.APPLICATION_JSON)
public class ComListResource {
    @Autowired
    private ComListRepository comListRepos;

    @GET
    @Path(":id")
    @ResponseBody
    public ComList get(@PathParam("id") long id) {
        return comListRepos.findOne(id);
    }

    @GET
    @ResponseBody
    public List<ComList> list() {
        return comListRepos.activeList();
    }
}
