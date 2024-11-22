package com.example.demo.config;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@Configuration
@EntityScan(basePackages = {"com.example.demo.model", "com.example.demo.dtos"})
@ComponentScan("com.example.demo.service")
@EnableJpaRepositories("com.example.demo.repository")
@EnableTransactionManagement
public class DomainConfig {
}