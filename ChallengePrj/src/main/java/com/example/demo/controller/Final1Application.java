package com.example.demo.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.example.demo.mybatis.mapper.ChallengeMapper"})
public class Final1Application {

	public static void main(String[] args) {
		SpringApplication.run(Final1Application.class, args);
	}

}
