package com.example.dao;

import com.example.dto.MemberDto;

public interface MemberDao {
	
	String NAMESPACE = "member.";
	
	public int idChk(String memberid);
	public int nickChk(String membernick);
	public MemberDto login(MemberDto dto);
	public int insert(MemberDto dto);
}
