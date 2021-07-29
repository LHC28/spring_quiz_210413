package com.quiz.lesson05.dao;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson05.model.WeatherHistory;

@Repository
public interface WeatherHistoryDAO {

	public List<WeatherHistory> selectWeather();
	
	public void addWeather(Date date, String weather, String microDust, double temperature, double preciptitation, double windSpeed);
}
