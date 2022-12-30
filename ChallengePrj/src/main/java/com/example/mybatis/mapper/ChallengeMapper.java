package com.example.mybatis.mapper;

import org.springframework.stereotype.Repository;

import com.example.demo.dto.makingChallengeDto;
@Repository
public interface ChallengeMapper {

	//신호준
	public abstract makingChallengeDto getDetail(int num);
}
