package controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.BoardVO;
import model.BoardDAO;

@WebServlet("/write")
public class Write extends HttpServlet {

	private static final long serialVersionUID = -3115426613660616889L;
	private String path = "/WEB-INF/board/";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
	
		request
			.getRequestDispatcher(path + "write.jsp")
			.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		BoardVO input = new BoardVO();
		input.setTitle(request.getParameter("title"));
		input.setContents(request.getParameter("contents"));
		input.setWriter(request.getParameter("writer"));
		
		String cpath = request.getContextPath();
		BoardDAO dao = new BoardDAO();
		
		int row = dao.insert(input);
		System.out.println(row != 0 ? "성공" : "실패");
		
		response.sendRedirect(cpath);
	}
}
