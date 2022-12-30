package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@ResponseBody
	@RequestMapping("idchk.do")
	public int idchk(@RequestParam("memberid") String memberid) {
		int res = 0;
		
		return res;
	}
}
