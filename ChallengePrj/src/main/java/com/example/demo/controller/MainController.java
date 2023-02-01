package com.example.demo.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.example.demo.biz.MainDetailBiz;
import com.example.demo.dto.Testchallenge;




@Controller
public class MainController {
	@RequestMapping("/home_main")
	public String home_main() {
		return "home_main";
		}

	@RequestMapping("/detaillist")
	public String detaillist() {
		return "detaillist";
		}
	
	@RequestMapping("/introduction")
	public String introduction() {
		return "0_introduction";
		}
	
	@RequestMapping("/guide")
	public String guide() {
		return "1_guide";
		}
	
	@RequestMapping("/event")
	public String event() {
		return "2_event";
		}
	
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	
	@Autowired
	private MainDetailBiz biz;

	
	@GetMapping("/home_main")
    public String mainlist(Model model) {
		
		List<Testchallenge> hotRes = biz.challenge_hot();
		List<Testchallenge> newRes = biz.challenge_new();
		
		model.addAttribute("hotRes", hotRes);
		model.addAttribute("newRes", newRes);
		
		return "home_main";

        }
	
	@GetMapping("/detaillist")
    public String detaillist(Model model) {
		
		List<Testchallenge> newRes = biz.challenge_new();
		
		model.addAttribute("newRes", newRes);
		
		return "detaillist";
		
        }
	
	
	@RequestMapping("/detaillist_search")
    public String detaillist_search(String keyword, Model model) {
		
		List<Testchallenge> newRes = biz.challenge_search(keyword);
		
		model.addAttribute("newRes", newRes);
		
		return "getSearchList";
		
        }
      
	
	@RequestMapping("/detaillist_hot")
    public String detaillist_hot(Model model) {
		
		List<Testchallenge> hotRes = biz.challenge_hot();
		
		model.addAttribute("hotRes", hotRes);
		
		return "detaillist_hot";

        }
	

	
	@RequestMapping("/detaillist_onofflist")
    public String detaillist_onofflist(String onoffchoice, Model model) {
		
		List<Testchallenge> newRes = biz.challenge_onofflist(onoffchoice);
		
		model.addAttribute("newRes", newRes);
		
		return "detaillist_onofflist";
		
        }
	
	
	@RequestMapping("/detaillist_category")
    public String detaillist_category(String category, Model model) {
		
		List<Testchallenge> newRes = biz.challenge_categorylist(category);
		
		model.addAttribute("newRes", newRes);
		
		return "detaillist_category";
		
        }
	
 
}


