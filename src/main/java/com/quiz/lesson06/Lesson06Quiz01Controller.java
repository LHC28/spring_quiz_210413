package com.quiz.lesson06;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.UrlGroupBO;

@Controller
public class Lesson06Quiz01Controller {
	
	@Autowired
	private UrlGroupBO urlGroupBO;

	@RequestMapping("/lesson06/quiz01/urlView")
	public String url_view() {
		return "lesson06/urlView";
	}
	
	@PostMapping("/lesson06/quiz01/addUrl")
	@ResponseBody // AJAX 사용시 이 어노테이션을 사용해야 한다. responsebody가 있어야 view를 찾지 않고 아래의 맵을 리턴 가능.
	public Map<String, String> add_url(
			@RequestParam("name") String name
			,@RequestParam("url") String url
			) {
		urlGroupBO.addUrl(name, url);
		
		// 성공했는지 여부 리턴
		// {"result" : "error", errorcode 등 규칙을 정해서 구성 후 보내준다.}
		Map<String, String> resultMap = new HashMap<>();
		resultMap.put("result", "success");
		// map으로 리턴하면 json방식으로 간다.
		return resultMap;
	}
	
	@RequestMapping("/lesson06/quiz01/urlList")
	public String url_list(Model model) {
		model.addAttribute("urlGroup", urlGroupBO.getUrlGroup());
		return "lesson06/urlList";
	}
	
	@GetMapping("/lesson06/quiz01/is_duplication")
	@ResponseBody
	public Map<String, Boolean> isDuplication(
			@RequestParam("urlCheck") String urlCheck
			){
		
		boolean isDuplication = urlGroupBO.existUrlGroupByName(urlCheck);
		Map<String, Boolean> result = new HashMap<>();
		result.put("is_duplication", isDuplication);
		return result;
	}
	
	@RequestMapping("/lesson06/quiz02/delete_url")
	@ResponseBody // RestController를 사용하면 view에서 문제가 생김
	public String deleteUrl(
			@RequestParam("url_id") int id
			) {
		// DB id로 delete
		int deletedRow = urlGroupBO.deleteUrlById(id);
		// 결과 행이 1이면 성공, 아니면 실패
		return deletedRow == 1 ? "success" : "fail";
	}
}
