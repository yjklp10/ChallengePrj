package com.example.demo.dto;

import java.util.Date;

public class CommentDto {

	private int cno;
	private int challengeno;
	private String memberid;
	private String content;
	private Date  reg_date;
	
	public CommentDto() {
		super();
	}

	public CommentDto(int cno, int challengeno, String memberid, String content, Date reg_date) {
		super();
		this.cno = cno;
		this.challengeno = challengeno;
		this.memberid = memberid;
		this.content = content;
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

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	
}
