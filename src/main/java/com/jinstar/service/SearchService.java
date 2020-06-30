package com.jinstar.service;

import java.util.HashMap;
import java.util.List;

public interface SearchService {

	int selectSearchTotalCount(HashMap<String, Object> map);

	List<HashMap<String, Object>> selectSearchList(HashMap<String, Object> map);

}
