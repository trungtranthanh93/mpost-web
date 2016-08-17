package com.cartomat.mpost.v2;

import com.cartomat.mpost.v2.resource.HelloResource;
import io.dropwizard.Application;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;

public class DemoApplication extends Application<MpostConfiguration> {

    public static void main(final String[] args) throws Exception {
        new DemoApplication().run(args);
    }

    @Override
    public String getName() {
        return "Demo";
    }

    @Override
    public void initialize(final Bootstrap<MpostConfiguration> bootstrap) {
        // TODO: application initialization
    }

    @Override
    public void run(final MpostConfiguration configuration,
                    final Environment environment) {
        environment.jersey().register(new HelloResource());

    }

}
