package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.domain.TerminalStock;
import com.cartomat.mpost.v2.entity.TelcoSupplier;
import com.cartomat.mpost.v2.repository.TelcoSupplierRepository;
import com.cartomat.mpost.v2.repository.TerminalStockRepository;
import com.cartomat.mpost.v2.service.TerminalStockService;
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
@Path("/terminal-stock")
@Produces(MediaType.APPLICATION_JSON)
public class TerminalStockResource {
    @Autowired
    private TerminalStockService terminalStockService;

    @Autowired
    private TerminalStockRepository terminalStockRepos;

    @POST
    @ResponseBody
    public boolean create(@RequestBody TerminalStock terminalStock) {
        return terminalStockService.createTerminalStock(terminalStock);
    }

    @GET
    @ResponseBody
    public List<com.cartomat.mpost.v2.entity.TerminalStock> list(){
        return terminalStockRepos.activeList();
    }
}
