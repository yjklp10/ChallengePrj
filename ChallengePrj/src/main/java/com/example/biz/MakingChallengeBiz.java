package com.example.biz;



import com.example.dto.makingChallengeDto;


public interface MakingChallengeBiz {
	public void writeEx(makingChallengeDto dto);
	
	//신호준
	public makingChallengeDto getDetail(int challengeno);
}
