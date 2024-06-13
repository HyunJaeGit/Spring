package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.BoardVO;
import com.itbank.model.vo.BookVO;

public interface BoardDAO {

	@Select("select * from board order by idx desc")
	List<BoardVO> selectAll();

	int insert(BoardVO input);

	int update(BoardVO input);

	int updateTitle(BoardVO input);

	@Delete("delete from board where idx = #{idx}")
	int delete(int idx);

	@Select("select * from board where idx = #{idx}")
	BoardVO selectOne(int idx);

}
