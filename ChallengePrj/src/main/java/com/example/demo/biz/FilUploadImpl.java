package com.example.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.AttachImageDto;
import com.example.demo.dto.makingChallengeDto;
import com.example.demo.mapper.FileUploadMapper;
@Service
public class FilUploadImpl implements FileUploadbiz {
@Autowired
private FileUploadMapper fileUploadMapper;

@Override
public int insert(AttachImageDto dto) {
	
	return fileUploadMapper.insert(dto);
}

@Override
public List<AttachImageDto> getAttachList(AttachImageDto memberid) {

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
public List<makingChallengeDto> challengeList(makingChallengeDto dto) {

	return fileUploadMapper.challengeList(dto);
		
}

@Override
public makingChallengeDto selectOne(makingChallengeDto dto) {
	
	return fileUploadMapper.selectOne(dto);
}






}
