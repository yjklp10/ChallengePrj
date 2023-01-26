/*
package com.example.demo.Service;

import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dto.Testchallenge;
import com.example.demo.entity.BoardEntity;
import com.example.demo.repository.BoardRepository;

import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.Optional;

import java.util.ArrayList;
import java.util.List;

@AllArgsConstructor
@Service
public class BoardService {
	private BoardRepository boardRepository;
	
	 private static final int BLOCK_PAGE_NUM_COUNT = 5;  // 블럭에 존재하는 페이지 번호 수
	    private static final int PAGE_POST_COUNT = 4;       // 한 페이지에 존재하는 게시글 수

	    @Transactional
	    public List<Testchallenge> getBoardlist(Integer pageNum) {
	        Page<BoardEntity> page = boardRepository.findAll(PageRequest.of(pageNum - 1, PAGE_POST_COUNT, Sort.by(Sort.Direction.ASC, "createdDate")));

	        List<BoardEntity> boardEntities = page.getContent();
	        List<Testchallenge> boardDtoList = new ArrayList<>();

	        for (BoardEntity boardEntity : boardEntities) {
	            boardDtoList.add(this.convertEntityToDto(boardEntity));
	        }

	        return boardDtoList;
	    }

	    @Transactional
	    public Long getBoardCount() {
	        return boardRepository.count();
	    }
	    
}

	  @Transactional
	    public static List<Testchallenge> searchPosts(String keyword) {
	        List<BoardEntity> boardEntities = boardRepository.findByTitleContaining(keyword);
	        List<Testchallenge> search = new ArrayList<>();

	        if (boardEntities.isEmpty()) return search;

	        for (BoardEntity boardEntity : boardEntities) {
	        	search.add(this.convertEntityToDto(boardEntity));
	        }

	        return search;
	    }

	private Testchallenge convertEntityToDto(BoardEntity boardEntity) {
	    return Testchallenge.builder()
	            .challengeno(boardEntity.getChallengeno())
	            .challengetitle(boardEntity.getChallengetitle())
	            .onoffchoice(boardEntity.getOnoffchoice())
	            .chllengeprequency(boardEntity.getChllengeprequency())
	            .challengeperiod(boardEntity.getChallengeperiod())
	            .challengestartdate(boardEntity.getChallengestartdate())
	            .challengeintro(boardEntity.getChallengeintro())
	            .thumbnailname(boardEntity.getThumbnailname())
	            .thumbnailpath(boardEntity.getThumbnailpath())
	            .build();
	}
}
*/

