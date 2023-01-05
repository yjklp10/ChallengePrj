package com.example.demo.dao;

import java.util.List;

import com.example.demo.dto.MoneyDto;
import com.example.demo.dto.PointDto;

public interface PointDao {

	String NAMESPACE = "mypoint.";
	
	public List<PointDto> selectList();
	public int insert(PointDto dto);
	
	public MoneyDto selectMyinfo(String memberid);


}
