package com.example.dto;

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
	@Override
	public String toString() {
		return "File";
	}
}
