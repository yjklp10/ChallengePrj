package com.example.demo;

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
	
	@RequestMapping("payment")
	public String payment() {
		return "payment";
	}
	@RequestMapping("/makingChallenge")
	public String makingChallenge(){
		return"makingChallengeForm";
	}
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
}