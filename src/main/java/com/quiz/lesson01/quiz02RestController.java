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

	// ��û url : http://localhost:8080/lesson01/quiz02/1
	@RequestMapping("/1")
	public List<Map<String, Object>> quiz02_1(){
		List<Map<String, Object>> result = new ArrayList<>();
		
		Map<String, Object> map = new HashMap<>();
		map.put("rate", 15);
		map.put("director", "����ȣ");
		map.put("time", 131);
		map.put("title", "�����");
		result.add(map);
		
		map = new HashMap<>();
		map.put("rate", 0);
		map.put("director", "�κ����� ���ϴ�");
		map.put("time", 116);
		map.put("title", "�λ��� �Ƹ��ٿ�");
		result.add(map);
		
		map = new HashMap<>();
		map.put("rate", 12);
		map.put("director", "ũ�������� ���");
		map.put("time", 147);
		map.put("title", "�μ���");
		result.add(map);
		
		map = new HashMap<>();
		map.put("rate", 19);
		map.put("director", "������");
		map.put("time", 133);
		map.put("title", "���˿��� ���� : ���۳�� �����ô�");
		result.add(map);
		
		map = new HashMap<>();
		map.put("rate", 15);
		map.put("director", "�����ý� �η���");
		map.put("time", 137);
		map.put("title", "��Ű���");
		result.add(map);
		
		return result;
	}
	
	@RequestMapping("/2")
	public List<Introduce> quiz02_2(){
		Introduce introduce = new Introduce();
		introduce.setTitle("�ȳ��ϼ��� �����λ� �帳�ϴ�.");
		introduce.setUser("hagulu");
		introduce.setContent("�ȳ��ϼ���. �����߾��. ������ �� ��Ź�帳�ϴ�. Ȱ�� ������ �ϰڽ��ϴ�.");
		List<Introduce> list = new ArrayList<>();
		list.add(introduce);
		
		introduce = new Introduce();
		introduce.setTitle("�� ���");
		introduce.setUser("bada");
		introduce.setContent("���� ������� ����... �ݿ�������");
		list.add(introduce);
		
		introduce = new Introduce();
		introduce.setTitle("���� ����Ʈ �� �̾߱� �ص帱�Կ�");
		introduce.setUser("dulumary");
		introduce.setContent("....");
		list.add(introduce);
		return list;
	}
	// map���� �ϰ� �Ǹ� �� �ȿ� ������ �ִ��� �˱� �����. ���ǰ� �Ǿ��ִ� ���°� �ƴϱ� ������ � key, value�� �� �� �ִ�.
	// Ȯ�强�� ������ ������ ���� �ϴ��� �˱� ��ƴ�.
	// ���� Ŭ������ ����� ����ϴ� ���� �� ����.
	
	@RequestMapping("/3")
	public ResponseEntity<Introduce> quiz02_3(){
		Introduce introduce = new Introduce();
		introduce.setTitle("�ȳ��ϼ��� �����λ� �帳�ϴ�.");
		introduce.setUser("hagulu");
		introduce.setContent("�ȳ��ϼ���. �����߾��. ������ �� ��Ź�帳�ϴ�. Ȱ�� ������ �ϰڽ��ϴ�.");
		return new ResponseEntity<>(introduce, HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}
