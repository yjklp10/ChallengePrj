package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.demo.dto.AttachImageDto;
import com.example.demo.dto.PaymentDto;
import com.example.demo.dto.makingChallengeDto;
@Mapper
public interface FileUploadMapper {
	@Insert("INSERT INTO image_upload(uploadFilePath,uuid,fileName,CHALLENGETITLE,MEMBERID) VALUES (#{uploadFilePath},#{uuid},#{fileName},#{challengetitle},#{memberid})")
	int insert(AttachImageDto dto);

	@Select("SELECT*FROM image_upload WHERE MEMBERID=#{memberid}")
	List<AttachImageDto> seletList(AttachImageDto dto);
	
	@Select("SELECT*FROM image_upload where CHALLENGETITLE=#{challengetitle}")
	List<AttachImageDto> seletListtwo(AttachImageDto challengetitle);
	
	@Select("select*from MAKECHALLENGE inner join PAYMENT on (PAYMENT.challengeno = MAKECHALLENGE.CHALLENGENO) WHERE PAYMENT.memberid=#{memberid}")
	List<makingChallengeDto> challengeList(PaymentDto dto2);
	
	@Select("SELECT*FROM MAKECHALLENGE WHERE CHALLENGETITLE=#{challengetitle}")
	makingChallengeDto selectOne(makingChallengeDto dto);
		    
	@Update("UPDATE memberinfo2 SET confirmrate=(select * from (select confirmrate from memberinfo2 WHERE title=#{title} AND chid=#{chid} ) as a)+1 WHERE title=#{title} AND chid=#{chid} AND confirmrate < (select * from (select confirmcount from memberinfo2 WHERE title=#{title} AND chid=#{chid}) as b)")
	int updateOne();
}
