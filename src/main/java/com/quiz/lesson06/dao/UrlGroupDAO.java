package com.quiz.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson06.model.UrlGroup;

@Repository
public interface UrlGroupDAO {

	public List<UrlGroup> selectUrlGroup();
	
	public void addUrl(
			@Param("name") String name
			,@Param("url") String url);
	// 이렇게 넘기면 map이 되는 것이다.
	
	public boolean existUrlGroupByName(String urlCheck);
}
