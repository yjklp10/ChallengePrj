package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.MemberDto;

@Mapper
@Repository
public interface MemberMapper {
	
	public MemberDto idChk(String memberid);
	public MemberDto nickChk(String membernick);
	public MemberDto login(MemberDto dto);
	public int insert(MemberDto dto);
	public int insertpf(MemberDto dto);
	public MemberDto forgetId(@Param("membername")String membername, @Param("memberemail")String memberemail);
	public MemberDto forgetPw(@Param("memberid")String mameberid, @Param("memberemail")String memberemail);
	public int pwUpdate(@Param("pw")String pw, @Param("memberid")String memberid);

}
