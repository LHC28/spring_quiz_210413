package com.quiz.lesson05;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson05.bo.WeatherHistoryBO;
import com.quiz.lesson05.model.WeatherHistory;

@Controller
public class WeatherHistoryController {

	@Autowired
	private WeatherHistoryBO weatherHistoryBO;
	
	@RequestMapping("/lesson05/quiz05")
	public String quiz05(Model model) {
		
		List<WeatherHistory> weatherList = weatherHistoryBO.getWeather();
		
		model.addAttribute("weatherList", weatherList);
		
		return "lesson05/quiz05";
	}
	
	@RequestMapping("/lesson05/quiz05/addWeather")
	public String quiz05_1() {
		return "lesson05/quiz05AddWeather";
	}
	
	@PostMapping("/lesson05/quiz05/add")
	public String quiz05_2(
			@RequestParam("date") Date date,
			@RequestParam("weather") String weather,
			@RequestParam("microDust") String microDust,
			@RequestParam("temperature") double temperature,
			@RequestParam("preciptitation") double preciptitation,
			@RequestParam("windSpeed") double windSpeed,
			Model model
			) {
		
		weatherHistoryBO.addWeather(date, weather, microDust, temperature, preciptitation, windSpeed);
		
		return "lesson05/quiz05AddWeather";
		
	}
}
