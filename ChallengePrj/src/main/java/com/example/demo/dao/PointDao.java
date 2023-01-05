package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.dto.PointDto;

public interface PointDao {

	String NAMESPACE = "mypoint.";
	
	public List<PointDto> selectList();
	public int insert(PointDto dto);
}
