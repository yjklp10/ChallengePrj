package com.example.demo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.MainDetailDto;


@Repository
public class MainDetailDaoImpl implements MainDetailDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;


	@Override
	public List<MainDetailDto> challenge_hot() {
		return challenge_hot();
	}

	@Override
	public List<MainDetailDto> challenge_new() {
		return challenge_new();
	}

	@Override
	public List<MainDetailDto> challenge_onofflist(String onoffchoice) {
		return challenge_onofflist(onoffchoice);
	}
	
	@Override
	public List<MainDetailDto> challenge_categorylist(String category) {
		return challenge_categorylist(category);
	}

	
	
}
