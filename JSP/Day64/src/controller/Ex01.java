package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// �Ʒ� Ŭ������ ����Ǵ� ������̼�
// - �ش� Ŭ������ �������� ����ϰ� ���� URL ���α��� �Ѵ�
@WebServlet("/test1")
public class Ex01 extends HttpServlet {

	private static final long serialVersionUID = -6938631786266343206L;
	
	// do�ż��� : �ش� http ��û �޼���� ��û�� ����Ǵ� �޼���
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/WEB-INF/ex01.jsp");
		
		request.setAttribute("msg", "Servlet���� ������ ������ �Դϴ�~");
		
		rd.forward(request, response);
	}
	
	// ���� URL�� ��û �Ǵ��� �޼��带 ���� �����ϸ� ���� URL�̶� �ٸ� �ڵ带 �ۼ��� �� �ִ�
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		// 1. ���ϴ� ������ �ۼ�
		String name = request.getParameter("name");
		String result = "���� ���� �̸��� " + name + " �Դϴ�";
		
		// 2. View���� ����� �ϹǷ� Attribute�� ����
		request.setAttribute("result", result);
		
		// 3. ������� ������ View �������� �̵�
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/WEB-INF/ex01_result.jsp");
		
		rd.forward(request, response);
	}
}
