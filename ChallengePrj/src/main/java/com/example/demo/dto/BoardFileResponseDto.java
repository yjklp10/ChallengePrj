package com.example.demo.dto;

import com.example.entity.BoardFile;

public class BoardFileResponseDto {
	private String orignFileName;
	private String saveFileName;
	private String filePath;

	public BoardFileResponseDto(BoardFile entity) {
		this.orignFileName=entity.getOrignFileName();
		this.saveFileName=entity.getSaveFileName();
		this.filePath=entity.getFilePath();
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






	@Override
	public String toString() {
		return "BoardFileResponseDto [orignFileName=" + orignFileName + ", saveFileName=" + saveFileName + ", filePath="
				+ filePath + "]";
	}
	
	

}
