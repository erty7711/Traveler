<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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


<title>TravelerManager</title>

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
	height: 630px;
	float: left;
}

.d2 {
	background-color: #FFFFFF;
	width: 80%;
	height: 630px;
	float: right;
}
</style>
<!-- 側邊樣式 -->
<link rel="stylesheet" href="/Traveler/css/side/side.css">

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


<script>
	function entry() {
		alert("doubleclick");

	}

	$("#name").blur(function() {
		alert("blur");
		// 	  $("name").attr("background-color","#D6D6FF").attr("readonly",true);
	});

	$(document).ready(function() {
		$("input").dblclick(function() {
			$(this).css("background-color", "#FFFFCC");
			$(this).attr("readonly", false);
		});
		$("input").blur(function() {
			$(this).css("background-color", "#D6D6FF").attr("readonly", true);
			;
		});
	});
	function geust() {
		$("#guestInfo").slideToggle();
	}
</script>

<script>
	var orderId = $
	{
		bean.orderID
	};

	function update() {
		console.log(data);
		var data = new FormData(document.querySelector("form"));
		$
				.ajax({
					url : 'http://localhost:8080/Traveler/airTickets/back/selectOne/tt/tt',
					type : 'POST',
					data : data,
					//enctype: "multipart/form-data",
					contentType : false,
					processData : false,
					success : function(responce) {
						alert(responce);
						alert("ok");
						// 		window.location.assign(responce);
					},
					error : function() {
						alert("格式錯誤");
					}

				});
	}
</script>

</head>
<body>
	<div id="allpage">
		<header> <nav>
	<ul class="menu">
			<li cless="le"><a href="/Traveler/backStage"><img
					src='/Traveler/images//icon_index.png' height="25px" width="25px" />TRAVEL後台管理系統</a></li>
			<li><a href="/Traveler/airTickets/back/list"><img
					src='/Traveler/images//icon_air.png' height="25px" width="25px" />機票管理</a></li>
			<li><a href="index.html"><img
					src='/Traveler/images//icon_hotel.png' height="25px" width="25px" />飯店管理</a></li>
			<li><a href="index.html"><img
					src='/Traveler/images//icon_traveler.png' height="25px"
					width="25px" />主題旅遊管理</a></li>
			<li><a href="index.html"><img
					src='/Traveler/images//icon_vip.png' height="25px" width="25px" />會員管理</a></li>
			<li><a href="commlist"><img
					src='/Traveler/images//icon_comm.png' height="25px" width="25px" />紅利管理</a></li>
			<li><a href="index.html"><img
					src='/Traveler/images//icon_support.png' height="25px" width="25px" />客服管理</a></li>
			<li><a href="index.html"><img
					src='/Traveler/images//icon_login.png' height="25px" width="25px" />登入</a></li>
			<!--登出-->
		</ul>

		</nav> </header>

		<div class="d1">
			<h2 style="text-align: center">機票管理</h2>
			<ul class="me">
				<li><a href="index.html">查詢會員訂單</a></li>
				<li><a href="index.html">航班統計報表</a></li>

			</ul>

		</div>





		<div class="d2">
			<ul class="list-group">
				<li class="list-group-item">訂單編號：${bean.orderID}</li>
				<li class="list-group-item">去程 :${bean.depDate} ${bean.depT}
					${bean.depC} (機型 ${bean.depNum}) ~ ${bean.depDate} ${bean.arrT}
					${bean.arrC}</li>
				<li class="list-group-item">回程 :${bean.returnDate}
					${bean.returnTime} ${bean.arrC} (機型 ${bean.returnNum}) ~
					${bean.returnDate} ${bean.returnArrTime} ${bean.depC}</li>
				<li class="list-group-item">航空公司：(${bean.airline})</li>
				<li class="list-group-item">總價格： ${bean.price}</li>
				<li class="list-group-item">紅利點數：${bean.redPoint}</li>
				<li class="list-group-item">付款狀態：${bean.checkpay}</li>
			</ul>
			<button type="button" style="margin: 10px;"
				class="btn btn-default btn-sm" id="guest" onclick="geust()">聯絡人&旅客資訊</button>
			<div id="guestInfo" style="display: none">
				<div class="text-left"
					style="width: 50%; height: auto; margin: 0px auto; border: 1px orange solid">
					<form id="myform" enctype="multipart/form-data">

						<fieldset>
							<h2>
								<legend class="label label-warning">聯絡人資訊</legend>
							</h2>
							<div class="st1">
								<label onclick="return false" for="contactName" class="lab">姓名</label>
								<input type="text" name="contactName" id="contactName" size="10"
									value="${bean.guestBean.contactName}">
							</div>
							<div class="st1">
								<label for="contactIdCard" class="lab">身分證字號</label> <input
									type="text" name="contactIdCard" id="contactIdCard"
									maxlength="10" value="${bean.guestBean.contactIdCard}">
							</div>
							<div class="st1">
								<label for="contactPhone" class="lab">手機</label> <input
									type="text" name="contactPhone" id="contactPhone"
									maxlength="10" value="${bean.guestBean.contactPhone}">
							</div>
							<div class="st1">
								<label for="contactAddress" class="lab">地址</label> <input
									type="text" name="contactAddress" id="contactAddress"
									value="${bean.guestBean.contactAddress}">
							</div>
							<div class="st1">
								<label for="" class="lab">E-mail</label> <input type="text"
									name="contactEmail" id="contactEmail"
									value="${bean.guestBean.contactEmail}">
							</div>
						</fieldset>

						<input type="hidden" name="_method" value="post" />
						<div class="sub text-center">
							<input type="hidden" name="orderID" value="${bean.orderID}" /> <input
								type="hidden" name="guestId" value="${bean.guestId}" />
							<button type="button" class="btn btn-warning" onclick="update()">修改</button>
						</div>

					</form>
				</div>
			</div>
		</div>





	</div>
	<!-- 		<footer id="Footer" > -->
	<!-- 		<p>TRAVEL &nbsp; Tel:(02)2222-8888 &nbsp; -->
	<!-- 			台北市復興南路一段390號 &nbsp; &copy; 2014 All Rights Reserved Quality Art -->
	<!-- 			Technology CO.</p> -->
	<!-- 		</footer> -->
</body>

</html>