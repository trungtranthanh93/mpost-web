
package com.cartomat.mpost.v2.resource;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

/**
 * Created by PC on 9/4/2015.
 */
@Path("/Demo")
public class HelloWorldResource {

    @GET
    public String greeting(){
        return "Hello World";
    }
}
