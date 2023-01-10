package com.example.demo.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.CommentDto;
import com.example.demo.mapper.CommentMapper;
@Service
public class CommentBizImple implements CommentBiz{

	@Autowired
	private CommentMapper mapper;
	
	@Override
	public List<CommentDto> commentListService(int challengeno) {
		return mapper.commentList(challengeno);
	}

	@Override
	public int commentInsertService(CommentDto comment) {
		return mapper.commentInsert(comment);
	}

	@Override
	public int commentUpdateService(CommentDto comment) {
		return mapper.commentUpdate(comment);
	}

	@Override
	public int commentDeleteService(int cno) {
		return mapper.commentDelete(cno);
	}

}
