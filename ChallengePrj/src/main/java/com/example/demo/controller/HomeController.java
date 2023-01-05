package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {



	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/detail")
	public String detail() {
		return "detail";
	}
	
	
	
	@RequestMapping("/makingChallenge")
	public String makingChallenge(){
		return"makingChallengeForm";
	}
	
	

	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage";
	}
	
	@RequestMapping("/point")
	public String point() {
		return "point";
	}

	@RequestMapping("/manager")
	public String manager() {
		return "manager";
	}
	
	
	@RequestMapping("/ex")
	public String ex() {
		return "exwrite";
	}

}

