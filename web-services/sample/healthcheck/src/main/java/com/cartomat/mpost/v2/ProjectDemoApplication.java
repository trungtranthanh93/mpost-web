package com.cartomat.mpost.v2;

import com.cartomat.mpost.v2.resource.HelloCartomatvn;
import io.dropwizard.Application;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;

public class ProjectDemoApplication extends Application<ProjectDemoConfiguration> {

    public static void main(final String[] args) throws Exception {
        new ProjectDemoApplication().run(args);
    }

    @Override
    public String getName() {
        return "hello-world";
    }

    @Override
    public void initialize(final Bootstrap<ProjectDemoConfiguration> bootstrap) {

    }

    @Override
    public void run(final ProjectDemoConfiguration configuration,
                    final Environment environment) {
        final HelloCartomatvn resource = new HelloCartomatvn(
                configuration.getTemplate(),
                configuration.getDefaultName()
        );
        environment.jersey().register(resource);
    }

}
