package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.AccountVO;
import dao.AccountDAO;
import service.SHA512;

@WebServlet("/quiz3")
public class Quiz3 extends HttpServlet {

	private static final long serialVersionUID = -6663101967559804549L;
	private String path = "/WEB-INF/";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		RequestDispatcher rd;
		rd = request.getRequestDispatcher(path + "quiz3.jsp");
		
		rd.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		
		userpw = SHA512.getHash(userpw);
		
		AccountVO input = new AccountVO();
		
		input.setUserid(userid);
		input.setUserpw(userpw);
		
		AccountDAO dao = new AccountDAO();
		input = dao.selectOne(input);
		
//		System.out.println(input.getNick());
		
		if (input != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", input);
		}
		
		response.sendRedirect("quiz3");
		
	}
	

	protected void doDelete(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		
//		System.out.println("delete ø‰√ª!");
	}
}
