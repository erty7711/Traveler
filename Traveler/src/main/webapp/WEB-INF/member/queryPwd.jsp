<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
<title>Traveler查詢密碼</title>
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
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe" crossorigin="anonymous"></script>
<style type="text/css">
#main {
	position: relative;
	top: 50px;
	width: 100%;
	text-align: center;
}

#content {
	width: 500px;
	margin-left: auto;
	margin-right: auto;
}
</style>
<script type="text/javascript">
	//由<body>的onLoad事件處理函數觸發此函數
	function setFocusToUserId() {
		document.forms[0].userId.focus(); // 將游標放在userId欄位內
	}
</script>

</head>
<body onLoad="setFocusToUserId()" >
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>
	<!-- 下列敘述設定變數funcName的值為LOG，top.jsp 會用到此變數 -->
	<c:set var="funcName" value="LOG" scope="session" />
	<c:set var="msg" value="查詢密碼" />
	<Form name="queryPwdForm" action="<c:url value='./queryPwd.do'/>" method="POST">
		
		<div id='content'style="padding-top:15px">
			<Table width='500px'
				style="border-width: 2; background: #E0E0E0; border-color: #EF02A4;">
				<TR>
					<TH width="180">&nbsp;</TH>
					<TH width="180">&nbsp;</TH>
				</TR>
				<TR>
					<TD colspan='2' align="CENTER"
						style="font-size: 0.6cm; font-weight: 300;"><Font
						color="#006600" face="標楷體"> ${AppName} </Font></TD>
				</TR>
				<TR>
					<TD height='50' colspan='2' align="CENTER"
						style="font-size: 0.8cm; font-weight: 300;"><Font
						color="#006600" face="標楷體"> ${msg} </Font></TD>
				</TR>
				<TR height='10'>
					<TD align="CENTER" colspan='2'>&nbsp;</TD>
				</TR>
				<TR>
					<TD width="180" align="right">*帳號：</TD>
					<TD width="180" colspan='2' align="LEFT"><input type="text"
						name="memberId" size="16" placeholder="請輸入身份證字號"> <%--              value="${sessionScope.memberId}"> --%>

						&nbsp;<small><Font color='red' size="-3">${ErrorMsgMap.AccountEmptyError}</Font></small></TD>
				</TR>
				<TR>
					<TD width="180" align="right">*出生年月日：</TD>
					<TD width="180" colspan='2' align="LEFT"><input
						type="text" name="birthday" size="16"
						placeholder="格式為yyyy/MM/dd"> <%--              value="${sessionScope.password}"> --%>

						&nbsp;<small><Font color='red' size="-3">${ErrorMsgMap.ErrorMsg}</Font></small></TD>

				</TR>
				<TR height='10'>
					<TD align="CENTER" colspan='2'>&nbsp;<Font color='red'
						size="-1">${ErrorMsgMap.ErrorMsg}&nbsp;</Font></TD>
				</TR>
				<TR>
					<TD colspan="2" align="center"><input type="submit" value="確認送出">
					</TD>
				</TR>
				<TR height='10'>
					<TD align="CENTER" colspan='2'>&nbsp;</TD>
				</TR>
			</Table>
				<p style="padding:center;">【確認送出】後，網站將寄送一組新密碼於您原登錄的e-mail。</p>
		</div>
	</Form>
	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>
</html>