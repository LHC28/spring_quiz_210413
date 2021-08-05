<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>통나무 펜션</title>

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
		<header class="d-flex align-items-center justify-content-center"> <!-- header 안의 div 정렬하기 -->
			<div>
				통나무 팬션 <!-- class에서 display-?를 활용하면 크기를 조절할 수 있다. -->
			</div>
		</header>
		<nav>
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="#" class="nav-link navFont font-weight-bold">펜션소개</a></li>
				<li class="nav-item"><a href="#" class="nav-link navFont font-weight-bold">객실보기</a></li>
				<li class="nav-item"><a href="#" class="nav-link navFont font-weight-bold">예약안내</a></li>
				<li class="nav-item"><a href="#" class="nav-link navFont font-weight-bold">커뮤니티</a></li>
			</ul>
		</nav>

		<div class="picture">
			<img id="banner" src="/images/test06_banner1.jpg" alt="img1" width="1200px" height="500px">
		</div>

		<section class="contents d-flex">
			<div class="content1 d-flex align-items-center justify-content-center">
				<div class="content1Font">
					실시간<br>
					예약하기
				</div>
			</div>
                
			<div class="content2">
				<div class="d-flex"> <!-- div 가로 정렬 -->
					<div class="content2-1 d-flex align-items-end justify-content-end">
							<div>예약 확인</div> <!-- span으로 나열하는 방법도 있다. -->
					</div>
					<div class="content2-2 mt-4 ml-3">
						<label for='member'>
							<span class="content2-2Font">회원</span>
							<input type="radio" name="memberChoice" id="member" value="member" class="mr-2" checked>
						</label for="nonMember">
						<label> <!-- label은 선택하는 input태그까지 묶어야 적용... -->
							<span class="content2-2Font">비 회원</span>
							<input type="radio" name="memberChoice" id="nonMember" value="nonMember">
						</label>
					</div>
					</div>
					<!-- 회원용 -->
                    <div class="hide1">
						<div class="d-flex">
							<div class="d-flex align-items-center justify-content-center">
								<div class="content2-3 d-flex justify-content-center align-items-center">
									<div>아이디:</div>
                                </div>
                                <input type="text" class="form-control inputSize" id="inputId">
                            </div>
                        </div>
                        <div class="d-flex">
                            <div class="d-flex align-items-center">
                                <div class="content2-3 d-flex justify-content-center align-items-center">
                                    <div>비밀번호:</div>
                                </div>
                                <input type="password" class="form-control inputSize" id="inputPw">
                            </div>
                        </div>
                        <div>
                            <div class="btnBox d-flex justify-content-end align-items-center">
                                <button type="button" class="btn btnFont btn1">조회 하기</button>
                            </div>
                            
                        </div>
                    </div>

                    <!-- 비회원 메뉴 -->
                    <div class="hide2"> <!-- d-none을 사용하는 방법도 있다. -->
                        <div class="d-flex">
                            <div class="d-flex align-items-center justify-content-center">
                                <div class="content2-3 d-flex justify-content-center align-items-center">
                                    <div>이름:</div>
                                </div>
                                <input type="text" class="form-control inputSize" id="inputName">
                            </div>
                        </div>
                        <div class="d-flex">
                            <div class="d-flex align-items-center">
                                <div class="content2-3 d-flex justify-content-center align-items-center">
                                    <div>전화번호:</div>
                                </div>
                                <input type="text" class="form-control inputSize" id="inputPhone">
                            </div>
                        </div>
                        <div class="d-flex">
                            <div class="d-flex align-items-center">
                                <div class="content2-3 d-flex justify-content-center align-items-center">
                                    <div>날짜:</div>
                                </div>
                                <input type="text" id="dp" class="form-control inputSize inputDate">
                            </div>
                        </div>
                        <div>
                            <div class="btnBox d-flex justify-content-end align-items-center">
                                <button type="button" class="btn btnFont btn2">조회 하기</button>
                            </div>
                            
                        </div>
                        
                    </div>

                </div>
                <div class="content3 d-flex align-items-center justify-content-center">
                    <div class="content3-1">
                        <div class="content3-1Font">예약문의</div>
                        <div class="content3-2Font">
                            010-<br>
                            000-1111
                        </div>
                    </div>
                </div>
            </section>
            <footer>
                <div class="footerFont mt-3 ml-4"> <!-- margin을 사방으로 주는 것이 더 짧은 듯 하다. margin이 여러 개 들어가면 margin상쇄가 나타난다. -->
                    <!-- address의 경우 padding 등 기본적으로 들어가는 속성이 있어 선택시 고려 -->
                    제주특별자치도 제주시 애월읍<br>
                    사업자등록번호 : 111-22-255222 / 농어촌민박사업자지정 / 대표 : 김동욱<br>
                    Copyright 2025 tongnamu All right reserved
                </div>
            </footer>
        </div>

        <script>
            $(document).ready(function(){ //document가 준비되면 실행

                // 1. 회원 비회원 선택
                $('input[name=memberChoice]').change(function(e){
                    var choice = $('input[name="memberChoice"]:checked').val(); // checked의 유무가 결과값에 영향을 미친다.
                    if(choice=='member'){ // 클래스에 넣거나 빼는 방식도 가능하다. addClass, removeClass. 괄호 안에 #이 들어가지 않는 것을 기억해야...
                        $('.hide1').show();
                        $('.hide2').hide();
                    }else if(choice=='nonMember') {
                        $('.hide1').hide();
                        $('.hide2').show();
                    }
                });

                // 2. 날짜 선택
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

                $('#dp').datepicker({ // 라이브러리 추가할 때 중복되는 것이 있으면 안 나올 수 있다...
                    dateFormat: 'yy년 mm월 dd일'
                    ,minDate:0
                    // 대개 콤마(,) 위치는 맨 앞에 둔다고 한다.
                });

                //3. 유효성 검사
                $('.btn1').on('click',function(e){ // 이런 경우 class로 만들어 하는 것이 더 좋다.
                    e.preventDefault();
                    // radio에서 받은 value 값을 기준으로 if를 활용하여 값을 가져오는 방식도 있다.
                    var id = $('#inputId').val();
                    var pw = $('#inputPw').val();
                    if(id.length==0){
                        alert("아이디를 입력하세요");
                        return;
                    }
                    if(pw.length==0){
                        alert("비밀번호를 입력하세요");
                        return;
                    }
                    alert("id : "+id+"\npw : "+pw);

                });
                // 확인할 때 f12창 띄워좋으면 확인하기 좋은 것 같다.
                $('.btn2').on('click',function(e){
                    e.preventDefault();
                    var name = $('#inputName').val();
                    var phone = $('#inputPhone').val();
                    var date = $('.inputDate').val();
                    if(name.length==0){
                        alert("이름을 입력하세요");
                        return;
                    }
                    if(phone.length==0){
                        alert("전화번호를 입력하세요");
                        return;
                    }
                    if(date.length==0){
                        alert("날짜를 입력하세요");
                        return;
                    }
                    
                    // 정규표현식도 활용 가능하다. .startsWith('010') - true or false로 결과값이 나온다.
                    var phone1 = phone.substring(0,3);
                    if(phone1!='010'){
                        alert("010으로 시작하는 번호만 입력 가능합니다.");
                        return;
                    }
                    alert("이름 : "+name+"\n날짜 : "+date+"\n번호 : "+phone);
                });

                // 일정시간마다 이미지 바꾸기
                var banner = document.getElementById("banner");
                var arrImage = [
                "/images/test06_banner1.jpg",
                "/images/test06_banner2.jpg",
                "/images/test06_banner3.jpg",
                "/images/test06_banner4.jpg"
                ];
                
                var index = 0;
                function changeImage(){
                    banner.setAttribute("src",arrImage[index]);
                    index++;
                    if(index>=arrImage.length){
                        index = 0;
                    }
                }

                setInterval(changeImage, 3000); // 3초마다 실행

                // 다른 방식 (슬라이드도 한번 알아보자 width값을 빼주면서 하는 방식...)
                // setInterval(function(){
                //     $('#banner').attr('src',bannerImgs[index]);
                //     currentIndex++;

                //     if(currentIndex>bannerImgs.length){
                //         currentIndex = 0;
                //     }
                // },1000);

            });
        </script>
</body>
</html>