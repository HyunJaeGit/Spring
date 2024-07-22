package service;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import beans.BoardDTO;
import model.BoardDAO;

public class ImgUpload {

	public int test(HttpServletRequest request) throws IOException {
		@SuppressWarnings("deprecation")
		
		// 1. ���ε� �ɼ�
		String save = request.getRealPath("board/img");
		String encoding = "utf-8";
		int size = 1024 * 1024 * 10;
		
		// 5. �ߺ� ����(�ѹ���)
		DefaultFileRenamePolicy drp = new DefaultFileRenamePolicy();
		
		
		// 2. ���ε� ����		
		MultipartRequest mr;
		mr = new MultipartRequest(request, save, size, encoding);
		
//		System.out.println(mr.getParameter("title"));
//		System.out.println(mr.getFile("upload"));
		
		// 3. DAO�� ������ ���� ����
		File file = mr.getFile("upload");
		BoardDTO args = new BoardDTO();
		
		args.setContents(mr.getParameter("contents"));
		args.setImg_path("img/" + file.getName());
		args.setTitle(mr.getParameter("title"));
		args.setWriter(mr.getParameter("writer"));
		
		// 4. DAO�� DB�� ���
		BoardDAO dao = new BoardDAO();
		
		return dao.insert(args);
	}
}
