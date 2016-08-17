package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.entity.FinPayment;
import com.cartomat.mpost.v2.repository.FinPaymentRepository;
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
 * @author huong.dang@cartomat.com 9/21/2015.
 */

@Component
@Path("/fin-payment")
@Produces(MediaType.APPLICATION_JSON)
public class FinPaymentResource {
    @Autowired
    private FinPaymentRepository finPaymentRepos;

    @GET
    @Path(":id")
    @ResponseBody
    public FinPayment get(@PathParam("id") long id) {
        return finPaymentRepos.findOne(id);
    }

    @GET
    @ResponseBody
    public List<FinPayment> list() {
        return finPaymentRepos.activeList();
    }
}
