package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.repository.TerminalTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * @author tuananh.nguyen@cartomat.com
 */
@Component
@Path("/terminal-type")
@Produces(MediaType.APPLICATION_JSON)
public class TerminalTypeResource {
    @Autowired
    private TerminalTypeRepository terminalTypeRepos;

    @GET
    @ResponseBody
    public List<com.cartomat.mpost.v2.entity.TerminalType> list(){
        return terminalTypeRepos.findAll();
    }
}
