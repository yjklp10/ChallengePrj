package com.example.demo.dao;

import java.util.List;

import com.example.demo.dto.MainDetailDto;

public interface MainDetailDao {

	String NAMESPACE = "MainDetail.";
	
	public List<MainDetailDto> monthbest();
	public List<MainDetailDto> challenge_hot();
	public List<MainDetailDto> challenge_new();
	public List<MainDetailDto> challenge_list(String category);
	
}
