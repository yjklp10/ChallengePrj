package com.example.demo.biz;

import com.example.demo.dto.MemberDto;

public interface MemberBiz {
	public MemberDto idChk(String memberid);
	public MemberDto nickChk(String membernick);
	public MemberDto login(MemberDto dto);
	public int insert(MemberDto dto);
	public MemberDto forgetId(String membername, String membereil);
	public MemberDto forgetPw(String mameberid, String memberemail);
	public int pwUpdate(String pw, String memberid);
}
