<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL fmt 연습문제</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>1.후보자 득표율</h1>
		<table class="table text-center">
			<tr>
				<th>기호</th>
				<th>득표 수</th>
				<th>득표 율</th>
			</tr>
			<c:forEach var="candidate" items="${candidates}" varStatus="status"> 
			<tr>
				<td>${status.count }</td>
				<td><fmt:formatNumber value="${candidate }" type="number" /></td>
				<td><fmt:formatNumber value="${candidate/1000000}" type="percent" /></td>
			</tr>
			</c:forEach>
		</table>
		
		<h1>2.카드 명세서</h1>
		<table class="table text-center">
			<thead>
				<th>사용처</th>
				<th>가격</th>
				<th>사용 날짜</th>
				<th>할부</th>
			</thead>
			<tbody>
				<c:forEach var="cardBill" items="${cardBills}" varStatus="status">
				<tr>
					<td>${cardBill.store}</td>
					<td><fmt:formatNumber value="${cardBill.pay}" type="currency" /></td>
					<td><fmt:parseDate value="${cardBill.date}" var="pa1" pattern="yyyy-MM-dd" />
					<fmt:formatDate value="${pa1 }" pattern="yyyy년 MM월 dd일" /></td>
					<td>${cardBill.installment}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>