package com.example.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.AttachImageDto;
import com.example.demo.dto.PaymentDto;
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
public List<AttachImageDto> getAttachList(AttachImageDto dto) {

	return fileUploadMapper.seletList(dto);
}

@Override
public List<AttachImageDto> getAttachListtwo(AttachImageDto  challengetitle) {

	return fileUploadMapper.seletListtwo(challengetitle);
}

@Override
public int updateOne() {
	
	return 0;
}



@Override
public List<makingChallengeDto> challengeList(PaymentDto dto2) {

	return fileUploadMapper.challengeList(dto2);
		
}

@Override
public makingChallengeDto selectOne(makingChallengeDto dto) {
	
	return fileUploadMapper.selectOne(dto);
}






}
