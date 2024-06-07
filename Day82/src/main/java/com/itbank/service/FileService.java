package com.itbank.service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;	// 인터페이스 Resource
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.model.FileDAO;
import com.itbank.model.vo.FileVO;

@Service
public class FileService {
	/*
	 @Value : 외부의 설정을 필드에 쓰려고할때 사용
 		- classpath 			= 프로젝트 첫페이지의 classpath가 참조하는 경로
 		- file: 				= 최상위 경로(C드라이브 or D드라이브 or E드라이브)
	 	- file:C:/springUpload 	= C드라이브부터 참조
	*/
	@Value("file:E:\\springUpload")
	private Resource rs;
	
	@Autowired
	private FileDAO dao;
	
	/*
	 1)  
		- 파일들을 불러오기 구현 
	 	- 클릭시 다운로드 구현 
	 */
	public File[] getDir() throws IOException {
		File dir = rs.getFile();
		
		/**
		System.out.println("존재하는가?" + dir.exists());
		System.out.println("파일인가?" + dir.isFile());
		System.out.println("폴더인가?" + dir.isDirectory());
		*/
		
		if (dir.exists() == false) {	// 존재하지 않으면
			dir.mkdir();				// 폴더를 생성하라
		}
		for (File file : dir.listFiles()) {
			System.out.println(file.getName());	// console에 filename 출력
		}
		return dir.listFiles();
	}
	
	// 2) 업로드 구현
	public void fileUpload(MultipartFile upload) throws IOException {
		File dest = new File(rs.getFile(), upload.getOriginalFilename());
		upload.transferTo(dest);
	}
	
	// 3) 이름 재설정 업로드 구현 (오버로딩)
	public void fileUpload(MultipartFile upload, String name) throws IOException {
		
		// a) 이름 설정
		String oName = upload.getOriginalFilename();
		String ext = oName.substring(oName.lastIndexOf("."));
		
		name = ("".equals(name)) ? oName : name + ext; 	// ※input에서 값을 작성하지 않고 보내면 null이 아닌 빈문자열
		
		// b) 파일(파일, 이름) 객체 생성
		File dest = new File(rs.getFile(), name);
		
		// c) 업로드, 생성
		upload.transferTo(dest);
	}

	// 4) DB에 업로드 구현 (오버로딩)
	public void fileUpload(FileVO input) throws IOException {
		MultipartFile file = input.getUpload();
		
		input.setPath(rs.getFilename());
		input.setName(file.getOriginalFilename());
		
		dao.insert(input);
	}
	
}
