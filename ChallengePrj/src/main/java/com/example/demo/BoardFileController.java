package com.example.demo;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.biz.BoardFileService;
import com.example.demo.dto.BoardFileRequestDto;
import com.example.demo.dto.BoardFileResponseDto;

public class BoardFileController {
	  @Autowired
	   private  BoardFileService boardFileService;
		@GetMapping("/file/download")
		public void downloadFile(@RequestParam() Long id, HttpServletResponse response) throws Exception{
			try {
			//파일 정보 조회
			BoardFileResponseDto  fileInfo=boardFileService.findById(id);
			
			if(fileInfo==null) throw new FileNotFoundException("Empty File");
			
			//경로와 파일명으로 파일 객체를 생성
			 File dFile=new File(fileInfo.getFilePath(),fileInfo.getSaveFileName());
			
			int fSize=(int)dFile.length();
			
			if(fSize>0) {
				  String encodedFilename = "attachment; filename*=" + "UTF-8" + "''" + URLEncoder.encode(fileInfo.getOrignFileName(), "UTF-8");
				  
				  //ContentType 설정
				  response.setContentType("application/octet-stream; charset=utf-8");
				  
				  //Header 설정
				  response.setHeader("Content-Dispositon",encodedFilename);
				  
				  //ContentLength 설정
				  response.setContentLengthLong(fSize);
				  
				  BufferedInputStream in=null;
				  BufferedOutputStream out=null;
				  
				  //  BufferedInputStream, BufferedOutputStream
				  // java io의 가장 기본 파일 입출력 클래스
				  // 버퍼를 사용하지 않아 느림 다른 클래스와 함께 사용
				  
				  in=new BufferedInputStream(new FileInputStream(dFile));
				  
				  out=new BufferedOutputStream(response.getOutputStream());
				
				  try {
				  byte[] buffer=new byte[4096];
				  int bytesRead=0;
				  
				  //int read():1byte씩 내용을 읽어 정수로 반환
				  //int read(byte[] b):파일 내용을 한번에 읽어서 배열에 저장
				  //int read(byte[] b,int off,int len): len의 길이만큼 읽어서 off번째 위치부터 저장
				  
				  while((bytesRead=in.read(buffer))!=-1) {
					  out.write(buffer,0,bytesRead);
				  }
				  out.flush();
				  //버퍼 내용 출력
				  }finally {
					  //스트림 닫기
					 in.close();
					 out.close();
				  }
				  
			}else {
				throw new FileNotFoundException("Empty FileData.");
			}
			
			}catch(Exception e) {
				throw new Exception(e.getMessage());
			}
		}
		
		
		
		
		@PostMapping("/file/delete.ajax")
		public String updateDeleteYn(Model model,BoardFileRequestDto boardFileRequestDto) {
			return "";
			
			
		}
	
		}


