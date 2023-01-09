package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.biz.MemberBiz;
import com.example.demo.dto.MemberDto;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class LoginController {

	@Autowired
	private MemberBiz biz;

	
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}

	@RequestMapping("/registerform.do")
	public String register() {
		return "registerform";
	}
	
	@RequestMapping("/forget.do")
	public String forget() {
		return "forget";
	}
	

	@ResponseBody
	@RequestMapping("/idchk.do")
	public int idchk(@RequestParam("memberid") String memberid) {
		MemberDto res;
		System.out.println(memberid);
		res = biz.idChk(memberid);
		
		return (res != null)?1:0;
	}
	
	@ResponseBody
	@RequestMapping("/nickchk.do")
	public int nickchk(@RequestParam("membernick") String membernick) {
		MemberDto res;
		System.out.println(membernick);
		res  = biz.nickChk(membernick);
		
		
		return (res != null)?1:0;
	}
	
	@RequestMapping("/register.do")
	public String memberinsert(MemberDto dto) {
		int res = biz.insert(dto);
		
		if(res  > 0 ){
			return "redirect:login.do";
		}else {
			return "redirect:registerform.do";
		}
		
	}
	

}
