package com.example.demo.biz;

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

}
