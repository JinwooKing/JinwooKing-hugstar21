package com.jinstar.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
	List<HashMap<String, Object>> selectBoardList(HashMap<String, Object>map);

	HashMap<String, Object> selectBoardDetail(HashMap<String, Object> map);

	int insertBoard(HashMap<String, Object> map);

	int deleteBoard(HashMap<String, Object> map);

	int updateBoard(HashMap<String, Object> map);
}
