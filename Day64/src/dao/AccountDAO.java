package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.AccountVO;

public class AccountDAO extends DAO {

	private AccountVO mapper(ResultSet rs) throws SQLException {
		AccountVO row = new AccountVO();
		
		row.setEmail(rs.getString("email"));
		row.setIdx(rs.getInt("idx"));
		row.setJoin_date(rs.getDate("join_date"));
		row.setNick(rs.getString("nick"));
		row.setUserid(rs.getString("userid"));
		row.setUserpw(rs.getString("userpw"));
		
		return row;
	}
	
	public List<AccountVO> selectAll() {
		String sql = "select * from account order by idx desc";
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			List<AccountVO> list = new ArrayList<>();
			
			while (rs.next()) {
				list.add(mapper(rs));
			}
			
			return list;
			
		} catch (SQLException e) {
			System.out.println("selectAll �삁�쇅 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
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
			System.out.println("selectOne예외 : " + e.getMessage());
		} finally {
			close();
		}
		
		
		return null;
	}
	
}
