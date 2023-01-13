package com.example.demo.dto;

import java.util.Date;

public class PointDto {

	private int pointno;
	private String memberid;
	private String bankname;
	private String accountnumber;
	private String accountholder;
	private int withdrawpoint;
	private String status;
	private Date pointdate;
	private int mypoint;
	
	public PointDto(){

	};
	
	public PointDto(int pointno, String memberid, String bankname, String accountnumber,
			String accountholder, int withdrawpoint, String status, Date pointdate,int mypoint) {
		super();
		this.pointno = pointno;
		this.memberid = memberid;
		this.bankname = bankname;
		this.accountnumber = accountnumber;
		this.accountholder = accountholder;
		this.withdrawpoint = withdrawpoint;
		this.status = status;
		this.pointdate = pointdate;
		this.mypoint = mypoint;
	}

	public int getPointno() {
		return pointno;
	}

	public void setPointno(int pointno) {
		this.pointno = pointno;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getAccountnumber() {
		return accountnumber;
	}

	public void setAccountnumber(String accountnumber) {
		this.accountnumber = accountnumber;
	}

	public String getAccountholder() {
		return accountholder;
	}

	public void setAccountholder(String accountholder) {
		this.accountholder = accountholder;
	}

	public int getWithdrawpoint() {
		return withdrawpoint;
	}

	public void setWithdrawpoint(int withdrawpoint) {
		this.withdrawpoint = withdrawpoint;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getPointdate() {
		return pointdate;
	}

	public void setPointdate(Date pointdate) {
		this.pointdate = pointdate;
	}

	public int getMypoint() {
		return mypoint;
	}

	public void setMypoint(int mypoint) {
		this.mypoint = mypoint;
	}
	
	
}
