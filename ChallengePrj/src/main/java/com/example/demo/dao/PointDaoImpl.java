package com.example.demo.dao;

import java.util.ArrayList;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.MoneyDto;
import com.example.demo.dto.PointDto;
import com.example.demo.dto.makingChallengeDto;

@Repository
public class PointDaoImpl implements PointDao {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<PointDto> selectList() {
		List<PointDto> list = new ArrayList<PointDto>();
		
		try {
			list = sqlSession.selectList("mypoint.selectList");
		} catch (Exception e) {
			System.out.println("[error] : select list");
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public int insert(PointDto dto) {
		int res=0;
		try {
			res=sqlSession.insert(NAMESPACE+"insert",dto);
		} catch (Exception e) {
			System.out.println("[error] : insert");
			e.printStackTrace();
		}
		
		return res;
	}
	

	@Override
	public MoneyDto selectMyinfo(String memberid) {
		MoneyDto dto =null;
		try {
			dto =sqlSession.selectOne(NAMESPACE+"selectMyinfo", memberid);
		} catch (Exception e) {
			System.out.println("[error] : select one");
			e.printStackTrace();
		}
		
		return dto;
	}
	
	@Override
	public int insertMyinfo(MoneyDto dto) {
		int res=0;
		try {
			res=sqlSession.insert(NAMESPACE+"insertMyinfo",dto);
		} catch (Exception e) {
			System.out.println("[error] : insert");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int update(MoneyDto dto) {
		int res=0;
		try {
			res=sqlSession.update(NAMESPACE+"update",dto);
		} catch (Exception e) {
			System.out.println("[error] : update");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int updatepoint(PointDto dto) {
		int res=0;
		try {
			res=sqlSession.update(NAMESPACE+"updatepoint",dto);
		} catch (Exception e) {
			System.out.println("[error] : updatepoint");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public List<makingChallengeDto> selectchall(String memberid) {
		List<makingChallengeDto> challList = new ArrayList<makingChallengeDto>();
		
		try {
			challList = sqlSession.selectList(NAMESPACE+"selectchall",memberid);
		} catch (Exception e) {
			System.out.println("[error] : select challList");
			e.printStackTrace();
		}
		return challList;
	}

	@Override
	public int updateMyinfo(MoneyDto dto) {
		int res=0;
		try {
			res=sqlSession.update(NAMESPACE+"updateMyinfo",dto);
		} catch (Exception e) {
			System.out.println("[error] : updateMyinfo");
			e.printStackTrace();
		}
		
		return res;
	}
}
