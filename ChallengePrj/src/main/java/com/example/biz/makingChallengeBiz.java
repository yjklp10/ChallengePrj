package com.example.biz;

import org.springframework.stereotype.Service;

import com.example.dto.makingChallengeDto;

@Service
public interface makingChallengeBiz {
	public void writeEx(makingChallengeDto dto);
}
