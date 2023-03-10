package com.example.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.PointDao;
import com.example.demo.dto.MoneyDto;
import com.example.demo.dto.PointDto;
import com.example.demo.dto.makingChallengeDto;

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

	@Override
	public MoneyDto selectMyinfo(String memberid) {
		return dao.selectMyinfo(memberid);
	}
	
	@Override
	public int insertMyinfo(MoneyDto dto) {
		return dao.insertMyinfo(dto);
	}

	@Override
	public int update(MoneyDto dto) {
		return dao.update(dto);
	}

	@Override
	public int updatepoint(PointDto dto) {
		return dao.updatepoint(dto);
	}

	@Override
	public List<makingChallengeDto> selectchall(String memberid) {
		return dao.selectchall(memberid);
	}

	@Override
	public int updateMyinfo(MoneyDto dto) {
		return dao.updateMyinfo(dto);
	}


}
