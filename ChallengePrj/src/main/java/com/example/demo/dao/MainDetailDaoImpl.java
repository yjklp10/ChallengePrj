package com.example.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.Testchallenge;


@Repository
public class MainDetailDaoImpl implements MainDetailDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;


	
	@Override
	public List<Testchallenge> challenge_hot() {
		List<Testchallenge> challenge_hot = new ArrayList<Testchallenge>();
		
		try {
			challenge_hot = sqlSession.selectList(NAMESPACE+"challenge_hot");
		} catch (Exception e) {
			System.out.println("[error] : challenge_hot");
			e.printStackTrace();
		}
		return challenge_hot;
	}

	
	@Override
	public List<Testchallenge> challenge_new() {
		List<Testchallenge> challenge_new = new ArrayList<Testchallenge>();
		
		try {
			challenge_new = sqlSession.selectList(NAMESPACE+"challenge_new");
		} catch (Exception e) {
			System.out.println("[error] : challenge_new");
			e.printStackTrace();
		}
		
		return challenge_new;
	}
	
	
	@Override
	public List<Testchallenge> challenge_onofflist(String onoffchoice) {
		
		List<Testchallenge> challenge_onofflist = new ArrayList<Testchallenge>();
		
		try {
			challenge_onofflist = sqlSession.selectList(NAMESPACE+"challenge_onofflist", onoffchoice);
		} catch (Exception e) {
			System.out.println("[error] : challenge_onofflist");
			e.printStackTrace();
		}
		return challenge_onofflist;
	}
	
	@Override
	public List<Testchallenge> challenge_categorylist(String category) {
		
	List<Testchallenge> challenge_categorylist = new ArrayList<Testchallenge>();
		
		try {
			challenge_categorylist = sqlSession.selectList(NAMESPACE+"challenge_categorylist", category);
		} catch (Exception e) {
			System.out.println("[error] : challenge_categorylist");
			e.printStackTrace();
		}

		return challenge_categorylist;
	}

	
}
