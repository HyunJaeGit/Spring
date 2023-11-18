package beans;

import java.sql.Date;

public class PersonVO {
	String name;
	int height;
	Date birth;
	
	public PersonVO() {
		
	}
	
	public PersonVO(String name, int height, Date birth) {
		this.name = name;
		this.height = height;
		this.birth = birth;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	
	
	
}
