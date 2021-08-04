package com.quiz.lesson05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.quiz04.bo.StoreBO;

@RequestMapping("/lesson05/quiz")
@Controller
public class StoreController {

	@Autowired
	private StoreBO storeBO;
	
	@RequestMapping("/storeView")
	public String store_view(
			Model model
			) {
		model.addAttribute("storeList", storeBO.getStoreList());
		return "lesson05/storeView";
	}
	
	@GetMapping("/storeReview")
	public String store_review(
			@RequestParam("storeId") int storeId,
			@RequestParam("storeName") String StoreName,
			Model model
			) {
		model.addAttribute("reviews", storeBO.getStoreListById(storeId, StoreName));
		model.addAttribute("name", StoreName);
		return"/lesson05/reviewView";
	}
	
	
}
