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

	//��û url : http://localhost/lesson04/ex02/1
	@GetMapping("/1")
	public String addStudentView() {
		return "lesson04/addStudent";
	}
	
	@PostMapping("/add_student")
	public String addStudent(
			@ModelAttribute NewStudent newStudent,
			// name �±� ���� ��ġ�ϴ� �ʵ忡 ���� ����.
			Model model
			) {
		// insert DB
		newStudentBO.addNewStudent(newStudent);
		
		// select DB - ��û�� ���� ��� �� ������ ��ġ�� ����. ���⼭�� �ʿ����
		newStudent = newStudentBO.getNewStudentById(newStudent.getId());
		model.addAttribute("result",newStudent);
		model.addAttribute("subject", "�л�����");
		// �̷��� �ϴ� �ͺ��� ���ο� ��ü�� ����� �����ϴ� ���� ����.
		return "lesson04/afterAddStudent"; // �߰��� �л� ������ ��Ÿ���� jsp
	}
}
