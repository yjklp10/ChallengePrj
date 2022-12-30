package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {


	
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}

	@RequestMapping("/register.do")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/forget.do")
	public String forget() {
		return "forget";
	}
	
	
}
