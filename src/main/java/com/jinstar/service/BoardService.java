package com.jinstar.service;

import java.util.HashMap;
import java.util.List;

public interface BoardService {

	List<HashMap<String, Object>> selectBoardList(HashMap<String, Object> map);

	HashMap<String, Object> selectBoardDetail(HashMap<String, Object> map);

	int insertBoard(HashMap<String, Object> map);

	int deleteBoard(HashMap<String, Object> map);

	int updateBoard(HashMap<String, Object> map);

	

}
