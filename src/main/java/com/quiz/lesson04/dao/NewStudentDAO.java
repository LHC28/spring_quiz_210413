package com.quiz.lesson04.dao;

import org.springframework.stereotype.Repository;

import com.quiz.lesson04.model.NewStudent;

@Repository
public interface NewStudentDAO {

	public void insertNewStudent(NewStudent newStudent);
	
	public NewStudent selectNewStudentById(int id);
}
