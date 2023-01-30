package com.example.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.MainDetailDao;
import com.example.demo.dto.Testchallenge;

@Service
public class MainDetailBizImpl implements MainDetailBiz {
	
	@Autowired
	private MainDetailDao dao;

	
	@Override
	public List<Testchallenge> challenge_hot() {
		return dao.challenge_hot();
	}

	@Override
	public List<Testchallenge> challenge_new() {
		return dao.challenge_new();
	}
	
	@Override
	public List<Testchallenge> challenge_onofflist(String onoffchoice) {
		return dao.challenge_onofflist(onoffchoice);
	}
	
	@Override
	public List<Testchallenge> challenge_categorylist(String category) {
		return dao.challenge_categorylist(category);
	}
	
	@Override
	public List<Testchallenge> challenge_search(String keyword) {
		return dao.challenge_search(keyword);
	}
	
}
