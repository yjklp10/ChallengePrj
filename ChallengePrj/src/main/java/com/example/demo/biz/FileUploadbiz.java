package com.example.demo.biz;

import java.util.List;

import com.example.demo.dto.AttachImageDto;
import com.example.demo.dto.makingChallengeDto;

public interface FileUploadbiz {
public int insert(AttachImageDto dto);
public List<AttachImageDto> getAttachList(AttachImageDto memberid);
public List<AttachImageDto> getAttachListtwo();
public List<makingChallengeDto> challengeList( makingChallengeDto dto);
public makingChallengeDto selectOne(makingChallengeDto dto);
public int updateOne();
}
