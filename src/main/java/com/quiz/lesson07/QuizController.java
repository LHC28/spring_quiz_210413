package com.quiz.lesson07;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson07.bo.BookingBO;
import com.quiz.lesson07.model.Booking;

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
	
	@RequestMapping("/3")
	public String bookingView() {
		
		return "lesson07/bookingView";
	}
	
	@RequestMapping("/addBooking")
	@ResponseBody
	public String addBooking(
			@RequestParam("name") String name
			,@RequestParam("date") String date
			,@RequestParam("day") int day
			,@RequestParam("headcount") int headcount
			,@RequestParam("phoneNumber") String phoneNumber
			) {
		bookingBO.addBooking(name,date,day,headcount,phoneNumber);
		return "완료";
	}
	
	@RequestMapping("bookingFind")
	@ResponseBody
	public Map<String,String> bookingFind(
			@RequestParam("name") String name
			,@RequestParam("phoneNumber") String phoneNumber
			) {
		List<Booking> book = new ArrayList<>();
		book = bookingBO.getBookingListByName(name, phoneNumber);
		if(book.size()==0) {
			Map<String, String> result = new HashMap<>();
			result.put("name", "empty");
			return result;
		}else {
			Map<String, String> result = new HashMap<>();
			result.put("name", book.get(0).getName());
			DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
			String date = dateFormat.format(book.get(0).getDate());
			result.put("date",date);
			result.put("day", String.valueOf(book.get(0).getDay()));
			result.put("headcount", String.valueOf(book.get(0).getHeadcount()));
			result.put("state", book.get(0).getState());
			return result;
		}

	}
}
