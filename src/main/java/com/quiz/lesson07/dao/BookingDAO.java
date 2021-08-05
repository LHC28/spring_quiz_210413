package com.quiz.lesson07.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson07.model.Booking;

@Repository
public interface BookingDAO {

	public List<Booking> selectBookingList();
	
	public int deleteBookingById(int id);
}
