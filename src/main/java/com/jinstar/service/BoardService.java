package com.jinstar.service;

import java.util.HashMap;
import java.util.List;

public interface BoardService {

	List<HashMap<String, Object>> getBoardList(HashMap<String, Object> map);

	HashMap<String, Object> getBoardDetail(HashMap<String, Object> map);

}
