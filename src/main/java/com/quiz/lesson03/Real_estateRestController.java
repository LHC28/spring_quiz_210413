package com.quiz.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.model.Real_estate;
import com.quiz.lesson03.real_estatebo.Real_estateBO;

@RestController
public class Real_estateRestController {
	//http://localhost/lesson03/quiz01/1?id=20
	
	@Autowired
	private Real_estateBO real_estateBO;
	
	@RequestMapping("/lesson03/quiz01/1")
	public Real_estate quiz01(
			@RequestParam(value="id") int id
			) {
		return real_estateBO.getReal_estate(id);
	}
	
	@RequestMapping("/lesson03/quiz01/2")
	public Real_estate quiz02(
			@RequestParam(value="rentPrice") Integer rentPrice
			) {
		return real_estateBO.getReal_estate(rentPrice);
	}
	
	@RequestMapping("/lesson03/quiz01/3")
	public List<Real_estate> quiz03(
			@RequestParam(value="area") int area,
			@RequestParam(value="price") int price
			){
		List<Real_estate> real_estateList = real_estateBO.getReal_estate(area, price);
		return real_estateList;
	}
}
