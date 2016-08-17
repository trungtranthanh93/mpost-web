package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.domain.ClosedConvention;
import com.cartomat.mpost.v2.domain.Terminal;
import com.cartomat.mpost.v2.repository.TerminalRepository;
import com.cartomat.mpost.v2.service.TerminalService;
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
@Path("/terminal")
@Produces(MediaType.APPLICATION_JSON)
public class TerminalResource {
    @Autowired
    private TerminalService terminalService;

    @Autowired
    private TerminalRepository terminalRepos;

    @POST
    @ResponseBody
    public boolean create(@RequestBody Terminal terminal) {
        return terminalService.createTerminal(terminal);
    }

    @GET
    @ResponseBody
    public List<com.cartomat.mpost.v2.entity.Terminal> list() {
        return terminalRepos.activeList();
    }

    @POST
    @Path("close-convention")
    @ResponseBody
    public boolean close(@RequestBody ClosedConvention convention) {
        return terminalService.closeConvention(convention);
    }
}
