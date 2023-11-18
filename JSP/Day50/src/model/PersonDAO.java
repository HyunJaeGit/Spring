package model;

import java.util.ArrayList;
import java.util.List;

import beans.PersonVO;

public class PersonDAO extends DAO {
	
	public List<PersonVO> selectALL() {
		
		String sql = "select * from person";

		List<PersonVO> list = new ArrayList<>();
		
		try {
			conn = ds.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				PersonVO row = new PersonVO();
				
				row.setBirth(rs.getDate("birth"));
				row.setHeight(rs.getInt("height"));
				row.setName(rs.getString("name"));
				
				list.add(row);
			}
			return list;
			
		} catch (Exception e) {
			System.out.println("select ¿¹¿Ü : " + e.getMessage());
		} finally {
			close();
		} return null;

	}
}
