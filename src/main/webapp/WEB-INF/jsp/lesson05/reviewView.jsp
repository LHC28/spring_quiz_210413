<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" type="text/css" href="/css/storeView_style.css">
</head>
<body>
		<div class="container">
		<header class="d-flex align-items-center">
			<h1 class="text-white ml-4">배탈의 민족</h1>
		</header>
		<c:forEach var="review" items="${reviews}" varStatus="status">
		<div class="title d-flex align-items-center">
			<h1 class="display-3">${name} - 리뷰</h1>
		</div>
		<div class="list mb-4">
			<div class="ml-4 mt-4">
				<div>${review.userName }</div>
				<div>${review.createdAt}</div>
				<div>${review.review }</div>
				<div>${reveiw.menu }</div>
			</div>
		</div>
		
		</c:forEach>
		<footer>
			<h3 class="mt-3"><b>(주)우와한형제</b></h3>
			<div class="footerFont">고객센터 : 1500-1500</div>
		</footer>
	</div>
</body>
</html>