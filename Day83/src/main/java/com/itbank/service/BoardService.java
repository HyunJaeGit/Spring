package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.model.BoardDAO;
import com.itbank.model.vo.BoardVO;

@Service
public class BoardService {
	
	@Autowired private BoardDAO dao;

	@Value("file:E:/boardImg/")
	private Resource dir;
	
	public List<BoardVO> getBoards() {
		return dao.selectAll();
	}

	
//	1) 파일 이름 + 확장자		
//	System.out.println(input.getUpload().getOriginalFilename());	// dora.png
	
	
//	2) 파일 확장자 자르기
//	슬라이싱으로 확장자를 잘라서 이용
//	System.out.println(file.getContentType());					// image/png	
//	System.out.println(file.getContentType().indexOf("/"));		// 5
//	System.out.println(file.getContentType().
//	substring(0, file.getContentType().indexOf("/")));			// image
	public int addBoard(BoardVO input) throws IOException {
		
		
		MultipartFile file = input.getUpload();
		input.setImg(input.getUpload().getOriginalFilename());
		
		int row = dao.insert(input);
		String idx = dao.selectIdx();
		
		File newDir = new File(dir.getFile(), idx);
		newDir.mkdir();
		
		File dst = new File(newDir, file.getOriginalFilename());
		file.transferTo(dst);
		
		return row;
	}


	public BoardVO getBoard(int idx) {
		return dao.selectOne(idx);
	}


	public int delete(int idx) throws IOException {
		// 디렉토리를 파일 클래스의 객체로 만들어서 변수에 저장한다.
		File delDir = new File(dir.getFile(), Integer.toString(idx));
		
		
		// 해당 디렉토리의 파일들을 반복으로 가져옴(listFiles() : 파일리스트 호출)
		for (File file : delDir.listFiles()) {
			file.delete();		// delete() : 파일or 디렉토리 제거
			
		}
		
		delDir.delete();		// 디렉토리는 파일을 지우고 그다음 제거
		System.out.println("삭제됨??? " + delDir.delete());
		
		return dao.delete(idx);
	}

	public int updateBoard(BoardVO input) throws IOException {
		// 1. DAO에 전달할 파일명(img) 지정
		MultipartFile file = input.getUpload();
		input.setImg(file.getOriginalFilename());
		
		// 2. 수정할 게시글 이미지 경로를 지정
		int idx = input.getIdx();
		File files = new File(dir.getFile(), Integer.toString(idx));
		File dst = new File(files, file.getOriginalFilename());
		
		// 3. 해당 폴더 안의 파일 모두를 변경
		for (File f : files.listFiles()) {
			f.renameTo(dst);
		}
		
		// 4. 수정할 파일을 업로드
		file.transferTo(dst);
		
		return dao.update(input);
	}
		
}
