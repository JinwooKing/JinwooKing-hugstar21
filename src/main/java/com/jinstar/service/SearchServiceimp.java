package com.jinstar.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jinstar.mapper.SearchMapper;

@Service("searchService")
public class SearchServiceimp implements SearchService{

	@Autowired
	private SearchMapper SearchMapper;
	
	@Override
	public int selectSearchTotalCount(HashMap<String, Object> map) {
		return SearchMapper.selectSearchTotalCount(map);
	}

	@Override
	public List<HashMap<String, Object>> selectSearchList(HashMap<String, Object> map) {
		return SearchMapper.selectSearchList(map);
	}
}
