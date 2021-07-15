package com.quiz.quiz04;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.quiz04.bo.StoreBO;
import com.quiz.quiz04.model.Store;

@RestController
public class Quiz04RestController {
	// http://localhost/lesson02/quiz01
	
	@Autowired
	private StoreBO storeBO;
	
	@RequestMapping("/lesson02/quiz01")
	public List<Store> quiz04(){
		List<Store> storeList = storeBO.getStoreList();
		return storeList;
	}
	
}
