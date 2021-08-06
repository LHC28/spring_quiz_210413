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
		<jsp:include page="header.jsp"/>
		<jsp:include page="nav.jsp"/>
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
						
					</div>
					</div>
                    <div>
						<div class="d-flex">
							<div class="d-flex align-items-center justify-content-center">
								<div class="content2-3 d-flex justify-content-center align-items-center">
									<div>이름:</div>
                                </div>
                                <input type="text" name="name" class="form-control inputSize" id="name">
                            </div>
                        </div>
                        <div class="d-flex">
                            <div class="d-flex align-items-center">
                                <div class="content2-3 d-flex justify-content-center align-items-center">
                                    <div>전화번호:</div>
                                </div>
                                <input type="text" name="phoneNumber" class="form-control inputSize" id="phoneNumber">
                            </div>
                        </div>
                        <div>
                            <div class="btnBox d-flex justify-content-end align-items-center">
                                <button type="button" id="checkBtn" class="btn btn-success btn1">조회 하기</button>
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
            <jsp:include page="footer.jsp"/>
        </div>

        <script>
            $(document).ready(function(){ //document가 준비되면 실행

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
                
                // 예약확인
                $('#checkBtn').on('click',function(e){
                	let name = $('input[name=name]').val().trim();
                	if(name==''){
                		alert("이름을 입력하세요.");
                		return;
                	}
                	let phoneNumber = $('input[name=phoneNumber]').val().trim();
                	if(phoneNumber==''){
                		alert("전화번호를 입력하세요.");
                		return;
                	}
                	
                	$.ajax({
                		type:'post'
                		,url:'/lesson07/quiz01/bookingFind'
                		,data:{'name':name,'phoneNumber':phoneNumber}
                		,success: function(data){
                			if(data.name=="empty"){ // jsp에서는 equals가 아니라 등호로 가능한듯. 확인해보자. 기억이...
                				alert("예약 내역이 없습니다.");
                			}else{
                				alert("이름 : "+data.name+"\n날짜 : "+data.date+"\n일수 : "+data.day+"\n인원 : "+data.headcount+"\n상태 : "+data.state);	
                			}
                			
                		},error: function(e){
                			alert("error : "+e);
                		}
                	});
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

            });
        </script>
</body>
</html>