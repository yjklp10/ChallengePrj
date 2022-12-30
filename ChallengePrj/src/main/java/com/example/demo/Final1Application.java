package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages="com.example.deom.mybatis.mapper.ChallenegMapper")
public class Final1Application {

	public static void main(String[] args) {
		SpringApplication.run(Final1Application.class, args);
	}

}
