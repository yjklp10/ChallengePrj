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
	public List<MainDetailDto> monthbest() {
		return monthbest();
	}

	@Override
	public List<MainDetailDto> challenge_hot() {
		return challenge_hot();
	}

	@Override
	public List<MainDetailDto> challenge_new() {
		return challenge_new();
	}

	@Override
	public List<MainDetailDto> challenge_list(String category) {
		return challenge_list(category);
	}

	
	
}
