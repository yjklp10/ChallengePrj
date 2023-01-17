package com.example.demo.biz;

import java.util.List;

import com.example.demo.dto.CommentDto;


public interface CommentBiz {

	public List<CommentDto> commentListService(int challengeno);
    
    public int commentInsertService(CommentDto comment);
    
    public int commentUpdateService(CommentDto comment);
    
    public int commentDeleteService(int cno);
}
