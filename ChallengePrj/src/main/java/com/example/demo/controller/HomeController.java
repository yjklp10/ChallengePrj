package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.biz.PointBiz;
import com.example.demo.dto.MemberDto;
import com.example.demo.dto.MoneyDto;
import com.example.demo.dto.PointDto;

@Controller
public class HomeController {


	@Autowired
	private PointBiz biz;


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
	public String mypage(Model model,String memberid) {
		model.addAttribute("dto", biz.selectMyinfo(memberid));
		return "mypage";
	}
	
	@RequestMapping("/update")
	public String updateRes(MoneyDto dto) {
		int res = biz.update(dto);
		
		if(res>0) {
	
			return "redirect:mypage";
		}else {
			return "redirect:mypage";
		}
	}
	
	@RequestMapping("/point")
	public String point(Model model,String memberid) {
		model.addAttribute("dto", biz.selectMyinfo(memberid));
		return "point";
	}
	
	@RequestMapping("/point.do")
	public String insertRes(Model model,PointDto dto) {
		int res= biz.insert(dto);
		
		if(res>0) {
			model.addAttribute("msg", "신청완료");
			model.addAttribute("url", "mypage.jsp");
			return "redirect";
		}else {
			return "redirect";
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

