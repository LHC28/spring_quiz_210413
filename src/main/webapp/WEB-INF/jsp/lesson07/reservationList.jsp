<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 목록 보기</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
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
				<h2 class="test-center"><b>예약 목록 보기</b></h2>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th>이름</th>
						<th>예약날짜</th>
						<th>숙박일수</th>
						<th>숙박인원</th>
						<th>전화번호</th>
						<th>예약상태</th>
					</tr>
				</thead>
				<c:forEach var="booking" items="${bookingList}" varStatus = "status">
				<tbody>
					<tr>
						<td>${booking.name}</td>
						<fmt:formatDate value="${booking.date}" var="date" pattern="yyyy년 MM월 dd일" />
						<td>${date}</td>
						<td>${booking.day}</td>
						<td>${booking.headcount}</td>
						<td>${booking.phoneNumber}</td>
						<td>
							<c:choose>
								<c:when test="${booking.state eq '확정' }">
									<span class="text-success">${booking.state }</span>
								</c:when>
								<c:when test="${booking.state eq '대기중' }">
									<span class="text-info">${booking.state }</span>
								</c:when>
								<c:when test="${booking.state eq '취소' }">
									<span class="text-danger">${booking.state }</span>
								</c:when>
							</c:choose>
						</td>
						<td><button type="button" class="bookingBtn btn btn-danger" data-booking-id="${booking.id}">삭제</button></td>
					</tr>
				</tbody>
				</c:forEach>
			</table>
		</div>
		<jsp:include page="footer.jsp"/>
	</div>
	
	<script>
		$(document).ready(function(e){
			$('.bookingBtn').on('click', function(e){
				let bookingId = $(this).data('booking-id');
				$.ajax({
					type:'post'
					,data:{'booking_id':bookingId}
					,url:'/lesson07/quiz01/delete_booking'
					,success: function(data){
						//alert("성공");
						if(data=='success'){
							location.reload();
						}else{
							alert("문제");
						}
					},error:function(e){
						alert("error: "+e);
					}
				});
			});
		});
	</script>
	
</body>
</html>