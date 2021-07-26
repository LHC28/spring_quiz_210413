package com.quiz.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson04.dao.NewStudentDAO;
import com.quiz.lesson04.model.NewStudent;

@Service
public class NewStudentBO {
	
	@Autowired
	private NewStudentDAO newStudentDAO;

	public void addNewStudent(NewStudent newStudent) {
		newStudentDAO.insertNewStudent(newStudent);
	}
	
	public NewStudent getNewStudentById(int id) {
		return newStudentDAO.selectNewStudentById(id);
	}
}
