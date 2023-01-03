package com.example.demo.dto;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UploadDto {
	 private String fileName;

	    private String uuid;

	    private String folderPath;

	    public UploadDto(String fileName2, String uuid2, String folderPath2) {
			// TODO Auto-generated constructor stub
		}


		public String getImageURL(){
	        try {
	            return URLEncoder.encode(folderPath+"/" +uuid +"_" + fileName,"UTF-8");

	        }catch (UnsupportedEncodingException e){
	            e.printStackTrace();
	        }
	        return "";
	    }


	    public String getThumbnailURL(){
	        try {
	            return URLEncoder.encode(folderPath + "/s_" +uuid + "_" +fileName,"UTF-8");
	        }catch (UnsupportedEncodingException e){
	            e.printStackTrace();
	        }

	        return "";
	    }
}
