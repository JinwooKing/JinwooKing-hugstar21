package com.jinstar.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
	List<HashMap<String, Object>> getBoardList(HashMap<String, Object>map);
}
