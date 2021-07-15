package com.quiz.quiz04.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.quiz04.dao.StoreDAO;
import com.quiz.quiz04.model.Store;

@Service
public class StoreBO {
	
	@Autowired
	private StoreDAO storeDAO;

	public List<Store> getStoreList(){
		return storeDAO.selectStoreList();
	}
}
