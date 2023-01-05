package com.example.demo.dto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class makingChallengeDto {
	
	@Id
	private int challengeno;
	
	private String challengetitle;
	private String onoffchoice;
	private String chllengeprequency;
	private String challengeperiod;
	private Date certificationstarttime;
	private Date certificationendtime;
	private Date challengestartdate;
	private String certificationway;
	private String challengeintro;
	private int deposit;
	private int maxchallenger;
	private String category;
	private String thumbnailname;
	private String thumbnailpath;
	
//	@Builder.Default
//	private List<challengeImageDto> imageDtoList = new ArrayList<>();
}
