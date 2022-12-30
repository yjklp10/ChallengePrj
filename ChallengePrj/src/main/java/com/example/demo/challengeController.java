package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.biz.MakingChallengeBiz;
import com.example.demo.dto.makingChallengeDto;

@Controller
public class challengeController {
	
	
	
	private MakingChallengeBiz makingChallengeBiz;
	
	
	
	//신호준
	@GetMapping("/chdetail")
	public String challengeView(int challengeno, Model model) {
		
		makingChallengeDto challenge = makingChallengeBiz.getDetail(challengeno);
		
		model.addAttribute("challenge", challenge);
		
		return "board/challdetail";
	}
}
