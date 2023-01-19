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
import com.example.demo.dto.MainDetailDto;



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

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	private MainDetailBiz biz;
	
	@GetMapping("/home_main")
    public String mainlist(Model model) {
		
		List<MainDetailDto> hotRes = biz.challenge_hot();
		List<MainDetailDto> newRes = biz.challenge_new();
		
		model.addAttribute("hotRes", hotRes);
		model.addAttribute("newRes", newRes);
		
		return "home_main";

        }
	
	@GetMapping("/detaillist")
    public String detaillist(Model model) {
		
		List<MainDetailDto> hotRes = biz.challenge_hot();
		List<MainDetailDto> newRes = biz.challenge_new();
		
		model.addAttribute("hotRes", hotRes);
		model.addAttribute("newRes", newRes);
		
		return "detaillist";

        }
	
/*
	@RequestMapping("/bread.do")
    public String detaillist_bread(String category, Model model) {
		
		List<MainDetailDto> hotRes = biz.detail_hit(category);
		List<MainDetailDto> newRes = biz.detail_new(category);
		
		model.addAttribute("hotRes", hotRes);
		model.addAttribute("newRes", newRes);
		
		return "/joara/1_0_recipe_list_body";
		
        }
	
	@RequestMapping("/cake.do")
    public String detaillist_cake(String category, Model model) {
		
		List<MainDetailDto> hotRes = biz.detail_hit(category);
		List<MainDetailDto> newRes = biz.detail_new(category);
		
		model.addAttribute("hotRes", hotRes);
		model.addAttribute("newRes", newRes);
		
		return "/joara/1_1_recipe_cake";
		
        }
	
	@RequestMapping("/sandwich.do")
    public String detaillist_sandwich(String category, Model model) {
		
		List<MainDetailDto> hotRes = biz.detail_hit(category);
		List<MainDetailDto> newRes = biz.detail_new(category);
		
		model.addAttribute("hotRes", hotRes);
		model.addAttribute("newRes", newRes);
		
		return "/joara/1_1_recipe_sandwich";
		
        }
	
	@RequestMapping("/snack.do")
    public String detaillist_snack(String category, Model model) {
		
		List<MainDetailDto> hotRes = biz.detail_hit(category);
		List<MainDetailDto> newRes = biz.detail_new(category);
		
		model.addAttribute("hotRes", hotRes);
		model.addAttribute("newRes", newRes);
		return "/joara/1_1_recipe_snack";
		
        }
	
	@RequestMapping("/macaron.do")
    public String detaillist_makaron(String category, Model model) {
		
		List<MainDetailDto> hotRes = biz.detail_hit(category);
		List<MainDetailDto> newRes = biz.detail_new(category);
		
		model.addAttribute("hotRes", hotRes);
		model.addAttribute("newRes", newRes);
		
		return "/joara/1_1_recipe_macaron";
		
        }
	
	@RequestMapping("/etc2.do")
    public String detaillist_etc2(String category, Model model) {
		
		List<MainDetailDto> hotRes = biz.detail_hit(category);
		List<MainDetailDto> newRes = biz.detail_new(category);
		
		model.addAttribute("hotRes", hotRes);
		model.addAttribute("newRes", newRes);
		
		return "/joara/1_1_recipe_etc2";
		
        }
	
	@RequestMapping("/rankbest.do")
    public String detail_rankbest(Model model) {
		
		List<MainDetailDto> rankRes = biz.detail_rankbest();
		
		model.addAttribute("rankRes", rankRes);
		
		return "/joara/3_rank_recommend";
		
        }
	
	@RequestMapping("/commentbest.do")
    public String detail_commentbest(Model model) {
		
		List<MainDetailDto> rankRes = biz.detail_commentbest();
		
		model.addAttribute("rankRes", rankRes);
		
		return "/joara/4_rank_reply";
		
        }
	
	@RequestMapping("/readbest.do")
    public String detail_readbest(Model model) {
		
		List<MainDetailDto> rankRes = biz.detail_readbest();
		
		model.addAttribute("rankRes", rankRes);
		
		return "/joara/5_rank_hits";
		
        }

}

*/
}