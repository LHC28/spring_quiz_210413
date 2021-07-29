package com.quiz.lesson05.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson05.dao.WeatherHistoryDAO;
import com.quiz.lesson05.model.WeatherHistory;


@Service
public class WeatherHistoryBO {
	
	@Autowired
	private WeatherHistoryDAO weatherHistoryDAO;

	public List<WeatherHistory> getWeather(){
		return weatherHistoryDAO.selectWeather();
	}
	
	public void addWeather(Date date, String weather, String microDust, double temperature, double preciptitation, double windSpeed) {
		weatherHistoryDAO.addWeather(date, weather, microDust, temperature, preciptitation, windSpeed);
	}
}
