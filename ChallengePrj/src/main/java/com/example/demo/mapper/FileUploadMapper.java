package com.example.demo.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.AttachImageDto;
@Mapper
public interface FileUploadMapper {
	@Insert("INSERT INTO image_upload(uploadFilePath,uuid,fileName) VALUES (#{uploadFilePath},#{uuid},#{fileName})")
	int insert(AttachImageDto dto);
}
