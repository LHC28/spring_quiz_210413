package com.quiz.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.model.Real_estate;
import com.quiz.lesson03.real_estatebo.Real_estateBO;

//@RequestMapping("/lesson03/quiz02")
@RestController
public class Real_estateRestController {
	//http://localhost/lesson03/quiz01/1?id=20
	
	@Autowired
	private Real_estateBO real_estateBO;
	
	// MySQL�� ���̺��� ���� �Ѵٰ� �̸��� ������ �����µ� camel case�� ���缭 �ۼ��ϴ� ���� �� ����.
	@RequestMapping("/1")
	public Real_estate quiz01_1( // DTO �����͸� �����ϴ� Ŭ����
			@RequestParam(value="id") int id
			// �ʼ� �Ķ������ ��� ("id")�� �ۼ��ϴ� �͵� �����ϴ�.
			) {
		return real_estateBO.getReal_estate(id);
		// BO���� ���� ���� ����
	}
	
	@RequestMapping("/2")
	public Real_estate quiz01_2(
			@RequestParam(value="rentPrice") Integer rentPrice
			) {
		return real_estateBO.getReal_estate(rentPrice);
	}
	
	@RequestMapping("/3")
	public List<Real_estate> quiz01_3(
			@RequestParam(value="area") int area,
			@RequestParam(value="price") int price
			){
		List<Real_estate> real_estateList = real_estateBO.getReal_estate(area, price);
		return real_estateList;
	}
	
	@RequestMapping("/lesson03/quiz02/1")
	public String quiz02() {
		Real_estate realestate = new Real_estate();
		realestate.setRealtorId(3);
		realestate.setAddress("Ǫ������ ���� 303�� 1104ȣ");
		realestate.setArea(89);
		realestate.setType("�Ÿ�");
		realestate.setPrice(100000);
		
		int row = real_estateBO.insertReal_estate(realestate);
		
		return "�Է� ���� : "+row;
	}
	
	//http://localhost/lesson03/quiz02/2?realtor_id=5
	@RequestMapping("/lesson03/quiz02/2")
	public String quiz02_1(
			@RequestParam(value="realtor_id") String realtorId1 // ���⼭ camel case�� �ٲ��ִ� ���� ����.
			// ������ �ڷ����� �ٸ��ٰ� �ߴ� �� ���Ƽ� �ٲ� ����. ������ �׳� �ٷ� int �������� ������ �� ���� ���⼭ ������ ���� ��.
			) {
		int realtorId = Integer.valueOf(realtorId1);
		int row = real_estateBO.insertRealestateAsField(realtorId,"���������� ���ǽ��� 814ȣ",45,"����",100000,120);
		return "�Է� ���� : "+row;
	}
	// ��������� ��ü�� �־ �ϴ� ���� �ξ� ����. �ϳ��� ���� �ִ� ���� ������ ���� ���� �־� ������ �߻��� �� �ִ�.
	// ������ �������� ���δ� �Ʒ� ����� �� ���� ��ٰ� �Ѵ�. ���� ����� ������ ������ �ִٰ� �Ѵ�. ������ ���߿�...
	
	//http://localhost/lesson03/quiz03/1?id=8
	@RequestMapping("/lesson03/quiz03/1")
	public String quiz03(
			@RequestParam("id") int id,
			@RequestParam("price") int price,
			@RequestParam("type") String type
			) {
		int row = real_estateBO.updateRealestate(id, price,type);
		return "���� ���� : "+row;
	}
	
	//http://localhost/lesson03/quiz04/1?id=22
	@RequestMapping("/lesson03/quiz04/1")
	public String quiz04(
			@RequestParam("id") int id
			) {
		int row = real_estateBO.deleteRealestate(id);
		return "���� ����"+row;
	}
	
}
