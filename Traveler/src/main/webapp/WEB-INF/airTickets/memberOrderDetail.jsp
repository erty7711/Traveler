<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Traveler</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />

<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="/Traveler/images/LeftTopCorner.ico">

<!--<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>-->

<!-- Animate.css -->
<link rel="stylesheet" href="/Traveler/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/Traveler/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="/Traveler/css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="/Traveler/css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="/Traveler/css/magnific-popup.css">
<!-- Date Picker -->
<link rel="stylesheet" href="/Traveler/css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet" href="/Traveler/css/cs-select.css">
<link rel="stylesheet" href="/Traveler/css/cs-skin-border.css">

<link rel="stylesheet" href="/Traveler/css/style.css">


<!-- Modernizr JS -->
<script src="/Traveler/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="/Traveler/js/respond.min.js"></script>
	<![endif]-->


<!-- jQuery -->


<script src="/Traveler/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="/Traveler/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="/Traveler/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="/Traveler/js/jquery.waypoints.min.js"></script>
<script src="/Traveler/js/sticky.js"></script>

<!-- Stellar -->
<script src="/Traveler/js/jquery.stellar.min.js"></script>
<!-- Superfish -->
<script src="/Traveler/js/hoverIntent.js"></script>
<script src="/Traveler/js/superfish.js"></script>
<!-- Magnific Popup -->
<script src="/Traveler/js/jquery.magnific-popup.min.js"></script>
<script src="/Traveler/js/magnific-popup-options.js"></script>
<!-- Date Picker -->
<script src="/Traveler/js/bootstrap-datepicker.min.js"></script>
<!-- CS Select -->
<script src="/Traveler/js/classie.js"></script>
<script src="/Traveler/js/selectFx.js"></script>

<!-- Main JS -->
<script src="/Traveler/js/main.js"></script>


<script src="/Traveler/js/airplain/airSearch.js"></script>
<script src="/Traveler/js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="/Traveler/js/jquery-ui.min.css">

<!-- 連結旁邊的小ICON套件  -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/all.js"
	integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe"
	crossorigin="anonymous"></script>

