package com.example.deom.dao;

import com.example.demo.dto.MemberDto;

public interface MemberDao {
	
	String NAMESPACE = "mymember.";
	
	public int idChk(String memberid);
	public int nickChk(String membernick);
	public MemberDto login(MemberDto dto);
	public int insert(MemberDto dto);
}
