<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>quiz02</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>HOT5</h1>
		<table class="table text-center">
			<tr>
				<th>순위</th>
				<th>제목</th>
			</tr>
			<c:forEach var="music" items="${musicRanking}" varStatus="status"> 
			<tr>
				<td><b>${status.count}</b></td>
				<td><b>${music}</b></td>
			</tr>
			</c:forEach>
		</table>
		
		<h1>멤버십</h1>
		
		<table class="table text-center">
			<thead>
				<th>이름</th>
				<th>전화번호</th>
				<th>등급</th>
				<th>포인트</th>
			</thead>
			<tbody>
				<c:forEach var="member" items="${membership}" varStatus="status">
				<tr>
					<td>${member.name}</td>
					<td>${member.phoneNumber}</td>
					<c:choose>
						<<c:when text="${member.grade eq 'VIP'}">
							<span class="text-danger">${member.grade}</span>
						</c:when>
						<c:when text="${member.grade eq 'GOLD'}">
							<span class="text-warning">${member.grade}</span>
						</c:when>
						<c:otherwise>
							<span">${member.grade}</span>
						</c:otherwise>
					</c:choose>
					<%--
					<c:if test="${member.grade eq 'VIP'}">
						<td class="text-danger">${member.grade}</td>
					</c:if>
					<c:if test="${member.grade eq 'GOLD'}">
						<td class="text-warning">${member.grade}</td>
					</c:if>
					<c:if test="${member.grade ne 'GOLD' && member.grade ne 'VIP'}">
						<td>${member.grade}</td>
					</c:if>
					 --%>
					<c:if test="${member.point>=5000}">
						<td class="text-primary">${member.point}</td>
					</c:if>
					<c:if test="${member.point<5000}">
						<td>${member.point}</td>
					</c:if>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>
	
</body>
</html>