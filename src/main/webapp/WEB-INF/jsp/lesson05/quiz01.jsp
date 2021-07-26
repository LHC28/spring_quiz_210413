<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>quiz01</title>
</head>
<body>

	<h1>JSTL core 변수</h1>
	<c:set var="num1" value="36" />
	<c:set var="num2" value="3" />
	<h4>첫번째 숫자 : ${num1}</h4>
	<h4>두번째 숫자 : ${num2}</h4>
	
	<h1>2. JSTL core 연산</h1>
	<h4>더하기 : ${num1+num2}</h4>
	<h4>빼기 : ${num1-num2}</h4>
	<h4>곱하기 : ${num1*num2}</h4>
	<h4>나누기 : ${num1/num2}</h4>
	
	<c:out value="<title>core out</title>"/>
	
	<h1>JSTL core if</h1>
	<c:if test="${(num1+num2)/2>10}">
		<h1>${(num1+num2)/2}</h1>
	</c:if>
	
	<c:if test="${(num1*num2)>100}">
		<c:out value="<script>alert('너무 큰 수입니다.')</script>" escapeXml="false"/>
	</c:if>
</body>
</html>