package model;

import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.AccountVO;
import service.SHA512;

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
	
	public Map<String, Object> selectAll() {
		String sql = "select * from account "
						+ "order by idx desc";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			List<AccountVO> list = new ArrayList<>();
			
			while (rs.next()) {
				list.add(mapper(rs));
			}
			
			Map<String, Object> result = new HashMap<>();
			result.put("list", list);
			
			return result;
			
		} catch (SQLException e) {
			System.out.println("selectAll 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
	
	public AccountVO selectOne(AccountVO input) {
		String sql = "select * from account "
				+ "where userid = ? and userpw = ?";
		
		try {
			String pw = SHA512.getHash(input.getUserpw());
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			return mapper(rs);
			
		} catch (SQLException | NoSuchAlgorithmException e) {
			System.out.println("selectOne 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}

	public int insert(AccountVO input) {
		String sql = "insert into "
				+ "account(userid, userpw, nick, email) "
				+ "values(?, ?, ?, ?)";
		
		try {
			String pw = SHA512.getHash(input.getUserpw());
			
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, pw);
			pstmt.setString(3, input.getNick());
			pstmt.setString(4, input.getEmail());
			
			return pstmt.executeUpdate();
			
		} catch (SQLException | NoSuchAlgorithmException e) {
			System.out.println("insert 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}
}
