package com.example.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.example.demo.biz.PaymentBiz;
import com.example.demo.dto.PaymentDto;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentBiz paymentBiz;
	
	
	@PostMapping(value="/success")
	public String Point(@RequestBody PaymentDto payment, Model model) {
		
		
		model.addAttribute("payment", paymentBiz.payment(payment.getPaynum()));
		
		return "mypage";
	}

}
