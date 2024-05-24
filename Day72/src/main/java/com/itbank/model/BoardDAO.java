package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itbank.model.vo.BoardVO;

public interface BoardDAO {

	// board.xml (root-context에서 지정한 경로의 xml)에서 지정한 메서드
	
	String test();
	
	List<BoardVO> selectAll();

	int insert(BoardVO input);

	BoardVO selectOne(int idx);

	public abstract int update(BoardVO input);

	public abstract int delete(int idx);

}
