package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dto.Testchallenge;
import com.example.demo.dto.UploadDto;
import com.example.demo.dto.makingChallengeDto;
@Repository
@Mapper
public interface ChallengeMapper {
	public Testchallenge getDetail(int challengeno);
	public int onlineinsert(makingChallengeDto dto);
	public int offlineinsert(makingChallengeDto dto);
}
