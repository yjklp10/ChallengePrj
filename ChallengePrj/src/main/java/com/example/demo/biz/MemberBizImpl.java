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
		return null;
	}
	
	@Override
	public int insertpf(MemberDto dto) {
		return mapper.insertpf(dto);
	}

	@Override
	public int insert(MemberDto dto) {
		return mapper.insert(dto);
	}

	@Override
	public MemberDto forgetId(String membername, String memberemail) {
		return mapper.forgetId(membername, memberemail);
	}

	@Override
	public MemberDto forgetPw(String mameberid, String memberemail) {
		return mapper.forgetPw(mameberid, memberemail);
	}

	@Override
	public int pwUpdate(String pw, String memberid) {
		return mapper.pwUpdate(pw, memberid);
	}

}
