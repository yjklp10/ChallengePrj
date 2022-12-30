package com.example.demo.dao;

import com.example.demo.dto.MemberDto;

public interface MemberDao {
	
	String NAMESPACE = "member.";
	
	public int idChk(String memberid);
	public int nickChk(String membernick);
	public MemberDto login(MemberDto dto);
	public int insert(MemberDto dto);
}
