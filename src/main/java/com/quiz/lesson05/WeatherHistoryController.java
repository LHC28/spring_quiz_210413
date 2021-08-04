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
	
	@PostMapping("/lesson05/quiz05/addWeather")
	public String quiz05_2(
			@RequestParam("date") String date,
			@RequestParam("weather") String weather,
			@RequestParam("microDust") String microDust,
			@RequestParam("temperature") double temperature,
			@RequestParam("preciptitation") double preciptitation,
			@RequestParam("windSpeed") double windSpeed
			) {
		if(weather.equals("1")) {
			weather="맑음";
		}else if(weather.equals("2")) {
			weather="구름조금";
		}else if(weather.equals("3")) {
			weather="흐림";
		}else if(weather.equals("4")) {
			weather="비";
		}
		if(microDust.equals("1")) {
			microDust="좋음";
		}else if(microDust.equals("2")) {
			microDust="보통";
		}else if(microDust.equals("3")) {
			microDust="나쁨";
		}else if(microDust.equals("4")) {
			microDust="최악";
		}
		System.out.println(weather +","+microDust);
		weatherHistoryBO.addWeather(date, weather, microDust, temperature, preciptitation, windSpeed);
		
		//redirect : 새로운 request를 하는 것과 같으므로 RequestMapping에 있는 path를 써준다
		return "redirect:/lesson05/quiz05";
		
	}
}
