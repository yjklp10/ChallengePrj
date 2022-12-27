package com.example.demo;

import java.io.File;
import java.io.FileNotFoundException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dto.BoardFileResponseDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class BoardFileController {
	  private final BoardFileService boardFileService;
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
				  String encodedFilename = "attachment; filename*=" + "UTF-8" + "''" + URLEncoder.encode(fileInfo.getOrigFileName(), "UTF-8");
				  
				  
			}
			
			}catch(Exception e) {
				
			}
		}
}
