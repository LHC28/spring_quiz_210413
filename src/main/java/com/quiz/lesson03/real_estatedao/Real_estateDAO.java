package com.quiz.lesson03.real_estatedao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.Real_estate;

@Repository
public interface Real_estateDAO {

	public Real_estate selectReal_estate(int id);
	
	public Real_estate selectReal_estate(Integer rentPrice);
	
	public List<Real_estate> selectReal_estate(@Param("area")int area,@Param("price")int price);
}
