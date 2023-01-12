package com.example.demo.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.net.URLDecoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.util.FileCopyUtils;

import com.example.demo.biz.FileUploadbiz;
import com.example.demo.dto.AttachImageDto;

import net.coobird.thumbnailator.Thumbnails;

public class ImageController {
	
	@Autowired
	private FileUploadbiz biz;
	
	
	//팝업창 오픈
	@GetMapping("/fopen")	
	public String fopen() {
		return "imageuploadpopup";
	}
	
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
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName){
		
	
		
		File file = new File("c:\\upload\\" + fileName);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}	
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName){
		
	
		
		File file = null;
		
		try {
			/* 썸네일 파일 삭제 */
			file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			/* 원본 파일 삭제 */
			String originFileName = file.getAbsolutePath().replace("s_", "");
			
			
			
			file = new File(originFileName);
			
			file.delete();
			
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
			
		}
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
		
	}	
	
	@PostMapping("/dbinsert")
	public void dbinsert(AttachImageDto dto) {
	  if(biz.insert(dto)>0) {
		 
	  }else {
		 
	  }

	}
	@PostMapping("/myuploadimage")
	public String myuploadimage(Model model) {
		return "";
	}
	
}
