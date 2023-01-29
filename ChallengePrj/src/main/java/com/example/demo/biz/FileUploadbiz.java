package com.example.demo.biz;

import java.util.List;

import com.example.demo.dto.AttachImageDto;
import com.example.demo.dto.makingChallengeDto;

public interface FileUploadbiz {
public int insert(AttachImageDto dto);
public List<AttachImageDto> getAttachList(String memberid);
public List<AttachImageDto> getAttachListtwo(AttachImageDto  challengetitle);
public List<makingChallengeDto> challengeList( makingChallengeDto dto);
public makingChallengeDto selectOne(makingChallengeDto dto);
public int updateOne();
}
