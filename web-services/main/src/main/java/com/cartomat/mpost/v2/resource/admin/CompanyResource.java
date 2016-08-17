package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.domain.Company;
import com.cartomat.mpost.v2.domain.Suggestion;
import com.cartomat.mpost.v2.repository.CompanyRepository;
import com.cartomat.mpost.v2.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;
import java.util.List;

/**
 * @author huong.dang@cartomat.com.
 */
@Component
@Path("/company")
@Produces(MediaType.APPLICATION_JSON)
public class CompanyResource {
    @Autowired
    private CompanyService companyService;

    @Autowired
    private CompanyRepository companyRepos;

    @POST
    @ResponseBody
    public boolean create(@RequestBody Company company) {
        return companyService.createCompany(company);
    }

    @GET
    @Path("/suggest")
    public List<Suggestion> suggest() {
        List<Suggestion> result = new ArrayList<>();

        List<com.cartomat.mpost.v2.entity.Company> entities = companyRepos.findAll();
        for(com.cartomat.mpost.v2.entity.Company item : entities) {
            result.add(new Suggestion(item.getId(), item.getName()));
        }
        return result;
    }
}
