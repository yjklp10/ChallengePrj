package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/detail")
	public String detail() {
		return "detail";
	}
	
	@RequestMapping("payment")
	public String payment() {
		return "payment";
	}
}
