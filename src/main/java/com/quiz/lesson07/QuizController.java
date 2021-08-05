package com.quiz.lesson07;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson07.bo.BookingBO;

@RequestMapping("/lesson07/quiz01")
@Controller
public class QuizController {

	@Autowired
	private BookingBO bookingBO;
	
	@RequestMapping("/1")
	public String mainPage() {
		return "lesson07/main_page";
	}
	@RequestMapping("/2")
	public String reservationListView(Model model) {
		model.addAttribute("bookingList", bookingBO.getBookingList());
		return "lesson07/reservationList";
	}
	@RequestMapping("/delete_booking")
	@ResponseBody
	public String deleteBooking(
			@RequestParam("booking_id") int id
			) {
		int deletedRow = bookingBO.deleteBookingById(id);
		// 결과 행이 1이면 성공, 아니면 실패
		return deletedRow == 1 ? "success" : "fail";
		
	}
}
