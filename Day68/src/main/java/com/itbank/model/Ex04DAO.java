package com.itbank.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.itbank.model.vo.PersonVO;

@Repository		// 저장소 관련(DB) 처리하는 스프링 빈
public class Ex04DAO {

	@Autowired
	private JdbcTemplate jt;
	
	public String banner() {
		
		String sql = "select banner from v$version";
		
		return jt.queryForObject(sql, String.class);
	}
	
	public List<PersonVO> selectAll() {
		String sql = "select * from person";
		
		RowMapper<PersonVO> rowMapper = (ResultSet rs, int rowNum) -> {
			PersonVO row = new PersonVO();
			
			row.setName(rs.getString("name"));
			row.setBirth(rs.getDate("birth"));
			row.setHeight(rs.getDouble("height"));
			
			return row;
		};
		
		return jt.query(sql, rowMapper);
		
	}
	
}
