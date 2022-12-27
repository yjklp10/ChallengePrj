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
@Getter
@Entity
public class BoardFile {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private Long id;
private Long boardid;
private String orignFileName;
private String saveFileName;
private int fileSize;
private String fileExt;
private String filePath;
private String deleteYn;

@CreatedDate
private LocalDateTime registerTime;

@Builder
public BoardFile(Long id,Long boardid, String orginFileName, String saveFileName, 
		int fileSize, String fileExt, String filePath,String deleteYn, LocalDateTime registerTime ) {
	this.id=id;
	this.boardid=boardid;
	this.orignFileName=orignFileName;
	this.saveFileName=saveFileName;
	this.fileSize=fileSize;
	this.fileExt=fileExt;
	this.filePath=filePath;
	this.deleteYn=deleteYn;
	this.registerTime=registerTime;
}






}
