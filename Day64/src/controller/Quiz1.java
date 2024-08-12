package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/quiz1")
public class Quiz1 extends HttpServlet {

	private static final long serialVersionUID = -613317442586327402L;
	private String path = "/WEB-INF";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher(path + "/quiz1.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		// String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		String adult = age >= 19 ? "성인" : "미성년자";
		request.setAttribute("result", adult);

		RequestDispatcher rd = request.getRequestDispatcher(path + "/quiz1_result.jsp");
		rd.forward(request, response);
	}
	
	
}
