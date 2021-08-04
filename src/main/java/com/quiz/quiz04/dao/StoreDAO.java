package com.quiz.quiz04.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.quiz04.model.Store;

@Repository
public interface StoreDAO {

	public List<Store> selectStoreList();
	public List<Store> selectStoreListById(int storeId, String storeName);
}
