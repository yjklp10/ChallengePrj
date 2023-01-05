package com.example.demo.dto;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class challengeImageDto {
	 private String fileName;

	    private String uuid;

	    private String folderPath;
 

		public challengeImageDto(String fileName, String uuid, String folderPath) {
			super();
			this.fileName = fileName;
			this.uuid = uuid;
			this.folderPath = folderPath;
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
