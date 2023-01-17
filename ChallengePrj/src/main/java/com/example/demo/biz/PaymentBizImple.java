package com.example.demo.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.example.demo.dto.PaymentDto;
import com.example.demo.mapper.PaymentMapper;
@Repository
@Service
public class PaymentBizImple implements PaymentBiz{

	@Autowired
	private PaymentMapper mappers;
	
	@Override
	public PaymentDto payment(int paynum) {
		return mappers.payment(paynum);
	}

}
