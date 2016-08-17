package com.cartomat.mpost.v2;

import com.cartomat.mpost.v2.spring.RestContextLoaderListener;
import com.cartomat.mpost.v2.spring.XmlRestWebApplicationContext;
import com.cartomat.mpost.v2.spring.config.FilterConfig;
import com.cartomat.mpost.v2.spring.config.SpringConfig;
import com.codahale.metrics.health.HealthCheck;
import com.fasterxml.jackson.databind.DeserializationFeature;
import io.dropwizard.Application;
import io.dropwizard.servlets.tasks.Task;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;
import org.eclipse.jetty.servlet.FilterHolder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.NoSuchBeanDefinitionException;
import org.springframework.context.ApplicationContext;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;

public class MpostApplication extends Application<SpringConfig> {
    private static final Logger LOG = LoggerFactory.getLogger(MpostApplication.class);

    public static void main(String[] args) throws Exception {
        new MpostApplication().run(args);
    }

    @Override
    public String getName() {
        return "mpost-dropwizard-spring";
    }

    @Override
    public void initialize(Bootstrap<SpringConfig> bootstrap) {
        bootstrap.getObjectMapper().enable(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
    }

    @Override
    public void run(SpringConfig config, Environment environment) throws ClassNotFoundException {
        ApplicationContext appCtx = initSpring(config);
        loadResourceBeans(config.getResources(), appCtx, environment);
        loadHealthCheckBeans(config.getHealthChecks(), appCtx, environment);
        loadManagedBeans(config.getManaged(), appCtx, environment);
        loadLifeCycleBeans(config.getLifeCycles(), appCtx, environment);
        loadJerseyProviders(config.getJerseyProviders(), appCtx, environment);
        loadTasks(config.getTasks(), appCtx, environment);

        loadWebConfigs(environment, config, appCtx);

        enableJerseyFeatures(config.getEnabledJerseyFeatures(), environment);
        disableJerseyFeatures(config.getDisabledJerseyFeatures(), environment);
    }

    /**
     * Load filter, servlets or listeners for WebApplicationContext.
     */
    private void loadWebConfigs(Environment environment, SpringConfig config, ApplicationContext appCtx) throws ClassNotFoundException {
        // Load filters.
        loadFilters(config.getFilters(), environment);

        // Load servlet listener.
        environment.servlets().addServletListeners(new RestContextLoaderListener((XmlRestWebApplicationContext) appCtx));
    }

    /**
     * Load all filters.
     */
    @SuppressWarnings("unchecked")
    private void loadFilters(Map<String, FilterConfig> filters, Environment environment) throws ClassNotFoundException {
        if (filters != null) {
            for (Map.Entry<String, FilterConfig> filterEntry : filters.entrySet()) {
                FilterConfig filter = filterEntry.getValue();

                // Create filter holder
                FilterHolder filterHolder = new FilterHolder((Class<? extends Filter>) Class.forName(filter.getClazz()));

                // Set name of filter
                filterHolder.setName(filterEntry.getKey());

                // Set params
                if (filter.getParam() != null) {
                    for (Map.Entry<String, String> entry : filter.getParam().entrySet()) {
                        filterHolder.setInitParameter(entry.getKey(), entry.getValue());
                    }
                }

                // Add filter
                environment.getApplicationContext().addFilter(filterHolder, filter.getUrl(), EnumSet.of(DispatcherType.REQUEST));
            }
        }
    }

    private void loadResourceBeans(List<String> resources, ApplicationContext ctx, Environment env) {
        if (resources != null) {
            for (String resource : resources) {
                try {
                    env.jersey().register(ctx.getBean(resource));
                } catch (NoSuchBeanDefinitionException nsbde) {
                    logNoSuchBeanDefinitionException(nsbde);
                }
            }
        }

    }

    private void loadHealthCheckBeans(List<String> healthChecks, ApplicationContext ctx, Environment env) {
        if (healthChecks != null) {
            for (String healthCheck : healthChecks) {
                try {
                    HealthCheck healthCheckBean = (HealthCheck) ctx.getBean(healthCheck);
                    env.healthChecks().register(healthCheck, healthCheckBean);
                } catch (NoSuchBeanDefinitionException nsbde) {
                    logNoSuchBeanDefinitionException(nsbde);
                }
            }
        }
    }

    private void loadManagedBeans(List<String> manageds, ApplicationContext ctx, Environment env) {
        if (manageds != null) {
            for (String managed : manageds) {
                try {
                    env.getApplicationContext().manage(ctx.getBean(managed));
                } catch (NoSuchBeanDefinitionException nsbde) {
                    logNoSuchBeanDefinitionException(nsbde);
                }
            }
        }
    }

    private void loadLifeCycleBeans(List<String> lifeCycles, ApplicationContext ctx, Environment env) {
        if (lifeCycles != null) {
            for (String lifeCycle : lifeCycles) {
                try {
                    env.getApplicationContext().manage(ctx.getBean(lifeCycle));
                } catch (NoSuchBeanDefinitionException nsbde) {
                    logNoSuchBeanDefinitionException(nsbde);
                }
            }
        }
    }

    private void loadJerseyProviders(List<String> providers, ApplicationContext ctx, Environment env) {
        if (providers != null) {
            for (String provider : providers) {
                try {
                    env.jersey().register(ctx.getBean(provider));
                } catch (NoSuchBeanDefinitionException nsbde) {
                    logNoSuchBeanDefinitionException(nsbde);
                }
            }
        }
    }

    private void loadTasks(List<String> tasks, ApplicationContext ctx, Environment env) {
        if (tasks != null) {
            for (String task : tasks) {
                try {
                    env.admin().addTask((Task) ctx.getBean(task));
                } catch (NoSuchBeanDefinitionException nsbde) {
                    logNoSuchBeanDefinitionException(nsbde);
                }
            }
        }
    }

    private void enableJerseyFeatures(List<String> features, Environment env) {
        if (features != null) {
            for (String feature : features) {
                env.jersey().enable(feature);
            }
        }
    }

    private void disableJerseyFeatures(List<String> features, Environment env) {
        if (features != null) {
            for (String feature : features) {
                env.jersey().disable(feature);
            }
        }
    }

    private ApplicationContext initSpring(SpringConfig config) {
        String cfgLocationType = config.getConfigLocationsType();
        String[] configLocations = config.getConfigLocations().toArray(new String[config.getConfigLocations().size()]);

        return new XmlRestWebApplicationContext(configLocations, cfgLocationType, true, null);
    }

    private void logNoSuchBeanDefinitionException(NoSuchBeanDefinitionException nsbde) {
        if (LOG.isWarnEnabled()) {
            LOG.warn("Skipping missing Spring bean: ", nsbde);
        }
    }
}