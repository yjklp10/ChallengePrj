package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.PaymentDto;
@Repository
@Mapper
public interface PaymentMapper {

	public PaymentDto payment(int paynum);
}
