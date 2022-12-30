package com.example.demo.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


public class BoardFileRequestDto {
	private Long id;
	private Long[] idArr;
	private String fileid;
	public Long getId() {
		return id;
	}
	
	public BoardFileRequestDto(Long id, Long[] idArr, String fileid) {
		this.id = id;
		this.idArr = idArr;
		this.fileid = fileid;
	}
	
	
	public void setId(Long id) {
		this.id = id;
	}
	public Long[] getIdArr() {
		return idArr;
	}
	public void setIdArr(Long[] idArr) {
		this.idArr = idArr;
	}
	public String getFileid() {
		return fileid;
	}
	public void setFileid(String fileid) {
		this.fileid = fileid;
	}
	
	
	
}
