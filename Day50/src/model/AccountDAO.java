package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.AccountDTO;

public class AccountDAO extends DAO {
	
	private AccountDTO mapper(ResultSet rs) throws SQLException {

		AccountDTO row = new AccountDTO();

		row.setEmail(rs.getString("email"));
		row.setIdx(rs.getInt("idx"));
		row.setJdate(rs.getDate("jdate"));
		row.setNick(rs.getString("nick"));
		row.setUserid(rs.getString("userid"));
		row.setUserpw(rs.getString("userpw"));

		return row;
	}
	
	public List<AccountDTO> selectALL() {
		
		String sql = "select * from account order by idx asc";

		List<AccountDTO> list = new ArrayList<>();
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				AccountDTO row = new AccountDTO();
				
				row.setIdx(rs.getInt("idx"));
				row.setUserid(rs.getString("userid"));
				row.setUserpw(rs.getString("userpw"));
				row.setNick(rs.getString("nick"));
				row.setEmail(rs.getString("email"));
				row.setJdate(rs.getDate("jdate"));
				
				list.add(row);
			}
			return list;
			
		} catch (Exception e) {
			System.out.println("select 예외 : " + e.getMessage());
		} finally {
			close();
		} return null;

	}

	public AccountDTO selectOne(AccountDTO user) {
		String sql = "select * from account "
						+ "where userid = ? and userpw = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, user.getUserid());
			pstmt.setString(2, user.getUserpw());
			
			rs = pstmt.executeQuery();
			rs.next();
			
			return mapper(rs);
			
			} catch (SQLException e) {
				System.out.println("selectOne 예외 : " + e.getMessage());
				
			} finally {
				close();
			}
			
			return null;
		}

	public int insert(AccountDTO user) {
		
		String sql = "insert into "
						+ "account(userid, userpw, nick, email) "
						+ "values(?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, user.getUserid());
			pstmt.setString(2, user.getUserpw());
			pstmt.setString(3, user.getNick());
			pstmt.setString(4, user.getEmail());
			
			return pstmt.executeUpdate();
			
		} catch(SQLException e) {
			System.out.println("insert 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}

	public int delete(int idx) {
		
		String sql = "delete from account where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			return pstmt.executeUpdate();
			
		} catch(SQLException e) {
			System.out.println("insert 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return 0;
	}

	public int update(AccountDTO user) {
		String sql = "update account set userpw = ?, email = ? where idx = ?";
		
		try {
	        conn = ds.getConnection();
	        pstmt = conn.prepareStatement(sql);
	        
	        pstmt.setString(1, user.getUserpw());
	        pstmt.setString(2, user.getEmail());
	        pstmt.setInt(3, user.getIdx());
	        
	        return pstmt.executeUpdate();
	        
	    } catch(SQLException e) {
	        System.out.println("update 예외: " + e.getMessage());
	        
	    } finally {
	        close();
	    }
	    
	    return 0;
	}

	public String selectUserid(String email) {
		
		String sql = "select userid from account where email = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, email);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			return rs.getString("userid");
			
		} catch (Exception e) {
			System.out.println("selectUserid 예외 : " + e.getMessage());
		} finally {
			close();
		}
		
		return null;
	}
	
	public AccountDTO findPw(AccountDTO input) {
		String sql = "select * from account "
						+ "where userid = ? and email = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, input.getUserid());
			pstmt.setString(2, input.getEmail());
			
			rs = pstmt.executeQuery();
			rs.next();
			
			return mapper(rs);
			
		} catch (SQLException e) {
			System.out.println("findPw 예외 : " + e.getMessage());
			
		} finally {
			close();
		}
		
		return null;
	}
	
}
