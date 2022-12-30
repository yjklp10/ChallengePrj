package com.example.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	@Override
	public int idChk(String memberid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int nickChk(String membernick) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDto login(MemberDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(MemberDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

}
