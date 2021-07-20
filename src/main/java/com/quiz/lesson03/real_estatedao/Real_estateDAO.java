package com.quiz.lesson03.real_estatedao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.Real_estate;

@Repository
public interface Real_estateDAO { // 일반 클래스로 만들어 사용하는 경우도 있다. 설정에 따라 방법이 다르다고 한다.

	public Real_estate selectReal_estate(int id); // 파라미터가 하나일 때는 param annotation을 사용하지 않아도 된다.
	
	public Real_estate selectReal_estate(Integer rentPrice);
	
	public List<Real_estate> selectReal_estate(
			@Param("area")int area,
			@Param("price")int price); // 내부적으로는 map형식으로 넘어가게 된다. {"area"=60, "price"=50000}
	
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
