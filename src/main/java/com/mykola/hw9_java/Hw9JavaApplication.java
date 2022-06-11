package com.mykola.hw9_java;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class Hw9JavaApplication  extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(Hw9JavaApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(Hw9JavaApplication.class);
    }
}
