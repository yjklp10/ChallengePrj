package com.example.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.PointDto;

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
}
