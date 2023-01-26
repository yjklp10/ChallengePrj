package com.example.demo.dto;

import java.util.Date;
import java.util.List;
import lombok.*;

/*
import com.example.demo.entity.BoardEntity;
*/

public class Testchallenge {
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
	private String memberid;
	

	public Testchallenge() {
		super();
	}

/*	
	 public BoardEntity toEntity(){
	        BoardEntity boardEntity = BoardEntity.builder()
	                .challengeno(challengeno)
	                .challengetitle(challengetitle)
	                .onoffchoice(onoffchoice)
	                .challengeintro(challengeintro)
	                .chllengeprequency(chllengeprequency)
	                .challengeperiod(challengeperiod)
	                .challengestartdate(challengestartdate)
	                .thumbnailname(thumbnailname)
	                .thumbnailpath(thumbnailpath)
	                .build();
	        
	        return boardEntity;
	    }
	
	*/
	
	
	public Testchallenge(int challengeno, String challengetitle, String onoffchoice, String chllengeprequency,
			String challengeperiod, Date certificationstarttime, Date certificationendtime, Date challengestartdate,
			String certificationway, String challengeintro, int deposit, int maxchallenger, String category,
			String thumbnailname, String thumbnailpath, String memberid) {
		
		super();
		this.challengeno = challengeno;
		this.challengetitle = challengetitle;
		this.onoffchoice = onoffchoice;
		this.chllengeprequency = chllengeprequency;
		this.challengeperiod = challengeperiod;
		this.certificationstarttime = certificationstarttime;
		this.certificationendtime = certificationendtime;
		this.challengestartdate = challengestartdate;
		this.certificationway = certificationway;
		this.challengeintro = challengeintro;
		this.deposit = deposit;
		this.maxchallenger = maxchallenger;
		this.category = category;
		this.thumbnailname = thumbnailname;
		this.thumbnailpath = thumbnailpath;
		this.memberid = memberid;

	}

	public int getChallengeno() {
		return challengeno;
	}

	public void setChallengeno(int challengeno) {
		this.challengeno = challengeno;
	}

	public String getChallengetitle() {
		return challengetitle;
	}

	public void setChallengetitle(String challengetitle) {
		this.challengetitle = challengetitle;
	}

	public String getOnoffchoice() {
		return onoffchoice;
	}

	public void setOnoffchoice(String onoffchoice) {
		this.onoffchoice = onoffchoice;
	}

	public String getChllengeprequency() {
		return chllengeprequency;
	}

	public void setChllengeprequency(String chllengeprequency) {
		this.chllengeprequency = chllengeprequency;
	}

	public String getChallengeperiod() {
		return challengeperiod;
	}

	public void setChallengeperiod(String challengeperiod) {
		this.challengeperiod = challengeperiod;
	}

	public Date getCertificationstarttime() {
		return certificationstarttime;
	}

	public void setCertificationstarttime(Date certificationstarttime) {
		this.certificationstarttime = certificationstarttime;
	}

	public Date getCertificationendtime() {
		return certificationendtime;
	}

	public void setCertificationendtime(Date certificationendtime) {
		this.certificationendtime = certificationendtime;
	}

	public Date getChallengestartdate() {
		return challengestartdate;
	}

	public void setChallengestartdate(Date challengestartdate) {
		this.challengestartdate = challengestartdate;
	}

	public String getCertificationway() {
		return certificationway;
	}

	public void setCertificationway(String certificationway) {
		this.certificationway = certificationway;
	}

	public String getChallengeintro() {
		return challengeintro;
	}

	public void setChallengeintro(String challengeintro) {
		this.challengeintro = challengeintro;
	}

	public int getDeposit() {
		return deposit;
	}

	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}

	public int getMaxchallenger() {
		return maxchallenger;
	}

	public void setMaxchallenger(int maxchallenger) {
		this.maxchallenger = maxchallenger;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}


}
