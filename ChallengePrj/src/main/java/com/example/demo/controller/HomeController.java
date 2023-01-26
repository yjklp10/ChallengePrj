package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.biz.PointBiz;
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
	public String mypage(Model model,String memberid,MoneyDto dto) {
		biz.insertMyinfo(dto);
		model.addAttribute("dto", biz.selectMyinfo(memberid));
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
	
	@RequestMapping("/manager2")
	public String list(Model model) {
		model.addAttribute("list", biz.selectList());
		return "manager";
	}
	
	@RequestMapping("/manager.do")
	public String updatestatus(PointDto dto){
		int res = biz.updatestatus(dto);
		
		if(res>0) {
			return "redirect:manager2";
		}else {
			return "redirect:manager2";
		}
	}
	
	@RequestMapping("/ex")
	public String ex() {
		return "exwrite";
	}
    @RequestMapping("/confirmopen")
    public String  confirmopen(){
    	return "confirm";
    }
}

