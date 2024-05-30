package com.itbank.model;

import java.util.List;

import com.itbank.model.vo.BoardVO;

public interface BoardDAO {

	List<BoardVO> selectAll();

	BoardVO selectOne(int idx);

	int insert(BoardVO input);

}
