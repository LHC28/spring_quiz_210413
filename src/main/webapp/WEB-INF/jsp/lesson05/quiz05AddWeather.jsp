<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �߰�</title>
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	
	<!-- datepicker ���̺귯�� - ������ �߿��ϴ�. -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> <!-- ����. -->
	
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
					<a href="/lesson05/quiz05"><img src="/images/���û �ΰ�.jpg" width="150px" height="80px"></a>
				</div>
				<div class="mt-3">
					<ul class="nav flex-column">
						<li class ="nav-item text-white"><b>����</b><a href="#" class="nav-link"></a></li>
						<li class ="nav-item text-white"><b>�����Է�</b><a href="#" class="nav-link"></a></li>
						<li class ="nav-item text-white"><b>�׸�����</b><a href="#" class="nav-link"></a></li>
						<li class ="nav-item text-white"><b>���� ����</b><a href="#" class="nav-link"></a></li>
					</ul>
				</div>
			</nav>
			<div class="col-10 content m-2">
				<h3>���� �Է�</h3>
				<form method="post" action="/lesson05/quiz05/addWeather">
					<div class="d-flex align-items-center">
						��¥<input type="text" id="dp" name="date" class="form-control col-2">
						����<select name="weather" class="form-control col-2">
							<option value="����" selected>����</option>
							<option value="��������">��������</option>
							<option value="�帲">�帲</option>
							<option value="��">��</option>
						</select>
						�̼�����<select name="microDust" class="form-control col-2">
							<option valule="����" selected>����</option>
							<option valule="����">����</option>
							<option valule="����">����</option>
							<option valule="�־�">�־�</option>
						</select>
						
					</div>
					<div class="d-flex align-items-center">
						���<input type="text" name="temperature" class="form-control col-2">
						������<input type="text" name="preciptitation" class="form-control col-2">
						ǳ�� <input type="text" name="windSpeed" class="form-control col-2">
					</div>
					<div class="text-right">
						<input type="submit" class="btn btn-success" value="����">
					</div>
				</form>
			</div>
		</div>
		<footer class="d-flex">
			<div class="col-2">
				<img src="/images/���û �ΰ�.jpg" width="150px" height="80px">
			</div>
			<div>
				<span class="font">(07062) ����� ���۱� ���Ǵ���16�� 61 <br>Copyright@2020 KAM. All Rights RESERVED</span>
			</div>
		</footer>
	</div>
	<script>
		$(document).ready(function(){
			$.datepicker.setDefaults({ // ��� datepicker�� ������ �ѱ۷� ����, ����
                dateFormat: 'yymmdd',
                prevText: '���� ��',
                nextText: '���� ��',
                monthNames: ['1��', '2��', '3��', '4��', '5��', '6��', '7��', '8��', '9��', '10��', '11��', '12��'],
                monthNamesShort: ['1��', '2��', '3��', '4��', '5��', '6��', '7��', '8��', '9��', '10��', '11��', '12��'],
                dayNames: ['��', '��', 'ȭ', '��', '��', '��', '��'],
                dayNamesShort: ['��', '��', 'ȭ', '��', '��', '��', '��'],
                dayNamesMin: ['��', '��', 'ȭ', '��', '��', '��', '��'],
                showMonthAfterYear: true,
                yearSuffix: '��'
                ,currentText:"����" // 'Today' ��ư�� �ѱ۷� '����'�̶�� ǥ��
            });
			
			$('#dp').datepicker({
                dateFormat: 'yy�� mm�� dd��'
                
            });
			
		})
	</script>
</body>
</html>