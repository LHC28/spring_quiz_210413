<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="/css/main_page_style.css">
</head>
<body>
	<div class="container">
		<h1>즐겨 찾기 추가하기</h1>
		<label for="name">제목</label><br>
		<%-- 제목을 틀릭하면 해당 빈칸이 활성화하게 된다. --%>
		<input type="text" class="form-control" id="name" placeholder="이름" name="name"> <%-- name은 데이터명과 같게 하는 것이 좋다. --%>
		<label for="url">주소</label><br>
		<div class="d-flex">
			<input type="text" class="form-control" id="url" placeholder="주소" name="url">
			<button type="button" id="urlCheckBtn" class="btn btn-info">중복확인</button>
		</div>
		<div id="statusUrl"></div>
		<%--<small id="isDuplicationText" class="text-danger" d-non>중복된 url입니다.</small> --%>
		<br>
		<input type="button" class="btn btn-success btn-block" id="addBtn" value="추가">
	</div>
	
	
	<script>
		$(document).ready(function(e){
			$('#addBtn').on('click',function(e){
				// validation
				let name = $('input[name=name]').val().trim(); // var, let 모두 사용가능하다.
				if(name==''){
					alert("이름을 입력하세요");
					return;
				}
				
				let url = $('input[name=url]').val().trim();
				if(url==''){ // 여기서 null 여부는 공백으로 확인해야 한다.
					alert("url을 입력하세요");
					return;
				}
				if(url.startsWith("http")==false && url.startsWith("https")==false){
					alert("주소 형식이 잘못되었습니다.");
					return;
				}
				// 서버로 전송
				$.ajax({ // ajax자체에 들어가는 형식도 json이고 data에 들어갈 때도 json이다.
					type:'POST' // request method 어떤 메소드로 보낼 것인지
					,url:"/lesson06/quiz01/addUrl"
					,data:{'name':name, 'url':url} // 여기까지 request에 대한 정의
					//,dataType:'json' dataType은 요청값이 아닌 결과값이 json이라는 의미.
					,success:function(data){ // 성공했을 때. 이 부분의 data가 return된 값이라고 생각하면 된다.
						// ajax 통신 후 response로는 String 또는 JSON이 리턴되어야 한다.
						alert(data.result);
						location.href="/lesson06/quiz01/urlList"; // 위의 데이터를 넘기고 싶으면 ?뒤에 붙이면 된다.
						
					}, error:function(e){ // 에러가 발생했을 때
						alert("error "+e);
					}
				});
			});
			
			// 중복확인
			$("#urlCheckBtn").on('click',function(e){
				$('#statusUrl').empty();
				let urlCheck = $('#url').val().trim();
				if(urlCheck==''){
					$('#statusUrl').append("<small class='text-danger'>주소를 입력해주세요.</small>")
				}
				
				$.ajax({
					type:'get'
					, data:{'urlCheck':urlCheck}
					, url:'/lesson06/quiz01/is_duplication'
					,success : function(data){
						if(data.is_duplication === true){ // 중복인 경우
							$('#statusUrl').append("<small class=\"text-danger\">중복된 url입니다.</small>");
							// $('#isDuplicationText').removeClass('d-non') - 셀렉터는 괄호안에 들어갈 땐 안 쓴다 생각하자
							// $('#availableUrlText').addClass('d-none');
							// 위와 같은 방법도 존재한다.
						}else{
							$('#statusUrl').append("<small class=\"text-success\">저장 가능한 url입니다.</small>");
						}
					}
				});
			});
		});
	</script>
</body>
</html>