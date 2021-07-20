package com.quiz.lesson03.real_estatebo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.model.Real_estate;
import com.quiz.lesson03.real_estatedao.Real_estateDAO;

@Service
public class Real_estateBO {
	
	@Autowired // 자동으로 연결해준다는 의미. 객체를 만들 때 new를 쓰는 것과 같다.
	private Real_estateDAO real_estateDAO;
	
	public Real_estate getReal_estate(int id) {
		return real_estateDAO.selectReal_estate(id);
		// Controller와 마찬가지로 값을 DAO에게 받아온 값을 리턴한다.
		// 여기서는 데이터를 가공하지 않기 때문에 그대로 return한다.
	}
	
	public Real_estate getReal_estate(Integer rentPrice) { 
		// getRealEstateListByRentPrice식으로 이름을 짓는다고 한다. 메소드 명이 긴 것은 문제가 되지 않는다.
		return real_estateDAO.selectReal_estate(rentPrice);
	}
	
	public List<Real_estate> getReal_estate(int area, int price) {
		return real_estateDAO.selectReal_estate(area, price);
	}
	
	public int insertReal_estate(Real_estate realestate) {
		return real_estateDAO.insertReal_estate(realestate);
	}
	
	public int insertRealestateAsField(int realtorId, String address, int area,
			String type, int price, Integer rentPrice) {
		return real_estateDAO.insertRealestateAsField(realtorId, address, area, type, price, rentPrice);
	}
	
	public int updateRealestate(int id, int price, String type) {
		return real_estateDAO.updateRealestate(id,price, type);
	}
	
	public int deleteRealestate(int id) {
		return real_estateDAO.deleteRealestate(id);
	}
}
