package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.AccountVO;

public class AccountDAO extends DAO {

	private AccountVO mapper(ResultSet rs) throws SQLException {
		
		AccountVO row = new AccountVO();
		
		row.setIdx(rs.getInt("idx"));
		row.setUserid(rs.getString("userid"));
		row.setUserpw(rs.getString("userpw"));
		row.setNick(rs.getString("nick"));
		row.setEmail(rs.getString("email"));
		row.setJoin_date(rs.getDate("join_date"));
		
		return row;
	}
	
	public Map<String, Object> selectAll() {
		
		String sql = "select * from account "
					+ "order by idx desc";
		
		try {
			
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<AccountVO> list = new ArrayList<>();
			
			while (rs.next()) {
				
				list.add(mapper(rs));
			}
			
			Map<String, Object> result = new HashMap<>();
			result.put("list", list);
			
			return result;
			
		} catch (Exception e) {
			System.out.println("selectAcc 예외 : " + e.getMessage());
		} finally {
			close();
		} return null;
	}
	
	public AccountVO selectOne(AccountVO input) {
		
		String sql = "select * from account "
				+ "where userid = ? and userpw = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, input.getUserpw());
			rs = pstmt.executeQuery();
			
			rs.next();
			
			return mapper(rs);
			
		} catch (Exception e) {
			System.out.println("로그인예외 : " + e.getMessage());
		} finally {
			close();
		} return null;
	}

}
