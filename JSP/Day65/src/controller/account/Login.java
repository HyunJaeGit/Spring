package controller.account;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AccountDAO;
import beans.AccountVO;

@WebServlet("/login")
public class Login extends HttpServlet {

	private static final long serialVersionUID = 95756138028678929L;
	private String path = "/WEB-INF/account/";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request
			.getRequestDispatcher(path + "login.jsp")
			.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String cpath = request.getContextPath();
		AccountVO input = new AccountVO();
		
		input.setUserid(request.getParameter("userid"));
		input.setUserpw(request.getParameter("userpw"));
		
		AccountDAO dao = new AccountDAO();
		input = dao.selectOne(input);
		
		if (input != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", input);
		}
		
		response.sendRedirect(cpath);
	}
}
