package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.BoardVO;

public interface BoardDAO {

	@Select("select banner from v$version")
	String test();

	@Select("select * from img_board order by idx desc")
	List<BoardVO> selectAll();

	int insert(BoardVO input);

	@Select("select * from img_board where idx = #{idx}")
	BoardVO selectOne(int idx);

	@Delete("delete from img_board whre idx = #{idx}")
	int delete(int idx);

	String selectIdx();

	int update(BoardVO input);
}
