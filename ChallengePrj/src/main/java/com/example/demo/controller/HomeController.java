package com.example.demo.controller;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.biz.FileUploadbiz;
import com.example.demo.biz.MemberBiz;
import com.example.demo.biz.PointBiz;
import com.example.demo.dto.MoneyDto;
import com.example.demo.dto.PaymentDto;
import com.example.demo.dto.PointDto;
import com.example.demo.dto.makingChallengeDto;


@Controller
public class HomeController {

	@Autowired
	private MemberBiz memberBiz;
	
	@Autowired
	private PointBiz biz;

	
	@Autowired
	private FileUploadbiz service;
    
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	@RequestMapping("/makingChallengeStart")
	public String makingChallengeStart() {
		return "makingChallengeStart";
	}
	
	
	@RequestMapping("/detail")
	public String detail() {
		return "detail";
	}
	
	

	@RequestMapping("/makingChallengeOnLine")
	public String makingChallengeOnLine(){
		return"makingChallengeOnLine";
	}
	@RequestMapping("/makingChallengeOffLine")
	public String makingChallengeOffLine(){
		return"makingChallengeOffLine";
	}
	
	@RequestMapping("/mypage")
	public String mypage(Model model) {
		Authentication A = SecurityContextHolder.getContext().getAuthentication();
    	String memberid = A.getName();
    	
    	MoneyDto dto = new MoneyDto();
    	dto.setMemberid(memberid);
    
		biz.insertMyinfo(dto);		
		model.addAttribute("dto", biz.selectMyinfo(memberid));

		model.addAttribute("memberdto", memberBiz.idChk(memberid));

		return "mypage";
	}
	
	@RequestMapping("/update")
	public String update(MoneyDto dto) {
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
	public String insert(PointDto dto){
		int res= biz.insert(dto);
		
		if(res>0) {
			biz.updatepoint(dto);
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
    @RequestMapping("/confirmopen")
   public String  confirmopen(Model model){
    	PaymentDto dto2=new PaymentDto();
    	Authentication A = SecurityContextHolder.getContext().getAuthentication();
        String memberid=A.getName();
        dto2.setMemberid(memberid);
    	model.addAttribute("list",service.challengeList(dto2));
    	return "confirm";
    }
}

