package com.example.demo.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.biz.CommentBiz;
import com.example.demo.biz.MakingChallengeBiz;
import com.example.demo.dto.CommentDto;
import com.example.demo.dto.Testchallenge;
import com.example.demo.dto.makingChallengeDto;

@Controller
public class challengeController {
	
	private static final Logger logger= LoggerFactory.getLogger(challengeController.class);
	
	@Autowired
	private MakingChallengeBiz makingChallengeBiz;
	
	@Autowired
	private CommentBiz commentBiz;
	
	
	
	//신호준
	@GetMapping(value="/chdetail")
	public String challengeView(Testchallenge challenge, Model model) {
		logger.info("challenge");
		
		model.addAttribute("challenge", makingChallengeBiz.getDetail(challenge.getChallengeno()));
		
		List<CommentDto> comment = commentBiz.commentListService(challenge.getChallengeno());
		
		model.addAttribute("comment",comment);
		return "challdetail";
	}
	
	@PostMapping(value="/commentwrite")
	public String replyWrite(CommentDto comment, RedirectAttributes rttr) throws Exception {
		logger.info("reply Write");
		
		commentBiz.commentInsertService(comment);
		
		rttr.addAttribute("challenge", comment.getChallengeno());
		
		
		return "redirect:/chdetail";
	}
}
