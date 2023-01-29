package com.example.demo.dto;

public class AttachImageDto {
	private String uploadFilePath;

	private String uuid;

	private String fileName;

	private int bookId;
	
	private String challengetitle;
	
	private String memberid;

	public  AttachImageDto() {
		super();
	}

	public AttachImageDto(String uploadFilePath, String uuid, String fileName, int bookId, String challengetitle,
			String memberid) {
		super();
		this.uploadFilePath = uploadFilePath;
		this.uuid = uuid;
		this.fileName = fileName;
		this.bookId = bookId;
		this.challengetitle = challengetitle;
		this.memberid = memberid;
	}

	public String getUploadFilePath() {
		return uploadFilePath;
	}

	public void setUploadFilePath(String uploadFilePath) {
		this.uploadFilePath = uploadFilePath;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getChallengetitle() {
		return challengetitle;
	}

	public void setChallengetitle(String challengetitle) {
		this.challengetitle = challengetitle;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	@Override
	public String toString() {
		return "AttachImageDto [uploadFilePath=" + uploadFilePath + ", uuid=" + uuid + ", fileName=" + fileName
				+ ", bookId=" + bookId + ", challengetitle=" + challengetitle + ", memberid=" + memberid + "]";
	}
	
}
