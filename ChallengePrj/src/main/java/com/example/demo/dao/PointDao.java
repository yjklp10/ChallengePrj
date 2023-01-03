package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.dto.PointDto;

@Mapper
public interface PointDao {

//	String NAMESPACE = "mypoint.";
	
	@Select("SELECT * FROM MYPOINT ORDER BY POINTNO DESC")
	List<PointDto> selectList();
}
