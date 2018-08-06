<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC 
"-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member</title>
<link rel='stylesheet' href='css/styles.css' type="text/css"/>
<!-- <link rel='stylesheet' href='/Traveler/css/styles.css' type="text/css"/> -->
</head>
<body>
	<h1 style="text-align:center">Traveler</h1>
	<div style="text-align:right">
	<c:choose>
			<c:when test="${userName!=null}">您好${userName}  <a href='member/logout.do'>登出</a></c:when>
			<c:otherwise><a href='member/register'>註冊</a>/<a href='member/login'>登入</a></c:otherwise>
			</c:choose>
	</div>
	<hr>
	<table border="1" style="margin: 0px auto;">
<!-- 		<tr height="52" bgcolor="lightblue" align="center"> -->
<!-- 			<td width="350"><p align="left"/> -->
<!-- 				<a href='register'>註冊</a><br>  -->
<!-- 			</td> -->
<!-- 			<td  width="350"><p align="left"/> -->
<!--       			<a href='login'>登入</a><br> -->
<!--     		</td> -->
<!--     	</tr> -->
    	<tr height="52" bgcolor="lightblue" align="center">
    		<td  width="350"><p align="left"/>
      			<a href='member/members'>查詢所有會員資料</a><br>
    		</td>
		</tr>
	</table>


</body>
</html>