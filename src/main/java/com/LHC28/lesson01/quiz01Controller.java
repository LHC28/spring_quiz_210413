package com.LHC28.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/lesson01/quiz01")
public class quiz01Controller {
	// ��û url : http://localhost:8080/lesson01/quiz01/1
	
	@RequestMapping("/1")
	@ResponseBody
	public String print() {
		return "<h1>�׽�Ʈ ������Ʈ �ϼ�</h1><h2>�ش� ������Ʈ�� ���ؼ� ���� Ǯ�̸� �����մϴ�.</h2>";
	}
	
	@RequestMapping("/2")
	@ResponseBody
	public Map<String, Integer> printMap(){
		Map<String, Integer> printMap = new HashMap<>();
		printMap.put("����", 80);
		printMap.put("����", 90);
		printMap.put("����", 85);
		return printMap;
	}
}
