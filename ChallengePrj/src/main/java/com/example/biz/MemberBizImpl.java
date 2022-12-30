package com.example.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.MemberDao;
import com.example.dto.MemberDto;

@Service
public class MemberBizImpl implements MemberBiz{

	
	@Autowired
	private MemberDao dao;
	
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
