package com.example.demo.dto;



public class MoneyDto {

	private String memberid;
	private int mydeposit;
	private int mypoint;
	
	public MoneyDto() {
		super();
	}

	public MoneyDto(String memberid, int mydeposit, int mypoint) {
		super();
		this.memberid = memberid;
		this.mydeposit = mydeposit;
		this.mypoint = mypoint;
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
	
}
