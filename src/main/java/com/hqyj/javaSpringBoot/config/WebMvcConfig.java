package com.hqyj.javaSpringBoot.config;

import com.hqyj.javaSpringBoot.filter.RequestParamaFilter;
import com.hqyj.javaSpringBoot.interceptor.RequestViewInterceptor;
import org.apache.catalina.connector.Connector;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.autoconfigure.web.servlet.WebMvcAutoConfiguration;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.server.ServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
@Configuration
@AutoConfigureAfter({WebMvcAutoConfiguration.class})
public class WebMvcConfig implements WebMvcConfigurer {

    @Autowired
    private RequestViewInterceptor requestViewInterceptor;
    @Bean
    public Connector connector(){
        Connector connector=new Connector();
        connector.setPort(80);
        connector.setScheme("http");
        return connector;
    }
    @Bean
    public ServletWebServerFactory webServerFactory(){
        TomcatServletWebServerFactory tomcat=new TomcatServletWebServerFactory();
        tomcat.addAdditionalTomcatConnectors(connector());
        return tomcat;
    }


    @Bean
    public FilterRegistrationBean<RequestParamaFilter> register() {
        FilterRegistrationBean<RequestParamaFilter> register =
                new FilterRegistrationBean<RequestParamaFilter>();
        register.setFilter(new RequestParamaFilter());
        return register;
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(requestViewInterceptor).addPathPatterns("/**");
    }
}
