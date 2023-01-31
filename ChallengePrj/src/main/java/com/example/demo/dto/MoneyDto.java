package com.example.demo.dto;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public class MoneyDto {

	private String memberid;
	private int mydeposit;
	private int mypoint;
	private String memberemail;
	private String membernick;
	private String membername;
	private String memberphone;
	private String memberrole;


	public MoneyDto() {
		super();
	}

	public MoneyDto(String memberid, int mydeposit, int mypoint, String memberemail, String membernick,
			String membername, String memberphone) {
		super();
		this.memberid = memberid;
		this.mydeposit = mydeposit;
		this.mypoint = mypoint;
		this.memberemail = memberemail;
		this.membernick = membernick;
		this.membername = membername;
		this.memberphone = memberphone;
		this.memberrole = memberrole;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public int getMydeposit() {
		return mydeposit;
	}

	public void setMydeposit(int mydeposit) {
		this.mydeposit = mydeposit;
	}

	public int getMypoint() {
		return mypoint;
	}

	public void setMypoint(int mypoint) {
		this.mypoint = mypoint;
	}

	public String getMemberemail() {
		return memberemail;
	}

	public void setMemberemail(String memberemail) {
		this.memberemail = memberemail;
	}

	public String getMembernick() {
		return membernick;
	}

	public void setMembernick(String membernick) {
		this.membernick = membernick;
	}

	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}

	public String getMemberphone() {
		return memberphone;
	}

	public void setMemberphone(String memberphone) {
		this.memberphone = memberphone;
	}

	public String getMemberrole() {
		return memberrole;
	}

	public void setMemberrole(String memberrole) {
		this.memberrole = memberrole;
	}
	
}
