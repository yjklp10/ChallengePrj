package com.example.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface BoardFileRepository extends JpaRepository{
	static final String SELECT_FILE_ID="SELECT ID FROM board_file"+
			"WHERE BOARD_ID=:boardId AND DELETE_YN != 'Y'";

			static final String UPDATE_DELETE_YN="UPDATE board_file"+
			"SET DELETE_YN='Y'"+
			"WHERE ID IN(:deleteList)";

			static final String DELETE_BOARD_FILE_YN="UPDATE board_file"+
			"SET DELETE_YN='Y'"+
			"WHERE BOARD_ID IN(:boardIdList)";


			@Query(value=SELECT_FILE_ID, nativeQuery=true)
			public List<Long> findByBoardId(@Param("boardId") Long boardId);
}
