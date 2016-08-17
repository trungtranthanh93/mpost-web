package com.cartomat.mpost.v2.health;

import com.cartomat.mpost.v2.ProjectDemoConfiguration;
import com.cartomat.mpost.v2.core.Saying;
import com.cartomat.mpost.v2.resource.HelloCartomatvn;
import com.codahale.metrics.health.HealthCheck;
import io.dropwizard.setup.Environment;

import javax.xml.transform.Result;

/**
 * Created by PC on 9/4/2015.
 */
public class TemplateHealthCheck extends HealthCheck{
    private final String template;

    public TemplateHealthCheck(String template){
        this.template = template;
    }

    protected Result check(){
        final String saying = String.format(template,"TEST");
        if(!saying.contains("TEST")){
            return Result.unhealthy("template doesn't include ...");
        }
        return Result.healthy();
    }

    public void run(ProjectDemoConfiguration configuration,
                    Environment environment) {
        final HelloCartomatvn resource = new HelloCartomatvn(
                configuration.getTemplate(),
                configuration.getDefaultName()
        );

        final TemplateHealthCheck healthCheck = new TemplateHealthCheck(configuration.getTemplate());
            environment.healthChecks().register("template", healthCheck);
            environment.jersey().register(resource);
    }
}
