package com.example.biz;

import com.example.dto.MemberDto;

public interface MemberBiz {
	public int idChk(String memberid);
	public int nickChk(String membernick);
	public MemberDto login(MemberDto dto);
	public int insert(MemberDto dto);
}
