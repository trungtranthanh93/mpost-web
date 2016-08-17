package com.cartomat.mpost.v2.resource.admin;

import com.cartomat.mpost.v2.domain.Contact;
import com.cartomat.mpost.v2.service.ContactService;
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
 * @author tuananh.nguyen@cartomat.com
 */
@Component
@Path("/contact")
@Produces(MediaType.APPLICATION_JSON)
public class ContactResource {
    @Autowired
    private ContactService contactService;

    @POST
    @ResponseBody
    public boolean create(@RequestBody Contact contact) {
        if (contact.getCompanyId() == 0 || contact.getFirstName() == null || contact.getLastName() == null ||
                contact.getGsm() == null) {
            return false;
        }

        return contactService.createContact(contact);
    }

    @GET
    public String test() {
        return "Contact " + contactService.size();
    }
}
