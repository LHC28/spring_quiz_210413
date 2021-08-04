package com.quiz.lesson05.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson05.model.WeatherHistory;

@Repository
public interface WeatherHistoryDAO {

	public List<WeatherHistory> selectWeather();
	
	public void addWeather(
			@Param("date") String date, 
			@Param("weather") String weather, 
			@Param("microDust") String microDust, 
			@Param("temperature") double temperature, 
			@Param("preciptitation") double preciptitation, 
			@Param("windSpeed") double windSpeed);
			
}
