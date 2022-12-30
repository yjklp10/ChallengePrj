package com.example.demo.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.makingChallengeDto;
import com.example.demo.mapper.ChallengeMapper;

@Service
public class MakingChallengeBizImple implements MakingChallengeBiz{

	@Autowired
	private ChallengeMapper dao;
	
	
	@Override
	public void writeEx(makingChallengeDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public makingChallengeDto getDetail(int challengeno) {
		return dao.getDetail(challengeno);
	}

}
