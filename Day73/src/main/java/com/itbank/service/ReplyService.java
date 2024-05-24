package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.ReplyDAO;
import com.itbank.model.vo.ReplyVO;


@Service
public class ReplyService {
	
	@Autowired
	private ReplyDAO req;
	
	public List<ReplyVO> replyAll(int idx) {
		return req.replyAll(idx);
	}

	public int insertRep(ReplyVO input) {
		return req.insertRep(input);
	};
	
	public int delete(int idx) {
		return req.deleteRep(idx);
	}

	public List<ReplyVO> getReplys(int idx) {

		return req.replyAll(idx);
	}
	
}
