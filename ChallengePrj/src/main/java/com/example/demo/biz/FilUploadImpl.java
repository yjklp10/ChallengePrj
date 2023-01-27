package com.example.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.demo.dto.AttachImageDto;
import com.example.demo.mapper.FileUploadMapper;

public class FilUploadImpl implements FileUploadbiz {
@Autowired
private FileUploadMapper fileUploadMapper;

@Override
public int insert(AttachImageDto dto) {
	
	return fileUploadMapper.insert(dto);
}

@Override
public List<AttachImageDto> getAttachList() {
	// TODO Auto-generated method stub
	return fileUploadMapper.seletList();
}

@Override
public List<AttachImageDto> getAttachListtwo() {

	return fileUploadMapper.seletListtwo();
}

@Override
public int updateOne() {
	
	return 0;
}

@Override
public void selectOne() {
	
	
}

@Override
public void challengeList() {

	
}



}
