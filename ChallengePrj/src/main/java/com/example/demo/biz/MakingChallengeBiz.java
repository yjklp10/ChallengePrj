package com.example.demo.biz;



import com.example.demo.dto.makingChallengeDto;


public interface MakingChallengeBiz {
	public void writeEx(makingChallengeDto dto);
	
	//신호준
	public makingChallengeDto getDetail(int challengeno);
}
