<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>commkinds</title>
</head>
<body>

<div>
<h2>類別挑選</h2>

<c:forEach var='kinds' items='${kindlist}'>
  <a href='commlist/${kinds}'>${kinds}</a><br>

</c:forEach>



</div>

</body>
</html>