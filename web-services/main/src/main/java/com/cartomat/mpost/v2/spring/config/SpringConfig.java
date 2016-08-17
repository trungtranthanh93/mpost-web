package com.cartomat.mpost.v2.spring.config;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.dropwizard.Configuration;
import org.hibernate.validator.constraints.NotEmpty;

import java.util.List;
import java.util.Map;

public class SpringConfig extends Configuration {
    public static final String CLASSPATH_CONFIG = "classpath";
    public static final String FILE_CONFIG = "file";

    @NotEmpty
    @JsonProperty
    private String configLocationsType;

    @NotEmpty
    @JsonProperty
    private List<String> configLocations;

    @NotEmpty
    @JsonProperty
    private List<String> resources;

    @JsonProperty
    private List<String> healthChecks;

    @JsonProperty
    private List<String> jerseyProviders;

    @JsonProperty
    private List<String> managed;

    @JsonProperty
    private List<String> lifeCycles;

    @JsonProperty
    private List<String> tasks;

    @JsonProperty
    private List<String> disabledJerseyFeatures;

    @JsonProperty
    private List<String> enabledJerseyFeatures;

    @JsonProperty
    private Map<String, FilterConfig> filters;

    public List<String> getConfigLocations() {
        return configLocations;
    }

    public List<String> getResources() {
        return resources;
    }

    public List<String> getHealthChecks() {
        return healthChecks;
    }

    public List<String> getJerseyProviders() {
        return jerseyProviders;
    }

    public List<String> getManaged() {
        return managed;
    }

    public List<String> getLifeCycles() {
        return lifeCycles;
    }

    public List<String> getDisabledJerseyFeatures() {
        return disabledJerseyFeatures;
    }

    public List<String> getEnabledJerseyFeatures() {
        return enabledJerseyFeatures;
    }

    public List<String> getTasks() {
        return tasks;
    }

    public Map<String, FilterConfig> getFilters() {
        return filters;
    }

    public void setFilters(Map<String, FilterConfig> filters) {
        this.filters = filters;
    }

    public String getConfigLocationsType() {
        return configLocationsType;
    }

    public void setConfigLocationsType(String configLocationsType) {
        this.configLocationsType = configLocationsType;
    }

}
