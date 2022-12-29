package com.example.entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.data.annotation.CreatedDate;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access= AccessLevel.PROTECTED)
@Entity
public class BoardFile {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private Long Id;
private Long boardid;
private String orignFileName;
private String saveFileName;
private int fileSize;
private String fileExt;
private String filePath;
private String deleteYn;

@CreatedDate
private LocalDateTime registerTime;



public BoardFile(Long Id, Long boardid, String orignFileName, String saveFileName, int fileSize, String fileExt,
		String filePath, String deleteYn, LocalDateTime registerTime) {
	this.Id = Id;
	this.boardid = boardid;
	this.orignFileName = orignFileName;
	this.saveFileName = saveFileName;
	this.fileSize = fileSize;
	this.fileExt = fileExt;
	this.filePath = filePath;
	this.deleteYn = deleteYn;
	this.registerTime = registerTime;
}


public Long getId() {
	return Id;
}


public Long getBoardid() {
	return boardid;
}


public String getOrignFileName() {
	return orignFileName;
}


public String getSaveFileName() {
	return saveFileName;
}


public int getFileSize() {
	return fileSize;
}


public String getFileExt() {
	return fileExt;
}


public String getFilePath() {
	return filePath;
}


public String getDeleteYn() {
	return deleteYn;
}


public LocalDateTime getRegisterTime() {
	return registerTime;
}






}
