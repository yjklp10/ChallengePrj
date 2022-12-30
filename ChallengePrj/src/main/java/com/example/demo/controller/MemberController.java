package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.biz.MemberBiz;

@Controller
public class MemberController {
	
	@Autowired
	private MemberBiz biz;
	
	
	@ResponseBody
	@RequestMapping("idchk.do")
	public int idchk(@RequestParam("memberid") String memberid) {
		int res = 0;
		
		res = biz.idChk(memberid);
		
		return res;
	}

}
