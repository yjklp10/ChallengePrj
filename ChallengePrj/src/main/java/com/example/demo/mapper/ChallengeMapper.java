package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.makingChallengeDto;
@Repository
@Mapper
public interface ChallengeMapper {
	public makingChallengeDto getDetail(int challengeno);
}
