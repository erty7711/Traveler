<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
	integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
	integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
	crossorigin="anonymous"></script>
	
	
<title>Insert title here</title>

<style>
        
* {
	margin: 0;
	padding: 0;
}

/* #allpage { */
/* 	margin: 0 auto; */
/* } */

.menu {
	overflow: auto;
	width: 100%;
	list-style-type: none;
	background-color: #FF8800;
	border-bottom: 3px solid #cccccc;
}

.me {
	overflow: auto;
	width: 100%;
	list-style-type: none;


}

.menu li {
	float: left;
	width: 11em;
	/*為了讓連結區域能依字型大小的變化自動放大,因此在指定width屬性時採用em為單位*/
	border-right: 1px solid #cccccc;
}

.me li {
	float: left;
    width: 15em; 
	/*為了讓連結區域能依字型大小的變化自動放大,因此在指定width屬性時採用em為單位*/
	
}

.menu li a {
	display: block;
	width: 100%;
	line-height: 3em;
	/*讓文字上下空出適當的空白,不用padding屬性,直接將行Box的高度設的高一些*/
	color: #333333;
	text-decoration: none;
	text-align: center;
}

.me li a {
	display: block;
	width: 100%;
	line-height: 3em;
	/*讓文字上下空出適當的空白,不用padding屬性,直接將行Box的高度設的高一些*/
	color: #333333;
	text-decoration: none;
	text-align: center;
}

 .menu li a:hover { 
	color: #FFFFFF; 
 	background-color: #AA7700; 
 } 
  .me li a:hover { 
	color: #FFFFFF; 
 	background-color: #AA7700; 
 }


/* .content { */
/* 	overflow: auto; */
/* 	width: 100%; */
/* 	padding-bottom: 20px; */
/* } */

/* aside { */
/* 	float: right; */
/* 	width: 20%; */
/* } */

.list1 {
	list-style: decimal inside;
}



footer {
	width: 100%;
	clear: both;
	line-height: 2.5em;
	text-align: center;
	color: #ffffff;
	background-color: #FFBB00;
	/*             border-bottom-right-radius: 15px; */
	/*             border-bottom-left-radius: 15px; */
}

.d1 {
	background-color: #FF8800;
	width: 20%;
	height:630px;
	float:left;
}

.d2{
background-color: #FFFFFF;
width: 80%;
height:630px;
float:right;
}

</style>



</head>
<body>
	<div id="allpage">
		<header>		
		 <nav>		
		<ul class="menu">
	    	<li cless="le"><a href="index.html"><img src='/Traveler/images//icon_index.png' height="25px" width="25px"/>TRAVEL後台管理系統</a></li>
					<li><a href="airTickets/back/list"><img src='/Traveler/images//icon_air.png' height="25px" width="25px"/>機票管理</a></li>
					<li><a href="index.html"><img src='/Traveler/images//icon_hotel.png' height="25px" width="25px"/>飯店管理</a></li>
					<li><a href="../theme/management"><img src='/Traveler/images//icon_traveler.png' height="25px" width="25px"/>主題旅遊管理</a></li>
					<li><a href="index.html"><img src='/Traveler/images//icon_vip.png' height="25px" width="25px"/>會員管理</a></li>
					<li><a href="commlist"><img src='/Traveler/images//icon_comm.png' height="25px" width="25px"/>紅利管理</a></li>
					<li><a href="feedbackopinion"><img src='/Traveler/images//icon_support.png' height="25px" width="25px"/>客服管理</a></li>
					<li><a href="index.html"><img src='/Traveler/images//icon_login.png' height="25px" width="25px"/>登入</a></li> <!--登出-->
		</ul>

		</nav> </header>
	
<div class="d1"> 
<h2 style="text-align:center">旅遊管理項目</h2>
<ul class="me">
<li><a href="titleManagement">主題種類</a></li>
<li><a href="productManagement">商品資料</a></li>
<li><a href="journeyManagement">行程內容</a></li>
<li><a href="applicationManagement">報名表單</a></li>

</ul>

		</div>
		
		
		
		
		
<div class="d2">產品管理介面</div>
		
		<footer>
		<p>TRAVEL &nbsp; Tel:(02)2222-8888 &nbsp;
			台北市復興南路一段390號 &nbsp; &copy; 2014 All Rights Reserved Quality Art
			Technology CO.</p>
		</footer>
	</div>
</body>

</html>