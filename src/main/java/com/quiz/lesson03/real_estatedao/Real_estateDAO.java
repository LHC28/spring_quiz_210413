package com.quiz.lesson03.real_estatedao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.Real_estate;

@Repository
public interface Real_estateDAO { // �Ϲ� Ŭ������ ����� ����ϴ� ��쵵 �ִ�. ������ ���� ����� �ٸ��ٰ� �Ѵ�.

	public Real_estate selectReal_estate(int id); // �Ķ���Ͱ� �ϳ��� ���� param annotation�� ������� �ʾƵ� �ȴ�.
	
	public Real_estate selectReal_estate(Integer rentPrice);
	
	public List<Real_estate> selectReal_estate(
			@Param("area")int area,
			@Param("price")int price); // ���������δ� map�������� �Ѿ�� �ȴ�. {"area"=60, "price"=50000}
	
	public int insertReal_estate(Real_estate realestate);
	
	public int insertRealestateAsField(
			@Param("realtorId") int realtorId,
			@Param("address") String address,
			@Param("area") int area,
			@Param("type") String type,
			@Param("price") int price,
			@Param("rentPrice") Integer rentPrice
			);
	
	public int updateRealestate(
			@Param("id") int id,
			@Param("price") int price,
			@Param("type") String type);
	
	public int deleteRealestate(int id);
}
