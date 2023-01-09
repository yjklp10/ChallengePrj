package com.example.demo.dto;

import java.util.Date;

public class MainDetailDto {
	private int challengeno;
	private String category;
	private String onoffchoice;
	private String challengetitle;
	private Date challengestartdate;
	private String challengeperiod;
	private String thumbnailname;
	private String thumbnailpath;
	private int memberno;
	
	public MainDetailDto() {
		super();
	}

	public MainDetailDto(int challengeno, String category, String onoffchoice, String challengetitle,
			Date challengestartdate, String challengeperiod, String thumbnailname, String thumbnailpath, int memberno) {
		super();
		this.challengeno = challengeno;
		this.category = category;
		this.onoffchoice = onoffchoice;
		this.challengetitle = challengetitle;
		this.challengestartdate = challengestartdate;
		this.challengeperiod = challengeperiod;
		this.thumbnailname = thumbnailname;
		this.thumbnailpath = thumbnailpath;
		this.memberno = memberno;
	}

	public int getChallengeno() {
		return challengeno;
	}

	public void setChallengeno(int challengeno) {
		this.challengeno = challengeno;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getOnoffchoice() {
		return onoffchoice;
	}

	public void setOnoffchoice(String onoffchoice) {
		this.onoffchoice = onoffchoice;
	}

	public String getChallengetitle() {
		return challengetitle;
	}

	public void setChallengetitle(String challengetitle) {
		this.challengetitle = challengetitle;
	}

	public Date getChallengestartdate() {
		return challengestartdate;
	}

	public void setChallengestartdate(Date challengestartdate) {
		this.challengestartdate = challengestartdate;
	}

	public String getChallengeperiod() {
		return challengeperiod;
	}

	public void setChallengeperiod(String challengeperiod) {
		this.challengeperiod = challengeperiod;
	}

	public String getThumbnailname() {
		return thumbnailname;
	}

	public void setThumbnailname(String thumbnailname) {
		this.thumbnailname = thumbnailname;
	}

	public String getThumbnailpath() {
		return thumbnailpath;
	}

	public void setThumbnailpath(String thumbnailpath) {
		this.thumbnailpath = thumbnailpath;
	}

	public int getMemberno() {
		return memberno;
	}

	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	
	
	
	
}