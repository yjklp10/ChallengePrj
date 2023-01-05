package com.example.demo.biz;

import java.util.List;

import com.example.demo.dto.PointDto;

public interface PointBiz {
	public List<PointDto> selectList();
	public int insert(PointDto dto);
}
