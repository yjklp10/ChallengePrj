package com.example.demo.dto;

public class AttachImageDto {
	private String uploadFilePath;

	private String uuid;

	private String fileName;

	private int bookId;

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

	@Override
	public String toString() {
		return "AttachImageDto [uploadFilePath=" + uploadFilePath + ", uuid=" + uuid + ", fileName=" + fileName
				+ ", bookId=" + bookId + "]";
	}

}
