<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>url 리스트</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 목록</h1>
		<table class="table">
			<thead>
				<tr>
					<th><b>No.</b></th>
					<th><b>이름</b></th>
					<th><b>주소</b></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="url" items="${urlGroup}" varStatus="status">
				<tr>
					<td>${url.id}</td>
					<td>${url.name}</td>
					<td>${url.url }</td>
					<td><button type="button" class="url-btn btn btn-danger" data-url-id="${url.id}">삭제</button></td>
					<%-- 여기서 id값을 사용하게 되면 반복되서 만들어지는 것으로 id가 중복이 된다. --%>
					<%-- data-변수명 변수명에 들어오는 것은 아무거나 상관없다. --%>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script>
		$(document).ready(function(e){
			// 해당 행의 id값을 가져올 방법을 찾아야 한다.
			// $('td').on('click','button[name=delBtn]',function(e))
			// name의 경우 중복되어도 문제 없음. 클릭된 부분만 가져오도록 하는 방식
			// 	let id = $(this).attr('value'); 위에서 value에 id값을 넣는 방식
			
			<%-- 두 번째 방법 - data를 이용해서 태그에 data를 임시 저장해놓기 - 많이 사용한다고 한다. --%>
			// 태그 : data-favorite-id	data- 이름설정
			// 스크립트 : $(this).data('favorite-id')
			$('.url-btn').on('click',function(e){
				let urlId = $(this).data('url-id');
				// alert(urlId);
				$.ajax({
					type:'post'
					,data:{'url_id':urlId}
					,url:'/lesson06/quiz02/delete_url'
					,success : function(data){
						//alert(data);
						if(data=='success'){
							location.reload(); //새로고침
						}else{
							alert("서버에서 삭제 처리를 하지 못했습니다. 관리자에게 문의해주세요.")
						}
					}, error: function(e) {
						alert("error:" + e);
					}
				});
			});
			
		});
	</script>
</body>
</html>