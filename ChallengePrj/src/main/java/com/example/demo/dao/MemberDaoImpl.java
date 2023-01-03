package com.example.demo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	@Override
	public int idChk(String memberid) {
		int res = 0;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"idchk",memberid);
		} catch (Exception e) {
			System.out.println("[error] : member idchk");
			e.printStackTrace();
		}
		return res;
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
