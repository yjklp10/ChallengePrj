package com.example.demo.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.Testchallenge;
import com.example.demo.dto.makingChallengeDto;
import com.example.demo.mapper.ChallengeMapper;

@Service
public class MakingChallengeBizImple implements MakingChallengeBiz{

	@Autowired
	private ChallengeMapper mapper;
	
	
	@Override
	public void writeEx(makingChallengeDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Testchallenge getDetail(int challengeno) {
		return mapper.getDetail(challengeno);
	}

}
