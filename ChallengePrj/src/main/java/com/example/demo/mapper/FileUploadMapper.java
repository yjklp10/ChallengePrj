package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.demo.dto.AttachImageDto;
@Mapper
public interface FileUploadMapper {
	@Insert("INSERT INTO image_upload(uploadFilePath,uuid,fileName) VALUES (#{uploadFilePath},#{uuid},#{fileName})")
	int insert(AttachImageDto dto);
	@Select("SELECT*FROM image_upload")
	List<AttachImageDto> seletList();
	
	@Select("")
	List<AttachImageDto> seletListtwo();
	
	@Select("SELECT*FROM challenge2")
	void challengeList();
	
	@Select("SELECT*FROM challenge2 WHERE title=#{title} AND chid=#{chid}")
	void selectOne();
		    
	@Update("UPDATE memberinfo2 SET confirmrate=(select * from (select confirmrate from memberinfo2 WHERE title=#{title} AND chid=#{chid} ) as a)+1 WHERE title=#{title} AND chid=#{chid} AND confirmrate < (select * from (select confirmcount from memberinfo2 WHERE title=#{title} AND chid=#{chid}) as b)")
	int updateOne();
}
