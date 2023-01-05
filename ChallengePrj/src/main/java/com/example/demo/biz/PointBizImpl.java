package com.example.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.PointDao;
import com.example.demo.dto.PointDto;

@Service
public class PointBizImpl implements PointBiz {

	@Autowired
	private PointDao dao;

	@Override
	public List<PointDto> selectList() {
		return dao.selectList();
	}
	
	@Override
	public int insert(PointDto dto) {
		return dao.insert(dto);
	}
}
