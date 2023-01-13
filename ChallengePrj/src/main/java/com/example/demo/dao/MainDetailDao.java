package com.example.demo.dao;

import java.util.List;

import com.example.demo.dto.MainDetailDto;

public interface MainDetailDao {

	String NAMESPACE = "MainDetail.";
	
	public List<MainDetailDto> challenge_hot();
	public List<MainDetailDto> challenge_new();
	public List<MainDetailDto> challenge_onofflist(String onoffchoice);
	public List<MainDetailDto> challenge_categorylist(String category);
	
}
