package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.biz.MakingChallengeBiz;
import com.example.demo.dto.Testchallenge;
import com.example.demo.dto.makingChallengeDto;

@Controller
public class challengeController {
	
	
	@Autowired
	private MakingChallengeBiz makingChallengeBiz;
	
	
	
	//신호준
	@GetMapping(value="/chdetail")
	public String challengeView(int challengeno, Model model) {
		
		Testchallenge challenge = makingChallengeBiz.getDetail(challengeno);
		
		model.addAttribute("challenge", challenge);
		
		return "challdetail";
	}
	
	
}
