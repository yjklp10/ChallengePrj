package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;

@Controller
@SpringBootApplication
public class BootTestApplication {

	public static void main(String[] args) {
		System.out.println("Run");
		SpringApplication.run(BootTestApplication.class, args);
	}
}