package com.example.demo.dto;

import java.util.Date;

import lombok.Data;



@Data
public class MemberDto {
	private int memberno;
	private String memberid;
	private String memberpw;
	private String memberemail;
	private String membernick;
	private String membername;
	private String memberphone;
	private String memberrole;
	private String membergender;
	private String membercertify;
	private Date memberjoin;
	private Date memberquit;
	
	
	public MemberDto() {
		super();
	}


	public MemberDto(int memberno, String memberid, String memberpw, String memberemail, String membernick,
			String membername, String memberphone, String memberrole, String membergender, String membercertify,
			Date memberjoin, Date memberquit) {
		super();
		this.memberno = memberno;
		this.memberid = memberid;
		this.memberpw = memberpw;
		this.memberemail = memberemail;
		this.membernick = membernick;
		this.membername = membername;
		this.memberphone = memberphone;
		this.memberrole = memberrole;
		this.membergender = membergender;
		this.membercertify = membercertify;
		this.memberjoin = memberjoin;
		this.memberquit = memberquit;
	}


	public int getMemberno() {
		return memberno;
	}


	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}


	public String getMemberid() {
		return memberid;
	}


	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}


	public String getMemberpw() {
		return memberpw;
	}


	public void setMemberpw(String memberpw) {
		this.memberpw = memberpw;
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


	public String getMembergender() {
		return membergender;
	}


	public void setMembergender(String membergender) {
		this.membergender = membergender;
	}


	public String getMembercertify() {
		return membercertify;
	}


	public void setMembercertify(String membercertify) {
		this.membercertify = membercertify;
	}


	public Date getMemberjoin() {
		return memberjoin;
	}


	public void setMemberjoin(Date memberjoin) {
		this.memberjoin = memberjoin;
	}


	public Date getMemberquit() {
		return memberquit;
	}


	public void setMemberquit(Date memberquit) {
		this.memberquit = memberquit;
	}


	@Override
	public String toString() {
		return "MemberDto [memberno=" + memberno + ", memberid=" + memberid + ", memberpw=" + memberpw
				+ ", memberemail=" + memberemail + ", membernick=" + membernick + ", membername=" + membername
				+ ", memberphone=" + memberphone + ", memberrole=" + memberrole + ", membergender=" + membergender
				+ ", membercertify=" + membercertify + ", memberjoin=" + memberjoin + ", memberquit=" + memberquit
				+ "]";
	}

	
	
}
