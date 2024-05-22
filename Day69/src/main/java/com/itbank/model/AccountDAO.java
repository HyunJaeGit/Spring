package com.itbank.model;

import java.sql.ResultSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.itbank.model.vo.AccountVO;

@Repository
public class AccountDAO {
	
	RowMapper<AccountVO> rowMapper = (ResultSet rs, int rowNum) -> {
		AccountVO row = new AccountVO();
		
		row.setEmail(rs.getString("email"));
		row.setUserid(rs.getString("userid"));
		row.setUserpw(rs.getString("userpw"));
		row.setNick(rs.getString("nick"));
		row.setIdx(rs.getInt("idx"));
		row.setJoin_date(rs.getDate("join_date"));
		
		return row;
	};
	
	@Autowired
	private JdbcTemplate jt;
	
	public String test() {
		String sql = "select banner from v$version";		
		return jt.queryForObject(sql, String.class);
	}
	
	public List<AccountVO> selectAll() {
		String sql = "select * from account order by idx desc";	
		return jt.query(sql, rowMapper);
		// - query() : 복수 행 조회
	}

	public AccountVO selectOne(int idx) {		
		String sql = "select * from account where idx = ?";
		return jt.queryForObject(sql, rowMapper, idx);
		// - queryForObject() : 단건 행 조회
	}
	
	public int insert(AccountVO input) {
		String sql = "insert into "
				+ "account(userid, userpw, nick, email) "
				+ "values(?,?,?,?)";
		
		return jt.update(sql, input.getUserid(),
				input.getUserpw(), input.getNick(), 
				input.getEmail()); 
		// - update() : 테이블에 행 삽입/수정/삭제를 수행
	}
	
	public int update(AccountVO input) {
		String sql = "update account "
				+ "set userid = ?, userpw = ?, nick = ?, email = ? "
				+ "where idx = ?";
		
		return jt.update(sql, input.getUserid(),
				input.getUserpw(), input.getNick(), 
				input.getEmail(), input.getIdx()); 
		// - update() : 테이블에 행 삽입/수정/삭제를 수행
	}
	
	public int delete(int idx) {
		
		String sql = "delete from account where idx = ?";
		
		return jt.update(sql, idx);
	}
	
	
	
	
	
	
	
	
	
	
	
}
