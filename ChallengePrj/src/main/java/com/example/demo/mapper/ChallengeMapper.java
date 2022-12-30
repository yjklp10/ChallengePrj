package com.example.demo.mapper;

import org.springframework.stereotype.Repository;

import com.example.demo.dto.makingChallengeDto;
@Repository
public interface ChallengeMapper {
	public makingChallengeDto getDetail(int challengeno);
}
