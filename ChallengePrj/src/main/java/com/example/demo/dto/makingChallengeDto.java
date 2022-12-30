package com.example.demo.dto;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import javax.persistence.Id;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Data
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
}
