package controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;


@WebServlet("/board")
public class Board extends HttpServlet {

	private static final long serialVersionUID = 303478390877847708L;
	private String path = "/WEB-INF/board/";
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		int idx = Integer.parseInt(request.getParameter("idx"));
		
		BoardDAO dao = new BoardDAO();
		
		request.setAttribute("row", dao.selectOne(idx));
		
		request
			.getRequestDispatcher(path + "view.jsp")
			.forward(request, response);
	}
		
	
}
