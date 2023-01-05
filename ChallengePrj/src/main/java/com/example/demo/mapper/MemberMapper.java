package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.MemberDto;

@Mapper
@Repository
public interface MemberMapper {
	
	public MemberDto idChk(String memberid);
	public MemberDto nickChk(String membernick);
	public MemberDto login(MemberDto dto);
	public int insert(MemberDto dto);

}
