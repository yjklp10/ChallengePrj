package com.example.dto;

import java.util.Date;

import lombok.Data;

@Data
public class makingChallenge {
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
}
