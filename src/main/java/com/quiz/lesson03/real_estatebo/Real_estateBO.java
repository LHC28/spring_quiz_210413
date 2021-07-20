package com.quiz.lesson03.real_estatebo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.model.Real_estate;
import com.quiz.lesson03.real_estatedao.Real_estateDAO;

@Service
public class Real_estateBO {
	
	@Autowired // �ڵ����� �������شٴ� �ǹ�. ��ü�� ���� �� new�� ���� �Ͱ� ����.
	private Real_estateDAO real_estateDAO;
	
	public Real_estate getReal_estate(int id) {
		return real_estateDAO.selectReal_estate(id);
		// Controller�� ���������� ���� DAO���� �޾ƿ� ���� �����Ѵ�.
		// ���⼭�� �����͸� �������� �ʱ� ������ �״�� return�Ѵ�.
	}
	
	public Real_estate getReal_estate(Integer rentPrice) { 
		// getRealEstateListByRentPrice������ �̸��� ���´ٰ� �Ѵ�. �޼ҵ� ���� �� ���� ������ ���� �ʴ´�.
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
