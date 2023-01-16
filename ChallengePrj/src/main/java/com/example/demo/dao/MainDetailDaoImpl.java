package com.example.demo.dao;

import java.util.ArrayList;
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
		List<MainDetailDto> challenge_hot = new ArrayList<MainDetailDto>();
		
		try {
			challenge_hot = sqlSession.selectList(NAMESPACE+"challenge_hot");
		} catch (Exception e) {
			System.out.println("[error] : challenge_hot");
			e.printStackTrace();
		}
		return challenge_hot();
	}

	@Override
	public List<MainDetailDto> challenge_new() {
		List<MainDetailDto> challenge_new = new ArrayList<MainDetailDto>();
		
		try {
			challenge_new = sqlSession.selectList(NAMESPACE+"challenge_new");
		} catch (Exception e) {
			System.out.println("[error] : challenge_new");
			e.printStackTrace();
		}
		
		return challenge_new();
	}

	@Override
	public List<MainDetailDto> challenge_onofflist(String onoffchoice) {
		
		List<MainDetailDto> challenge_onofflist = new ArrayList<MainDetailDto>();
		
		try {
			challenge_onofflist = sqlSession.selectList(NAMESPACE+"challenge_onofflist", onoffchoice);
		} catch (Exception e) {
			System.out.println("[error] : detail_new");
			e.printStackTrace();
		}
		return challenge_onofflist;
	}
	
	@Override
	public List<MainDetailDto> challenge_categorylist(String category) {
		
	List<MainDetailDto> challenge_categorylist = new ArrayList<MainDetailDto>();
		
		try {
			challenge_categorylist = sqlSession.selectList(NAMESPACE+"challenge_categorylist", category);
		} catch (Exception e) {
			System.out.println("[error] : detail_new");
			e.printStackTrace();
		}

		return challenge_categorylist(category);
	}

	
	
}
