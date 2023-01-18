package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.dto.AttachImageDto;
@Mapper
public interface FileUploadMapper {
	@Insert("INSERT INTO image_upload(uploadFilePath,uuid,fileName) VALUES (#{uploadFilePath},#{uuid},#{fileName})")
	int insert(AttachImageDto dto);
	@Select("SELECT*FROM image_upload")
	List<AttachImageDto> seletList();
	
	@Select("")
	List<AttachImageDto> seletListtwo();
		    
	
}
