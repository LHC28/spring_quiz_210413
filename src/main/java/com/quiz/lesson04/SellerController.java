package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;
import com.quiz.lesson04.model.Seller;

@RequestMapping("/lesson04/quiz01")
@Controller
public class SellerController {
	
	@Autowired
	private SellerBO sellerBO;

	// 주소 url : http://localhost/lesson04/quiz01/1
	@RequestMapping(path="/1", method=RequestMethod.GET)
	public String addSellerView() {
		return "lesson04/addSeller";
	}
	
	@PostMapping("/add_seller")
	public String addSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam("profileImageUrl") String profileImageUrl,
			@RequestParam("temparature") double temparature
			) {
		sellerBO.insertSeller(nickname, profileImageUrl, temparature);
		return "lesson04/afterAddSeller";
	}
	//http://localhost/lesson04/quiz01/seller_info?id=1
	// 주소 url : http://localhost/lesson04/quiz01/seller_info
	@GetMapping("/seller_info")
	public String getLastSeller(
			@RequestParam(value="id", required=false) Integer id,
			Model model) {
		Seller seller = sellerBO.getLastSeller(id);
		model.addAttribute("title", "판매자 정보");
		model.addAttribute("result", seller);
		return "lesson04/getLastSeller";
	}
	
}
