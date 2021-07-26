package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson04.bo.NewStudentBO;
import com.quiz.lesson04.model.NewStudent;

@RequestMapping("/lesson04/ex02")
@Controller
public class NewStudentController {
	
	@Autowired
	private NewStudentBO newStudentBO;

	//요청 url : http://localhost/lesson04/ex02/1
	@GetMapping("/1")
	public String addStudentView() {
		return "lesson04/addStudent";
	}
	
	@PostMapping("/add_student")
	public String addStudent(
			@ModelAttribute NewStudent newStudent,
			// name 태그 값과 일치하는 필드에 값이 들어간다.
			Model model
			) {
		// insert DB
		newStudentBO.addNewStudent(newStudent);
		
		// select DB - 요청이 많은 경우 이 과정을 거치면 좋다. 여기서는 필요없음
		newStudent = newStudentBO.getNewStudentById(newStudent.getId());
		model.addAttribute("result",newStudent);
		model.addAttribute("subject", "학생정보");
		// 이렇게 하는 것보다 새로운 객체를 만들어 저장하는 것이 좋다.
		return "lesson04/afterAddStudent"; // 추가된 학생 정보를 나타내는 jsp
	}
}
