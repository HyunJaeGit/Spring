package beans;

/*
	Java Beans
	
	- �ʵ�� private, �޼���� public
	- �⺻ ������ �ʼ�
	- getter, setter �ۼ�


*/


// public �޼���
public class Person {

	// �ʵ�
	private String name;
	private int age;
	private double height;
	
	
	// �⺻������
	public Person() {
		
	}
	
	
	// getter setter
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	
	
	
}
