package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.domain.Documents;
import com.cartomat.mpost.v2.service.DocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 * @author trung.tran on 9/17/2015.
 */
@Component
@Path("/delivery")
@Produces(MediaType.APPLICATION_JSON)
public class DeliveryResource {

    @Autowired
    private DocumentService documentService;

    @POST
    @ResponseBody
    public boolean createDocument(@RequestBody Documents doc) {
        if (doc.getTerminalId() == 0 || doc.getDocTypeId() == 0 || doc.getStatementNumber() == null) {
            return false;
        }

        return documentService.createDocument(doc);

    }

    @GET
    public String test() {
        return "Document " + documentService.size();
    }

}
