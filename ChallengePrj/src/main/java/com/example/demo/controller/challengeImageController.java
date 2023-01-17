package com.example.demo.controller;


import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.dto.challengeImageDto;

import net.coobird.thumbnailator.Thumbnailator;


@RestController
public class challengeImageController {
	 @Value("${com.example.upload.path}") // application.properties의 변수
	    private String uploadPath;
	 @PostMapping("/uploadAjax")
	    public ResponseEntity<List<challengeImageDto>> uploadFile(MultipartFile[] uploadFiles){

	        List<challengeImageDto> resultDTOList = new ArrayList<>();
	        for (MultipartFile uploadFile : uploadFiles) {

	            // 이미지 파일만 업로드 가능
	            if(uploadFile.getContentType().startsWith("image") == false){
	                // 이미지가 아닌경우 403 Forbidden 반환
	                return new ResponseEntity<>(HttpStatus.FORBIDDEN);
	            }

	            // 실제 파일 이름 IE나 Edge는 전체 경로가 들어오므로
	            String originalName = uploadFile.getOriginalFilename();

	            String fileName = originalName.substring(originalName.lastIndexOf("\\") + 1);
 
	            // 날짜 폴더 생성
	            String folderPath = makeFolder();

	            //UUID
	            String uuid = UUID.randomUUID().toString();

	            //저장할 파일 이름 중간에 "_"를 이용해 구분
	            String saveName = uploadPath + File.separator + folderPath + File.separator + uuid + "_" + fileName;

	            Path savePath = Paths.get(saveName);

	            try {
	                uploadFile.transferTo(savePath);// 실제 이미지 저장(원본 파일)

	                //섬네일 생성 -> 섬네일 파일 이름은 중간에 s_로 시작
	                String thubmnailSaveName = uploadPath + File.separator + folderPath + File.separator +"s_" + uuid +"_"+ fileName;

	                File thumbnailFile = new File(thubmnailSaveName);
	                // 섬네일 생성
	                Thumbnailator.createThumbnail(savePath.toFile(),thumbnailFile,1000,1000);

	                resultDTOList.add(new challengeImageDto(fileName,uuid,folderPath));
	            }catch (IOException e){
	                e.printStackTrace();
	            }
	        }

	        return new ResponseEntity<>(resultDTOList, HttpStatus.OK);
	    }

	    @GetMapping("/display")
	    public ResponseEntity<byte[]> getFile(String fileName, String size){

	        ResponseEntity<byte[]> result = null;

	        try {

	            String srcFileName = URLDecoder.decode(fileName,"UTF-8");

	            File file = new File(uploadPath + File.separator + srcFileName);

	            if(size != null && size.equals("1")){
	                file = new File(file.getParent(),file.getName().substring(2));
	            }

	            HttpHeaders header = new HttpHeaders();

	            //MIME타입 처리
	            header.add("Content-Type", Files.probeContentType(file.toPath()));

	            //파일 데이터 처리
	            result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
	        }catch (Exception e){

	            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	        }
	        return result;
	    }

	    @PostMapping("/removeFile")
	    public ResponseEntity<Boolean> removeFile(String fileName){
	        String srcFileName = null;

	        try {
	            srcFileName = URLDecoder.decode(fileName,"UTF-8");
	            File file = new File(uploadPath + File.separator + srcFileName);

	            boolean result = file.delete();

	            File thumbnail = new File(file.getParent(),"s_" + file.getName());

	            result = thumbnail.delete();

	            return new ResponseEntity<>(result,HttpStatus.OK);

	        }catch (UnsupportedEncodingException e){
	            e.printStackTrace();
	            return new ResponseEntity<>(false,HttpStatus.INTERNAL_SERVER_ERROR);
	        }
	    }
	    private String makeFolder() {

	        String str = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy/MM/dd"));

	        String folderPath = str.replace("/", File.separator);

	        // make folder ----
	        File uploadPatheFolder = new File(uploadPath,folderPath);

	        if(uploadPatheFolder.exists() == false){
	            uploadPatheFolder.mkdirs();
	        }

	        return folderPath;
	    }
	    
}
