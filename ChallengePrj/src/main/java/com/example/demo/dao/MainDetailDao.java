package com.example.demo.dao;

import java.util.List;

import com.example.demo.dto.Testchallenge;

public interface MainDetailDao {

	String NAMESPACE = "com.example.demo.mapper.ChallengeMapper.";
	
	public List<Testchallenge> challenge_hot();
	public List<Testchallenge> challenge_new();
	public List<Testchallenge> challenge_onofflist(String onoffchoice);
	public List<Testchallenge> challenge_categorylist(String category);
	public List<Testchallenge> challenge_search(String keyword);

	
}
