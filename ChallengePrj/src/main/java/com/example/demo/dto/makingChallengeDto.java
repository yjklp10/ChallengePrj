package com.example.demo.dto;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class makingChallengeDto {
	
	@Id
	private int challengeno;
	
	private String challengetitle; 			//챌린지 제목
	private String onoffchoice;				//온오프 여부
	private String offlineaddress;			//오프라인시 주소
	private String offlineaddressdetail;	//오프라인시 상세 주소
	private LocalTime offlinestarttime;		//오프라인시 시작 시간
	private String challengefrequency;		//인증빈도
	private LocalDate challengestartdate;		//챌린지 시작일
	private LocalDate challengeenddate;		//챌린지 마감일
	private int challengeperiod;			// 챌린지 기간
	private LocalTime certificationstarttime;	// 인증 가능 시간
	private LocalTime certificationendtime;	// 인증 종료 시간
	private String successimgpath;			// 인증성공예시 경로
	private String successimgname;			// 인증성공예시 이름
	private String failimgpath;				// 인증실패예시 경로
	private String failimgname;				// 인증실패예시 이름
	private String certificationway;		// 인증 방법
	private String challengeintro;			// 챌린지 소개
	private int deposit;					// 예치금 설정
	private int maxchallenger;				// 최대 모집 인원 지정
	private String category;				// 카테고리
	private String thumbnailpath;			// 대표사진 경로
	private String thumbnailname;			// 대표사진 이름
	private String memberid;
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
	public String getOfflineaddress() {
		return offlineaddress;
	}
	public void setOfflineaddress(String offlineaddress) {
		this.offlineaddress = offlineaddress;
	}
	public String getOfflineaddressdetail() {
		return offlineaddressdetail;
	}
	public void setOfflineaddressdetail(String offlineaddressdetail) {
		this.offlineaddressdetail = offlineaddressdetail;
	}
	public LocalTime getOfflinestarttime() {
		return offlinestarttime;
	}
	public void setOfflinestarttime(LocalTime offlinestarttime) {
		this.offlinestarttime = offlinestarttime;
	}
	public String getChallengefrequency() {
		return challengefrequency;
	}
	public void setChallengefrequency(String challengefrequency) {
		this.challengefrequency = challengefrequency;
	}
	public LocalDate getChallengestartdate() {
		return challengestartdate;
	}
	public void setChallengestartdate(LocalDate challengestartdate) {
		this.challengestartdate = challengestartdate;
	}
	public LocalDate getChallengeenddate() {
		return challengeenddate;
	}
	public void setChallengeenddate(LocalDate challengeenddate) {
		this.challengeenddate = challengeenddate;
	}
	public int getChallengeperiod() {
		return challengeperiod;
	}
	public void setChallengeperiod(int challengeperiod) {
		this.challengeperiod = challengeperiod;
	}
	public LocalTime getCertificationstarttime() {
		return certificationstarttime;
	}
	public void setCertificationstarttime(LocalTime certificationstarttime) {
		this.certificationstarttime = certificationstarttime;
	}
	public LocalTime getCertificationendtime() {
		return certificationendtime;
	}
	public void setCertificationendtime(LocalTime certificationendtime) {
		this.certificationendtime = certificationendtime;
	}
	public String getSuccessimgpath() {
		return successimgpath;
	}
	public void setSuccessimgpath(String successimgpath) {
		this.successimgpath = successimgpath;
	}
	public String getSuccessimgname() {
		return successimgname;
	}
	public void setSuccessimgname(String successimgname) {
		this.successimgname = successimgname;
	}
	public String getFailimgpath() {
		return failimgpath;
	}
	public void setFailimgpath(String failimgpath) {
		this.failimgpath = failimgpath;
	}
	public String getFailimgname() {
		return failimgname;
	}
	public void setFailimgname(String failimgname) {
		this.failimgname = failimgname;
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
	public String getThumbnailpath() {
		return thumbnailpath;
	}
	public void setThumbnailpath(String thumbnailpath) {
		this.thumbnailpath = thumbnailpath;
	}
	public String getThumbnailname() {
		return thumbnailname;
	}
	public void setThumbnailname(String thumbnailname) {
		this.thumbnailname = thumbnailname;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public makingChallengeDto(int challengeno, String challengetitle, String onoffchoice, String offlineaddress,
			String offlineaddressdetail, LocalTime offlinestarttime, String challengefrequency,
			LocalDate challengestartdate, LocalDate challengeenddate, int challengeperiod,
			LocalTime certificationstarttime, LocalTime certificationendtime, String successimgpath,
			String successimgname, String failimgpath, String failimgname, String certificationway,
			String challengeintro, int deposit, int maxchallenger, String category, String thumbnailpath,
			String thumbnailname, String memberid) {
		super();
		this.challengeno = challengeno;
		this.challengetitle = challengetitle;
		this.onoffchoice = onoffchoice;
		this.offlineaddress = offlineaddress;
		this.offlineaddressdetail = offlineaddressdetail;
		this.offlinestarttime = offlinestarttime;
		this.challengefrequency = challengefrequency;
		this.challengestartdate = challengestartdate;
		this.challengeenddate = challengeenddate;
		this.challengeperiod = challengeperiod;
		this.certificationstarttime = certificationstarttime;
		this.certificationendtime = certificationendtime;
		this.successimgpath = successimgpath;
		this.successimgname = successimgname;
		this.failimgpath = failimgpath;
		this.failimgname = failimgname;
		this.certificationway = certificationway;
		this.challengeintro = challengeintro;
		this.deposit = deposit;
		this.maxchallenger = maxchallenger;
		this.category = category;
		this.thumbnailpath = thumbnailpath;
		this.thumbnailname = thumbnailname;
		this.memberid = memberid;
	}
	public makingChallengeDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
