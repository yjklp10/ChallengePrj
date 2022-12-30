package com.example.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dto.makingChallengeDto;
import com.example.mybatis.mapper.ChallengeMapper;

@Service
public class MakingChallengeBizImple implements MakingChallengeBiz{

	@Autowired
	private ChallengeMapper mapper;
	
	
	@Override
	public void writeEx(makingChallengeDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public makingChallengeDto getDetail(int challengeno) {
		return mapper.getDetail(challengeno);
	}

}
