package com.example.entity;

import java.time.LocalDateTime;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import org.springframework.data.annotation.CreatedDate;

public class BoardFile {

	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long Id;
	private Long boardId;
	private String orignFileName;
	private String saveFileName;
	private int fileSize;
	private String fileExt;
	private String filePath;
	private String deleteYn;

	@CreatedDate
	private LocalDateTime registerTime;

	public BoardFile(Long Id, Long boardId, String orignFileName, String saveFileName, int fileSize, String fileExt,
			String filePath, String deleteYn, LocalDateTime registerTime) {
		this.Id = Id;
		this.boardId = boardId;
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


	public Long getBoardId() {
		return boardId;
	}

	public int getFileSize() {
		return fileSize;
	}

	public String getFileExt() {
		return fileExt;
	}

	public String getDeleteYn() {
		return deleteYn;
	}

	public LocalDateTime getRegisterTime() {
		return registerTime;
	}

	public String getOrignFileName() {
		return orignFileName;
	}


	public String getSaveFileName() {
		return saveFileName;
	}


	public String getFilePath() {
		return filePath;
	}



	
	

}
