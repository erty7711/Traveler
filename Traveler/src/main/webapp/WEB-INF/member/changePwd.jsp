<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet'
	href='//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css' />
<title>變更密碼</title>
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

<style>
table {
	padding: 1px 0 1px 0;
	border-collapse: collapse;
}
</style>
<script type="text/javascript"
	src='<c:url value="/js/utils/Traveler.Utils.js"/>'></script>
<script type="text/javascript" src='<c:url value="/js/member.js"/>'></script>
<script>
 function  keyin(){ 
		$("#password").val("A123456789");
		$("#chkPassword").val("A123456789");
 }
 
</script>
</head>

<body
	onload="javascript:document.changePasswordForm.oldPassword.focus();">
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>
	<center>
		<form name="changePasswordForm"
			action="<c:url value='./changePwd.do' />" method="POST">
			<table border="0" align="center" width="600">
				<thead>
					<tr bgcolor='#F5F5F5' >
						<th height="60" colspan="2" align="center"  style="padding-top:15px">
							<h2 align="center">會員修改密碼</h2>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr bgcolor='#F5F5F5' align="center">
						<td width="100" height="40" align="right">*會員帳號：</td>
						<td width="360" height="40" align="left">${memberId}
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="100" height="40" align="right">*舊密碼：</td>
						<td width="360" height="40" align="left"><input
							id='oldPassword' style="text-align: left" name="oldPassword"
							type="password" size="20" placeholder="須與登入密碼一致"> <!--                              	     <p>(1.不可空白，2.至少6個字且必須包含英文字母、數字、特殊字元[!@#$%^&*])</p> -->
							<div style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.oldPassword}</div>
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="100" height="40" align="right">*密碼：</td>
						<td width="360" height="40" align="left"><input id='password'
							style="text-align: left" name="password" type="password"
							size="20" placeholder="至少6個字須含英文和數字" onblur="chkPwd()">
							<div id="errMsgPwd"
								style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.password}</div>
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="100" height="40" align="right">*確認密碼：</td>
						<td width="360" height="40" align="left"><input
							id='chkPassword' style="text-align: left" name="chkPassword"
							type="password" size="20" placeholder="須與密碼欄一致"
							onblur="chkChkPwd()">
							<div id="errMsgChkPwd"
								style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.chkPassword}</div>
						</td>
					</tr>
					<br>
					<tr bgcolor='#F5F5F5'>
						<td height="50" colspan="2" align="center"><input
							type="button" value="上一頁" onclick="goBack()"> <input
							type="submit" value="送出"></td>
					</tr>
					
				</tbody>
			</table>
			<button type="button" class="btn-info" onclick="keyin()">key in</button>
		</form>
	</center>
	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>

</html>