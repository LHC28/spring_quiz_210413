package com.quiz.lesson01;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/lesson01/quiz02")
public class quiz02RestController {

	// 요청 url : http://localhost:8080/lesson01/quiz02/1
	@RequestMapping("/1")
	public List<Map<String, Object>> quiz02_1(){
		List<Map<String, Object>> result = new ArrayList<>();
		
		Map<String, Object> map = new HashMap<>();
		map.put("rate", 15);
		map.put("director", "봉준호");
		map.put("time", 131);
		map.put("title", "기생충");
		result.add(map);
		
		map = new HashMap<>();
		map.put("rate", 0);
		map.put("director", "로베르토 베니니");
		map.put("time", 116);
		map.put("title", "인생은 아름다워");
		result.add(map);
		
		map = new HashMap<>();
		map.put("rate", 12);
		map.put("director", "크리스토퍼 놀란");
		map.put("time", 147);
		map.put("title", "인셉션");
		result.add(map);
		
		map = new HashMap<>();
		map.put("rate", 19);
		map.put("director", "윤종빈");
		map.put("time", 133);
		map.put("title", "범죄와의 전쟁 : 나쁜놈들 전성시대");
		result.add(map);
		
		map = new HashMap<>();
		map.put("rate", 15);
		map.put("director", "프란시스 로렌스");
		map.put("time", 137);
		map.put("title", "헝거게임");
		result.add(map);
		
		return result;
	}
	
	@RequestMapping("/2")
	public List<Introduce> quiz02_2(){
		Introduce introduce = new Introduce();
		introduce.setTitle("안녕하세요 가입인사 드립니다.");
		introduce.setUser("hagulu");
		introduce.setContent("안녕하세요. 가입했어요. 앞으로 잘 부탁드립니다. 활동 열심히 하겠습니다.");
		List<Introduce> list = new ArrayList<>();
		list.add(introduce);
		
		introduce = new Introduce();
		introduce.setTitle("헐 대박");
		introduce.setUser("bada");
		introduce.setContent("오늘 목요일이 었어... 금요일인줄");
		list.add(introduce);
		
		introduce = new Introduce();
		introduce.setTitle("오늘 데이트 한 이야기 해드릴게요");
		introduce.setUser("dulumary");
		introduce.setContent("....");
		list.add(introduce);
		return list;
	}
	// map으로 하게 되면 그 안에 무엇이 있는지 알기 어려움. 정의가 되어있는 상태가 아니기 때문에 어떤 key, value도 들어갈 수 있다.
	// 확장성은 좋지만 무엇이 들어가야 하는지 알기 어렵다.
	// 따라서 클래스를 만들어 사용하는 것이 더 좋다.
	
	@RequestMapping("/3")
	public ResponseEntity<Introduce> quiz02_3(){
		Introduce introduce = new Introduce();
		introduce.setTitle("안녕하세요 가입인사 드립니다.");
		introduce.setUser("hagulu");
		introduce.setContent("안녕하세요. 가입했어요. 앞으로 잘 부탁드립니다. 활동 열심히 하겠습니다.");
		return new ResponseEntity<>(introduce, HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}
