package com.jinstar.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SearchMapper {

	public int selectSearchTotalCount(HashMap<String, Object> map);

	public List<HashMap<String, Object>> selectSearchList(HashMap<String, Object> map);

}
