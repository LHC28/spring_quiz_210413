package com.quiz.lesson03.real_estatebo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.model.Real_estate;
import com.quiz.lesson03.real_estatedao.Real_estateDAO;

@Service
public class Real_estateBO {
	
	@Autowired
	private Real_estateDAO real_estateDAO;
	
	public Real_estate getReal_estate(int id) {
		return real_estateDAO.selectReal_estate(id);
	}
	
	public Real_estate getReal_estate(Integer rentPrice) {
		return real_estateDAO.selectReal_estate(rentPrice);
	}
	
	public List<Real_estate> getReal_estate(int area, int price) {
		return real_estateDAO.selectReal_estate(area, price);
	}
}
