package com.LHC28.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/lesson01/quiz01")
public class quiz01Controller {
	// 요청 url : http://localhost:8080/lesson01/quiz01/1
	
	@RequestMapping("/1")
	@ResponseBody
	public String print() {
		return "<h1>테스트 프로젝트 완성</h1><h2>해당 프로젝트를 통해서 문제 풀이를 진행합니다.</h2>";
	}
	
	@RequestMapping("/2")
	@ResponseBody
	public Map<String, Integer> printMap(){
		Map<String, Integer> printMap = new HashMap<>();
		printMap.put("국어", 80);
		printMap.put("수학", 90);
		printMap.put("영어", 85);
		return printMap;
	}
}
