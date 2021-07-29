<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>기상 정보</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
<link rel="stylesheet" type="text/css" href="/css/quiz05_style.css">

</head>
<body>
	<div class="container">
		<div class="d-flex">
			<nav class="col-2">
				<div class="logo">
					<a href="/lesson05/quiz05"><img src="/images/기상청 로고.jpg" width="150px" height="80px"></a>
				</div>
				<div class="mt-3">
					<ul class="nav flex-column">
						<li class ="nav-item text-white"><b>날씨</b><a href="#" class="nav-link"></a></li>
						<li class ="nav-item text-white"><b>날씨입력</b><a href="/lesson05/quiz05/addWeather" class="nav-link"></a></li>
						<li class ="nav-item text-white"><b>테마날씨</b><a href="#" class="nav-link"></a></li>
						<li class ="nav-item text-white"><b>관측 기후</b><a href="#" class="nav-link"></a></li>
					</ul>
				</div>
			</nav>
			<div class="col-10 content">
				<h1>과거 날씨</h1>
				<table class="table text-center">
					<thead>
						<tr>
							<th>날짜</th>
							<th>날씨</th>
							<th>기온</th>
							<th>강수량</th>
							<th>미세먼지</th>
							<th>풍속</th>
						</tr>				
					</thead>
					<tbody>
						<c:forEach var="weather" items="${weatherList}" varStatus="status">
						<tr>
							<td>
								<fmt:formatDate value="${weather.date}" pattern="yyyy년 M월 d일" />
							</td>
							<td>
								<c:choose>
									<c:when test="${weather.weather eq '맑음' }">
										<img src="/images/sunny.jpg" width:"30px" height:"30px">
									</c:when>
									<c:when test="${weather.weather eq '구름조금' }">
										<img src="/images/partlyCloudy.jpg" width:"30px" height:"30px">
									</c:when>
									<c:when test="${weather.weather eq '흐림' }">
										<img src="/images/cloudy.jpg" width:"30px" height:"30px">
									</c:when>
									<c:otherwise>
										<img src="/images/rainy.jpg" width:"30px" height:"30px">
									</c:otherwise>
								</c:choose>
							</td>
							<td>${weather.temperatures}℃</td>
							<td>${weather.preciptitation}mm</td>
							<td>${weather.microDust }</td>
							<td>${weather.windSpeed }km/h</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<footer class="d-flex">
			<div class="col-2">
				<img src="/images/기상청 로고.jpg" width="150px" height="80px">
			</div>
			<div>
				<span class="font">(07062) 서울시 동작구 여의대방로16길 61 <br>Copyright@2020 KAM. All Rights RESERVED</span>
			</div>
		</footer>
	</div>
</body>
</html>