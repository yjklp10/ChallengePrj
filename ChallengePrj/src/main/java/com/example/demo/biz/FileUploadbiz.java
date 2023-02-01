package com.example.demo.biz;

import java.util.List;

import com.example.demo.dto.AttachImageDto;
import com.example.demo.dto.PaymentDto;
import com.example.demo.dto.makingChallengeDto;

public interface FileUploadbiz {
public int insert(AttachImageDto dto);
public List<AttachImageDto> getAttachList(AttachImageDto dto);
public List<AttachImageDto> getAttachListtwo(AttachImageDto  challengetitle);
public List<makingChallengeDto> challengeList(PaymentDto dto2);
public makingChallengeDto selectOne(makingChallengeDto dto);
public int updateOne();
}
