package com.cartomat.mpost.v2.resource;

import com.cartomat.mpost.v2.core.Saying;
import com.codahale.metrics.annotation.Timed;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicLong;

/**
 * Created by PC on 9/4/2015.
 */
@Path("/hello-world")
@Produces(MediaType.APPLICATION_JSON)
public class HelloCartomatvn {
    private final String template;
    private final String defaultName;
    private AtomicLong counter;

    public HelloCartomatvn(String template, String defaultName){
        this.template = template;
        this.defaultName = defaultName;
        this.counter = counter;
    }
    @GET
    @Timed
    public Saying sayHello(@QueryParam("name")Optional<String> name){
        final  String value = String.format(template, name.orElse(defaultName));
        return  new Saying(counter.incrementAndGet(), value);
    }
}
