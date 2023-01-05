package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.biz.PointBiz;
import com.example.demo.dto.PointDto;

@Controller
public class HomeController {

	@Autowired
	private PointBiz biz;
	

	@RequestMapping("/main")
	public String main() {
		return "main";
	}
	

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
	
	@RequestMapping("/point.do")
	public String insertRes(PointDto dto) {
		int res= biz.insert(dto);
		
		if(res>0) {
			return "redirect:mypage";
		}else {
			return "redirect:point";
		}	
	}

	@RequestMapping("/manager")
	public String list(Model model) {
		model.addAttribute("list", biz.selectList());
		return "manager";
	}
	
	@RequestMapping("/ex")
	public String ex() {
		return "exwrite";
	}

}

