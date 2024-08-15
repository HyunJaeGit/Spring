package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;

@WebServlet("/home")
public class Home extends HttpServlet{

	
	private static final long serialVersionUID = 7007251266952782862L;
	private String path = "/WEB-INF/";
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws IOException, ServletException{

		BoardDAO dao = new BoardDAO();
		request.setAttribute("list", dao.selectAll());
		
		request
			.getRequestDispatcher(path + "home.jsp")
			.forward(request, response);
	}
}
