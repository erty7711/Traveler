<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty test} ">
		<h1>看到我表示沒東西</h1>
	</c:if>
	<h2>付款完成</h2>return 
	<h2>下載PDF</h2>
	<a href="/Traveler/airTickets/download"> 點擊下載</a>
	<h2>sessionID=${sess}</h2>
	<h2>${arrC}</h2>
	<h2>${totalP}</h2>
	<a href="/Traveler/">回首頁</a>
</body>
</html>