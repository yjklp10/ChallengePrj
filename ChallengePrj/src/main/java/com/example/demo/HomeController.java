package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	/*

	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage";
	}
	
	@RequestMapping("/point")
	public String point() {
		return "point";
	}
	*/

	@RequestMapping("/home_main")
	public String home_main() {
		return "home_main";
	}
	

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
	@RequestMapping("/challdetail")
	public String challdetail() {
		return "challdetail";
	}

	
	@RequestMapping("/manager")
	public String manager() {
		return "manager";
	}
	
	
	@RequestMapping("/ex")
	public String ex() {
		return "ex";
	}

}

