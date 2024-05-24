package com.itbank.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.itbank.model.vo.ReplyVO;

public interface ReplyDAO {

	@Select("select * from reply where board_idx = #{idx} order by idx desc")
	public abstract List<ReplyVO> replyAll(int idx);

	@Insert("insert into reply (writer, contents, board_idx) values (#{writer}, #{contents}, #{board_idx})")
	int insertRep(ReplyVO input);
	
	@Delete("delete from reply where idx = #{idx}")
	int deleteRep(int idx);
	
}