</head>
<body>
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>

	<!--  網頁內容 -->
	<div class="container">
		<h2>訂單明細</h2>
	
		<div class="d2 " style="">
			<ul class="list-group">
				<li class="list-group-item">訂單編號：${bean.orderID}</li>
				<li class="list-group-item">去程 :${bean.depDate} ${bean.depT}
					${bean.depC} (機型 ${bean.depNum}) ~ <c:if test="${bean.arrTnextDay==null}">${bean.depDate}</c:if>${bean.arrTnextDay} ${bean.arrT}
					${bean.arrC}</li>
				<li class="list-group-item">回程 :${bean.returnDate}
					${bean.returnTime} ${bean.arrC} (機型 ${bean.returnNum}) ~
					<c:if test="${returnArrTnextDay==null}">${bean.returnDate}</c:if>${bean.returnArrTnextDay} ${bean.returnArrTime} ${bean.depC}</li>
				<li class="list-group-item">航空公司：(${bean.airline})</li>
				<li class="list-group-item">總價格：NT$ ${bean.price} </li>
				<li class="list-group-item">紅利點數：${bean.redPoint} 點</li>
				<li class="list-group-item">付款狀態：${bean.checkpay}</li>
			</ul>
	<div id="guestInfo" >
				<!--  	<div class="text-left" style="width: 50%;height:auto; margin: 0px auto; border: 1px orange solid"> -->
				<div class="text-left"
					style="width: 90%; height:300px; margin: 20px; padding-left: 2px; border: 1px orange solid">
					<form>
						<div class="text-center" style="margin: 5px; background: #FFDD55">
							<strong>聯絡人</strong>
						</div>
						<div>
						<div class="form-row" style="background: white">
							<div class="col-md-4 mb-3">
								<label for="contactName" class="lab">姓名</label> <input
									type="text" name="contactName" id="contactName" maxlength="10"
									value="${bean.guestBean.contactName}">
							</div>
							<div class="col-md-4 mb-3">
								<label for="contactPhone" class="lab">手機</label> <input
									type="text" name="contactPhone" id="contactPhone"
									maxlength="10" value="${bean.guestBean.contactPhone}">
							</div>
							<div class="col-md-4 mb-3">
								<label for="contactIdCard" class="lab">身分證字號</label> <input
									type="text" name="contactIdCard" id="contactIdCard"
									maxlength="10" value="${bean.guestBean.contactIdCard}">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-6  mb-3">
								<label for="contactAddress" class="lab">地址</label> <input
									type="text" name="contactAddress" id="contactAddress" size="40"
									value="${bean.guestBean.contactAddress}">
							</div>
							<div class="col-md-5 col-md-offset-1	 mb-3">
								<label for="" class="lab">E-mail</label> <input type="text"
									name="contactEmail" id="contactEmail" size="30"
									value="${bean.guestBean.contactEmail}">
							</div>
						</div>
						</div>
						<div><h4>&nbsp;</h4></div>
						<div class="text-center" style="margin: 5px; background: 	#FFDD55">
							<strong>旅客一</strong>
						</div>
						<div class="form-row">
							<div class="col-md-4 mb-3">
								<label for="guestOneName" class="lab">姓名</label> <input
									type="text" name="guestOneName" id="guestOneName"
									value="${bean.guestBean.guestOneName}">
							</div>
							<div class="col-md-4 mb-3">
								<label for="guestOneLastName" class="lab">英文姓</label> <input
									type="text" name="guestOneLastName" id="guestOneLastName"
									maxlength="10" value="${bean.guestBean.guestOneLastName}">
							</div>
							<div class="col-md-4 mb-3">
								<label for="guestOneFirstName" class="lab">英文名</label> <input
									type="text" name="guestOneFirstName" id="guestOneFirstName"
									maxlength="10" value="${bean.guestBean.guestOneFirstName}">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-4 mb-3">
								<label for="guestOneBirth" class="lab">生日</label> <input
									type="text" name="guestOneBirth" id="guestOneBirth"
									value="${bean.guestBean.guestOneBirth}">
							</div>
							<div class="col-md-4 mb-3">
							</div>
							<div class="col-md-4  mb-3">
								<label class="lab">性別</label> <input type="text"
									name="guestOneGender" id="guestOneGender"
									value="${bean.guestBean.guestOneGender}">
							</div>
						</div>
					<c:if test="${bean.person==2}">
						<div><h4>&nbsp;</h4></div>
						<div class="text-center" style="margin: 5px; background: 	#FFDD55">
							<strong>旅客二</strong>
						</div>
						<div class="form-row">
							<div class="col-md-4 mb-3">
								<label for="guestTwoName" class="lab">姓名</label> <input
									type="text" name="guestTwoName" id="guestTwoName"
									value="${bean.guestBean.guestTwoName}">
							</div>
							<div class="col-md-4 mb-3">
								<label for="guestTwoLastName" class="lab">英文姓</label> <input
									type="text" name="guestTwoLastName" id="guestTwoLastName"
									maxlength="10" value="${bean.guestBean.guestTwoLastName}">
							</div>
							<div class="col-md-4 mb-3">
								<label for="guestTwoFirstName" class="lab">英文名</label> <input
									type="text" name="guestTwoFirstName" id="guestTwoFirstName"
									maxlength="10" value="${bean.guestBean.guestTwoFirstName}">
							</div>
						</div>
						<div class="form-row">
							<div class="col-md-4 mb-3">
								<label for="guestTwoBirth" class="lab">生日</label> <input
									type="text" name="guestTwoBirth" id="guestTwoBirth"
									value="${bean.guestBean.guestTwoBirth}">
							</div>
							<div class="col-md-4 mb-3">
							</div>
							<div class="col-md-4  mb-3">
								<label class="lab">性別</label> <input type="text"
									name="guestTwoGender" id="guestTwoGender"
									value="${bean.guestBean.guestTwoGender}">
							</div>
						</div>
					</c:if>
						<input type="hidden" name="_method" value="post" />
						<div class="sub text-center" style="margin-top:50px;margin-bottom:10px">
							<input type="hidden" name="orderID" value="${bean.orderID}" /> <input
								type="hidden" name="guestId" value="${bean.guestId}" />
						</div>
					</form>
				</div>
			</div>
			</div>
	</div>





	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>
</html>