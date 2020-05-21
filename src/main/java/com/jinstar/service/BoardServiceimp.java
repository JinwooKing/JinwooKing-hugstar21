package com.jinstar.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinstar.mapper.BoardMapper;

@Service("boardService")
public class BoardServiceimp implements BoardService {

	@Autowired
	private BoardMapper boardMapper;
	
	@Override
	public List<HashMap<String, Object>> getBoardList(HashMap<String, Object> map) {
		return boardMapper.getBoardList(map);
	}

	@Override
	public HashMap<String, Object> getBoardDetail(HashMap<String, Object> map) {
		return boardMapper.getBoardDetail(map);
	}
}
