//package com.example.demo.controller;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import com.example.demo.biz.PaymentBiz;
//import com.example.demo.dto.CommentDto;
//import com.example.demo.dto.PaymentDto;
//import com.example.demo.dto.Testchallenge;
//
//@Controller
//public class PaymentController {
//	
//	@Autowired
//	private PaymentBiz paymentBiz;
//	
//	
//	@GetMapping(value="/payment")
//	public String paymentView(PaymentDto payment, Model model) {
//		
//		
//		model.addAttribute("payment", paymentBiz.payment(payment.getPaynum()));
//		
//		
//		return "payment";
//	}
//
//}
