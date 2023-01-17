package com.example.demo.dto;

public class PaymentDto {

	private int paynum;
	private int challengeno;
	private String memberid;
	private String challengetitle;
	private int deposit;
	public PaymentDto() {
		super();
	}
	public PaymentDto(int paynum, int challengeno, String memberid, String challengetitle, int deposit) {
		super();
		this.paynum = paynum;
		this.challengeno = challengeno;
		this.memberid = memberid;
		this.challengetitle = challengetitle;
		this.deposit = deposit;
	}
	public int getPaynum() {
		return paynum;
	}
	public void setPaynum(int paynum) {
		this.paynum = paynum;
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
	public String getChallengetitle() {
		return challengetitle;
	}
	public void setChallengetitle(String challengetitle) {
		this.challengetitle = challengetitle;
	}
	public int getDeposit() {
		return deposit;
	}
	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}
	
	
}
