package com.quiz.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.UrlGroupDAO;
import com.quiz.lesson06.model.UrlGroup;

@Service
public class UrlGroupBO {

	// autowired는 항상 상단에 적어준다.
	@Autowired
	private UrlGroupDAO urlGroupDAO;
	// 두 개 이상을 불러와야 하는 경우 만약 실행값이 null이 뜬다면 annotation에 문제가 있다는 것이다. 따라서 @Autowired를 각각 붙여야 한다.
	
	public List<UrlGroup> getUrlGroup(){
		return urlGroupDAO.selectUrlGroup();
	}
	
	public void addUrl(String name, String url) {
		urlGroupDAO.addUrl(name,url);
	}
	
	public boolean existUrlGroupByName(String urlCheck) {
		return urlGroupDAO.existUrlGroupByName(urlCheck);
	}
	
	public int deleteUrlById(int id) {
		return urlGroupDAO.urlGroupDAOById(id);
	}
}
