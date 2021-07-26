package com.quiz.lesson05;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Lesson05Quiz01Controller {

	@RequestMapping("/lesson05/quiz01")
	public String quiz01() {
		return "lesson05/quiz01";
	}
	
	@RequestMapping("/lesson05/quiz02")
	public String quiz01_1(Model model) {
		List<String> musicRanking = new ArrayList<>();
		musicRanking.add("������Ÿ��");
		musicRanking.add("���ɿ���");
		musicRanking.add("������");
		musicRanking.add("������");
		musicRanking.add("����ʹ�");
		
		model.addAttribute("musicRanking", musicRanking);
		
		
		List<Map<String, Object>> membership = new ArrayList<>();

		Map<String, Object> member = new HashMap<>();
		member.put("name", "�տ���");
		member.put("phoneNumber", "010-1234-5678");
		member.put("grade", "VIP");
		member.put("point", 12040);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "���Ȱ�");
		member.put("phoneNumber", "010-4321-1234");
		member.put("grade", "BASIC");
		member.put("point", 3420);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "�����");
		member.put("phoneNumber", "010-8888-1111");
		member.put("grade", "GOLD");
		member.put("point", 1530);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "����");
		member.put("phoneNumber", "010-0000-1234");
		member.put("grade", "GOLD");
		member.put("point", 8450);
		membership.add(member);

		member = new HashMap<>();
		member.put("name", "�츶��");
		member.put("phoneNumber", "010-1111-2222");
		member.put("grade", "BASIC");
		member.put("point", 420);
		membership.add(member);
		
		model.addAttribute("membership", membership);
		
		return "lesson05/quiz02";
	}
	
	@RequestMapping("/lesson05/quiz03")
	public String quiz03(Model model) {
		List<Integer> candidates = new ArrayList<>();
		candidates.add(263001);
		candidates.add(173942); 
		candidates.add(563057);
		
		model.addAttribute("candidates", candidates);
		
		List<Map<String, Object>> cardBills = new ArrayList<>();

		Map<String, Object> cardBill = new HashMap<>();
		cardBill.put("store", "GS48");
		cardBill.put("pay", 7800);
		cardBill.put("date", "2025-09-14");
		cardBill.put("installment", "�Ͻú�");
		cardBills.add(cardBill);

		cardBill = new HashMap<>();
		cardBill.put("store", "���¹�ȭ��");
		cardBill.put("pay", 2750000);
		cardBill.put("date", "2025-09-18");
		cardBill.put("installment", "3����");
		cardBills.add(cardBill);

		cardBill = new HashMap<>();
		cardBill.put("store", "����ġŲ");
		cardBill.put("pay", 180000);
		cardBill.put("date", "2025-09-20");
		cardBill.put("installment", "�Ͻú�");
		cardBills.add(cardBill);
		
		model.addAttribute("cardBills", cardBills);
		
		Date day = new Date();
		model.addAttribute("day", day);
		
		return "lesson05/quiz03";
	}
	
	
	
}
