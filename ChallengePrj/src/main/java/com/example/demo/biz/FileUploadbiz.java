package com.example.demo.biz;

import java.util.List;

import com.example.demo.dto.AttachImageDto;

public interface FileUploadbiz {
public int insert(AttachImageDto dto);
public List<AttachImageDto> getAttachList();
}
