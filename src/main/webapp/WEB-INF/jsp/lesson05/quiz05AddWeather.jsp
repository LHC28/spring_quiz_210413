<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>날씨 추가</title>
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	
	<!-- datepicker 라이브러리 - 순서가 중요하다. -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> <!-- 동작. -->
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
						<li class ="nav-item text-white"><b>날씨입력</b><a href="#" class="nav-link"></a></li>
						<li class ="nav-item text-white"><b>테마날씨</b><a href="#" class="nav-link"></a></li>
						<li class ="nav-item text-white"><b>관측 기후</b><a href="#" class="nav-link"></a></li>
					</ul>
				</div>
			</nav>
			<div class="col-10 content m-2">
				<h3>날씨 입력</h3>
				<form method="post" action="/lesson05/quiz05/addWeather">
					<div class="d-flex align-items-center">
						날짜<input type="text" id="dp" name="date" class="form-control col-2">
						날씨<select name="weather" class="form-control col-2">
							<option value="맑음" selected>맑음</option>
							<option value="구름조금">구름조금</option>
							<option value="흐림">흐림</option>
							<option value="비">비</option>
						</select>
						미세먼지<select name="microDust" class="form-control col-2">
							<option valule="좋음" selected>좋음</option>
							<option valule="보통">보통</option>
							<option valule="나쁨">나쁨</option>
							<option valule="최악">최악</option>
						</select>
						
					</div>
					<div class="d-flex align-items-center">
						기온<input type="text" name="temperature" class="form-control col-2">
						강수량<input type="text" name="preciptitation" class="form-control col-2">
						풍속 <input type="text" name="windSpeed" class="form-control col-2">
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="저장">
					</div>
				</form>
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
	<script>
		$(document).ready(function(){
			$.datepicker.setDefaults({ // 모든 datepicker의 요일을 한글로 변경, 설정
                dateFormat: 'yymmdd',
                prevText: '이전 달',
                nextText: '다음 달',
                monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                dayNames: ['일', '월', '화', '수', '목', '금', '토'],
                dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
                dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                showMonthAfterYear: true,
                yearSuffix: '년'
                ,currentText:"오늘" // 'Today' 버튼을 한글로 '오늘'이라고 표현
            });
			
			$('#dp').datepicker({
                dateFormat: 'yy년 mm월 dd일'
                
            });
			
		})
	</script>
</body>
</html>