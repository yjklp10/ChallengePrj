package com.example.demo.biz;

import com.example.demo.dto.MemberDto;

public interface MemberBiz {
	public MemberDto idChk(String memberid);
	public MemberDto nickChk(String membernick);
	public MemberDto login(MemberDto dto);
	public int insert(MemberDto dto);
}
