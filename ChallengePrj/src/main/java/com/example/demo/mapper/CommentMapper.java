package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.CommentDto;
@Repository
@Mapper
public interface CommentMapper {

	public int commentCount();
	public  List<CommentDto> commentList();
	public  int commentInsert(CommentDto comment);
	public int commentUpdate(CommentDto comment);
	public int commentDelete(int cno);
}
