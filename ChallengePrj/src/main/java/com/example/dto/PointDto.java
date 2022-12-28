package com.example.dto;

import java.util.Date;

public class PointDto {

	private int pointno;
	private int point;
	private String memberid;
	private String bankname;
	private String accountnumber;
	private String accountholder;
	private int withdrawpoint;
	private String status;
	private Date pointdate;
	
	public PointDto(){

	};
	
	public PointDto(int pointno, int point, String memberid, String bankname, String accountnumber,
			String accountholder, int withdrawpoint, String status, Date pointdate) {
		super();
		this.pointno = pointno;
		this.point = point;
		this.memberid = memberid;
		this.bankname = bankname;
		this.accountnumber = accountnumber;
		this.accountholder = accountholder;
		this.withdrawpoint = withdrawpoint;
		this.status = status;
		this.pointdate = pointdate;
	}

	public int getPointno() {
		return pointno;
	}

	public void setPointno(int pointno) {
		this.pointno = pointno;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
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
	
	
}
