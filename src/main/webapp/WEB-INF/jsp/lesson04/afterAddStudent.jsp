<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>${subject}</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1 class=display-4>${subject}</h1>
		
		<table class="table table-striped">
			<tr>
				<th>��ȣ</th>
				<td>${result.id}</td>
			</tr>
			<tr>
				<th>�̸�</th>
				<td>${result.name }</td>
			</tr>
			<tr>
				<th>�޴��� ��ȣ</th>
				<td>${result.phoneNumber }</td>
			</tr>
			<tr>
				<th>�巡���</th>
				<td>${result.dreamJob }</td>
			</tr>
			<tr>
				<th>������</th>
				<td>${result.createdAt }</td>
			</tr>
			<tr>
				<th>������</th>
				<td>${result.updatedAt}</td>
			</tr>
		</table>
	</div>
</body>
</html>