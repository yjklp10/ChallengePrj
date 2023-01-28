package com.example.demo.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.biz.ForgetPwMailBizImpl;
import com.example.demo.biz.MemberBiz;
import com.example.demo.biz.RegisterMailBizImpl;
import com.example.demo.config.auth.PrincipalDetails;
import com.example.demo.config.recaptcha.VerifyRecaptcha;
import com.example.demo.dto.MemberDto;

import lombok.RequiredArgsConstructor;


@Controller
@RequiredArgsConstructor
public class LoginController {

	@Autowired
    RegisterMailBizImpl registerMail;
	
	@Autowired
	ForgetPwMailBizImpl forgetPwMail;
	
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
	public String loginForm( ) {
		return "loginForm";
	}

	@RequestMapping("/registerform.do")
	public String registerForm() {
		
		return "registerform";
	}
	
	public String registerFormGoogle(Model model, MemberDto dto) {
		model.addAttribute("memberDto",dto);
		
		return "registerformgoogle";
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

	
	@PostMapping("login/mailConfirm")
	@ResponseBody
	String mailConfirm(@RequestParam("email") String email) throws Exception {

	   String code = registerMail.sendSimpleMessage(email);
	   System.out.println("인증코드 : " + code);
	   return code;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "VerifyRecaptcha", method = RequestMethod.POST)
	public int VerifyRecaptcha(HttpServletRequest request) {
	    VerifyRecaptcha.setSecretKey("6LcmDiokAAAAAIMRecG-8B6QTXsclYdquiGpfR11");
	    String gRecaptchaResponse = request.getParameter("recaptcha");
	    try {
	       if(VerifyRecaptcha.verify(gRecaptchaResponse))
	          return 0; // 성공
	       else return 1; // 실패
	    } catch (Exception e) {
	        e.printStackTrace();
	        return -1; //에러
	    }
	}
	
	@RequestMapping("/forgetid.do")
	String forgetid(String membername, String memberemail, Model model, HttpServletResponse response) {
		MemberDto res;
		String id;
		res = biz.forgetId(membername, memberemail);
		if(res != null) {
			id = res.getMemberid().substring(0,res.getMemberid().length()-3);
			id = id+"***";
			model.addAttribute("memberid",id);
			
			return "forgetid";
		}else {
			alert(response, "회원정보가 없습니다");
			
			
			return "redirect:forget.do";
		}
		
	}
	
	@RequestMapping("/forgetpw.do")
	String forgetpw(String memberid, String membereamil) throws Exception {
		MemberDto res;
		String pw;
		
		res = biz.forgetPw(memberid, membereamil);
		
		if(res != null) {
			 pw = forgetPwMail.sendSimpleMessagePw(membereamil);
			   System.out.println("임시비밀번호 : " + pw);
			   pw = bCryptPasswordEncoder.encode(pw);
			   
		}
		
		return null;
	}

	
	
	//알림창만 띄우기
	public static void alert(HttpServletResponse response, String msg) {
	    try {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter w = response.getWriter();
			w.write("<script>alert('"+msg+"');history.go(-1);</script>");
			w.flush();
			w.close();
	    } catch(Exception e) {
			e.printStackTrace();
	    }
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}