package com.example.demo.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dto.AttachImageDto;

import net.coobird.thumbnailator.Thumbnails;

public class ImageController {
	@PostMapping(value="/uploadAjaxAction", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageDto>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {

		for(MultipartFile multipartFile:uploadFile) {
			File checkFile=new File(multipartFile.getOriginalFilename());
			String type=null;		
			try {
				type=Files.probeContentType(checkFile.toPath());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		String uploadFolder="C:\\upload";
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-DD");
		
		Date date=new Date();
		
		String str=sdf.format(date);
		
		String datePath=str.replace("-", File.separator);
		
		File uploadPath=new File(uploadFolder,datePath);
		
		if(uploadPath.exists()==false) {
			uploadPath.mkdirs();
		}
		
		List<AttachImageDto> list=new ArrayList();
		
		for(MultipartFile multipartFile: uploadFile) {
		    AttachImageDto dto=new AttachImageDto();
			
			String uploadFileName=multipartFile.getOriginalFilename();
			dto.setFileName(uploadFileName);
			dto.setUploadFilePath(datePath);
			
			String uuid=UUID.randomUUID().toString();
		    dto.setUuid(uuid);	
			uploadFileName=uuid+"_"+uploadFileName;
			
			File saveFile=new File(uploadPath,uploadFileName);
			
			try {
				multipartFile.transferTo(saveFile);
				
				File thumbnailFile=new File(uploadPath+"s_"+uploadFileName);
				Thumbnails.of(saveFile)
				.size(160,160)
				.toFile(thumbnailFile);
			} catch (Exception e) {
			
				e.printStackTrace();
			}
			list.add(dto);
			
		}
		ResponseEntity<List<AttachImageDto>> result=new ResponseEntity<List<AttachImageDto>>(list,HttpStatus.OK);
		return result;
	}
}
