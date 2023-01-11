package com.example.demo.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class CommentDto {

	private int cno;
	private int challengeno;
	private String memberid;
	private String content;
	private int rating;
	@JsonFormat(shape= JsonFormat.Shape.STRING, pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private Date  reg_date;
	
	public CommentDto() {
		super();
	}

	public CommentDto(int cno, int challengeno, String memberid, String content, int rating, Date reg_date) {
		super();
		this.cno = cno;
		this.challengeno = challengeno;
		this.memberid = memberid;
		this.content = content;
		this.rating = rating;
		this.reg_date = reg_date;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public int getChallengeno() {
		return challengeno;
	}

	public void setChallengeno(int challengeno) {
		this.challengeno = challengeno;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	
	
	
}
