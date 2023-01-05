package com.example.demo.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.MemberDto;
import com.example.demo.mapper.MemberMapper;


@Service
public class MemberBizImpl implements MemberBiz{

	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public MemberDto idChk(String memberid) {

		return mapper.idChk(memberid);

	}

	@Override
	public MemberDto nickChk(String membernick) {
		
		
		return mapper.nickChk(membernick);
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
