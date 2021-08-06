<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
	<!-- jQuery가 datepicker 라이브러리 위에 있어야 한다. (데이터피커가 jquery를 사용하기 때문) -->
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>        

	<!-- datepicker 라이브러리 - 순서가 중요하다. -->
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> <!-- 동작. -->

	<!-- bootstrap CDN link -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" type="text/css" href="/css/booking_style.css">
</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp"/>
		<jsp:include page="nav.jsp"/>
		<div>
			<div class="formBox d-flex justify-content-center align-items-center">
				<h2><b>예약 하기</b></h2>
			</div>
			<div class="inputBox1 d-flex justify-content-center">
				<div class="inputBox">
					<div class="mb-2"><b>이름</b></div>
					<input type="text" id="name" name="name" class="form-control mb-2">
					<div class="mb-2"><b>예약날짜</b></div> <%-- datepicker --%>
					<input type="text" id="date" name="date" class="form-control mb-2">
					<div class="mb-2"><b>숙박일수</b></div>
					<input type="text" id="day" name="day" class="form-control mb-2">
					<div class="mb-2"><b>숙박인원</b></div>
					<input type="text" id="headcount" name="headcount" class="form-control mb-2">
					<div class="mb-2"><b>전화번호</b></div>
					<input type="text" id="phoneNumber" name="phoneNumber" class="form-control mb-2">
					<button type="button" id="joinBtn" class="btn btn-warning w-100 mt-3">예약하기</button>
				</div>	
			</div>
		</div>
		<jsp:include page="footer.jsp"/>
	</div>
	
	<script>
		$(document).ready(function(e){
			$("#joinBtn").on('click',function(e){
				// validation
				let name = $('input[name=name]').val().trim();
				if(name==''){
					alert("이름을 입력하세요");
					return;
				}
				
				let date = $('input[name=date]').val().trim();
				if(date==''){
					alert("날짜를 입력하세요");
					return;
				}
				
				let day = $('input[name=day]').val().trim();
				if(day==''){
					alert("숙박일수를 입력하세요.");
					return;
				}
				
				let headcount = $('input[name=headcount]').val().trim();
				if(headcount==''){
					alert("숙박인원을 입력하세요.");
					return;
				}
				
				let phoneNumber = $('input[name=phoneNumber]').val().trim();
				if(phoneNumber==''){
					alert("전화번호를 입력하세요.");
					return;
				}
				
				// 값 넘기기
				$.ajax({
					type:'post'
					,url:'/lesson07/quiz01/addBooking'
					,data:{'name':name,'date':date, 'day':day, 'headcount':headcount, 'phoneNumber':phoneNumber}
					,success: function(data){
						alert("예약 성공");
						location.href="/lesson07/quiz01/1";
					}, error: function(e){
						alert("error : "+e);
					}
				});
			});
			
			$.datepicker.setDefaults({
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
                ,currentText:"오늘"
            });

            $('#date').datepicker({
                dateFormat: 'yy-mm-dd'
            });
		});
	
	</script>
	
</body>
</html>