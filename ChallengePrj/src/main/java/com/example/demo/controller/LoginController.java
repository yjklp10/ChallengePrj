package com.example.demo.controller;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.biz.MemberBiz;
import com.example.demo.config.auth.PrincipalDetails;
import com.example.demo.dto.MemberDto;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class LoginController {

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	private MemberBiz biz;
	
	@RequestMapping("/test/login")
	public @ResponseBody String testLogin(Authentication authentication, @AuthenticationPrincipal PrincipalDetails userDetails) {
		System.out.println("/test/login ====================");
		System.out.println("userDetails"+ userDetails.getMemberDto());
		
		
		return "세션정보확인하기";
	}
	

	@RequestMapping("/loginform.do")
	public String loginForm() {
		return "loginForm";
	}

	@RequestMapping("/registerform.do")
	public String registerForm() {
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
		String rawPassword = dto.getMemberpw();
		String encPassword = bCryptPasswordEncoder.encode(rawPassword);
		dto.setMemberpw(encPassword);
		dto.setMemberrole("ROLE_USER");
		int res = biz.insert(dto);
		
		
		if(res  > 0 ){
			return "redirect:loginform.do";
		}else {
			return "redirect:registerform.do";
		}
		
	}
	
	
	
	

}
