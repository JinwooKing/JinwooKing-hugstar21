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
	public List<HashMap<String, Object>> selectBoardList(HashMap<String, Object> map) {
		return boardMapper.selectBoardList(map);
	}

	@Override
	public HashMap<String, Object> selectBoardDetail(HashMap<String, Object> map) {
		return boardMapper.selectBoardDetail(map);
	}

	@Override
	public int insertBoard(HashMap<String, Object> map) {
		return boardMapper.insertBoard(map);
	}

	@Override
	public int deleteBoard(HashMap<String, Object> map) {
		return boardMapper.deleteBoard(map);
	}

	@Override
	public int updateBoard(HashMap<String, Object> map) {
		return boardMapper.updateBoard(map);
	}

	@Override
	public int updateHit(HashMap<String, Object> map) {
		return boardMapper.updateHit(map);
	}

	@Override
	public int selectBoardTotalCount(HashMap<String, Object> map) {
		return boardMapper.selectBoardTotalCount(map);
	}
}
