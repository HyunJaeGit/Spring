package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.itbank.conponents.Paging;
import com.itbank.model.vo.BoardVO;

public interface BoardDAO {

	String test();
	
	// board.xml (root-context에서 지정한 경로의 xml)에서 지정한 메서드
	@Select("select count(*) from board")
	int totalBoard();
	
	List<BoardVO> selectAll(Paging p);

	Integer insert(BoardVO input);

	BoardVO selectOne(int idx);

	int update(BoardVO input);

	@Delete("delete from board where idx = #{idx}")
	int delete(int idx);
	
	void viewUpdate(int idx);

	int getTotalBoard();

	
	
}
