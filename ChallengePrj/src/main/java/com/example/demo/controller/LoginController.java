package com.example.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	

	@RequestMapping("/loginform.do")
	public String loginForm( ) {
		return "loginForm";
	}

	@RequestMapping("/registerform.do")
	public String registerForm() {
		
		return "registerform";
	}
	
	@RequestMapping("/registerformkakao.do")
	public String registerFormKakao() {
		
		return "registerformkakao";
	}
	
	@RequestMapping("/registerformnaver.do")
	public String registerFormnaver() {
		
		return "registerformnaver";
	}
	
	
	
	@RequestMapping("/forget.do")
	public String forget() {
		return "forget";
	}
	
	@RequestMapping("/loginnaver")
	public String loginnaver( ) {
		return "loginnaver";
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
	@RequestMapping("/idchkkakao.do")
	public int idchkkakao(@RequestParam("memberid") String memberid) {
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
	
	@RequestMapping("/registerkakao.do")
	public String memberinsertkakao(MemberDto dto) {
		String rawPassword = dto.getMemberpw();
		String encPassword = bCryptPasswordEncoder.encode(rawPassword);
		dto.setMemberpw(encPassword);
		dto.setMemberrole("ROLE_USER");
		dto.setProvider("kakao");
		dto.setProviderId("kakao_"+dto.getMemberid());
		int res = biz.insert(dto);
		
		
		if(res  > 0 ){
			return "redirect:home_main";
		}else {
			return "redirect:registerformkakao.do";
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
			alertAndGo(response, "회원정보가 없습니다","forget.do");
			
			
			return "redirect:forget.do";
		}
		
	}
	
	@RequestMapping("/forgetpw.do")
	String forgetpw(String memberid, String memberemail, HttpServletResponse response) throws Exception {
		MemberDto res;
		int pwset;
		String pw;
		System.out.println(memberid);
		System.out.println(memberemail);
		res = biz.forgetPw(memberid, memberemail);
		System.out.println(res);
		if(res != null) {
			 pw = forgetPwMail.sendSimpleMessagePw(memberemail);
			 System.out.println("임시비밀번호 : " + pw);
			 pw = bCryptPasswordEncoder.encode(pw);
			 pwset = biz.pwUpdate(pw, memberid);
			 
			 alertAndGo(response, "이메일로 임시비밀번호를 발송했습니다!!","loginform.do");
			 
			 return "redirect:loginform.do"; 
			 
		}else {
			alertAndGo(response, "회원정보가 없습니다","forget.do");
			
			
			return "redirect:forget.do";
		}
	
	}

	@RequestMapping("/updatepwform")
	String updatePwFrom() {
		return "updatepwform";
	}
	
	@RequestMapping("/updatepw")
	String updatePw(String memberid, String memberpw, String memberpwnew,HttpServletResponse response) {
		MemberDto dto = biz.idChk(memberid);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if(encoder.matches(memberpw, dto.getMemberpw())) {
			biz.pwUpdate(memberid, encoder.encode(memberpwnew));
			return "redirect:mypage?memberid="+memberid;
		}else {
			alertAndGo(response, "비밀번호가 일치하지 않습니다 다시 시도해주세요", "updatepwform");
			
			return "redirect:updatepwform";
		}
		
		
		
	}
	
	public static void alertAndGo(HttpServletResponse response, String msg, String url) {
	    try {
	        response.setContentType("text/html; charset=utf-8");
	        PrintWriter w = response.getWriter();
	        w.write("<script>alert('"+msg+"');location.href='"+url+"';</script>");
	        w.flush();
	        w.close();
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}