/*
package com.example.demo.Service;

import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dto.Testchallenge;
import com.example.demo.entity.BoardEntity;

import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.demo.repository.BoardRepository;

import java.util.Optional;

import java.util.ArrayList;
import java.util.List;

@Service
public class BoardService {


	
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
