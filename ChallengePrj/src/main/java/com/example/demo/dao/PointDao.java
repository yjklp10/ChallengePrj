package com.example.demo.dao;

import java.util.List;

import com.example.demo.dto.MoneyDto;
import com.example.demo.dto.PointDto;
import com.example.demo.dto.makingChallengeDto;

public interface PointDao {

	String NAMESPACE = "mypoint.";
	
	public List<PointDto> selectList();
	public int insert(PointDto dto);
	public int updatepoint(PointDto dto);
	public int update(MoneyDto dto);
	public int insertMyinfo(MoneyDto dto);
	public MoneyDto selectMyinfo(String memberid);
	public List<makingChallengeDto> selectchall(String memberid);
	public int updateMyinfo(MoneyDto dto);
}
