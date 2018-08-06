<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order completed</title>
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />

<!--(額外補足)Bootstrap 網頁的基本結構-->
<link rel="stylesheet" href="/Traveler/css/bootstrap.min.css">
<link rel="stylesheet" href="/Traveler/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- -------------------------------------------------------------------------------------------------------	 -->


<link rel="shortcut icon" href="/Traveler/images/LeftTopCorner.ico">


<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="images/favicon.ico">

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

<!-- -------------------------------------------------------------------------------------------------------	 -->
<!-- (原廠設定)Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="/Traveler/images/LeftTopCorner.ico">
<!-- (原廠設定) -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>
<!-- (原廠設定) -->

<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- (原廠設定) -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/all.css"
	integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1"
	crossorigin="anonymous">
<!-- (原廠設定) -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/solid.css"
	integrity="sha384-29Ax2Ao1SMo9Pz5CxU1KMYy+aRLHmOu6hJKgWiViCYpz3f9egAJNwjnKGgr+BXDN"
	crossorigin="anonymous">
<!-- (原廠設定) -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/regular.css"
	integrity="sha384-seionXF7gEANg+LFxIOw3+igh1ZAWgHpNR8SvE64G/Zgmjd918dTL55e8hOy7P4T"
	crossorigin="anonymous">
<!-- (原廠設定) -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/brands.css"
	integrity="sha384-ATC/oZittI09GYIoscTZKDdBr/kI3lCwzw3oBMnOYCPVNJ4i7elNlCxSgLfdfFbl"
	crossorigin="anonymous">
<!-- (原廠設定) -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.9/css/fontawesome.css"
	integrity="sha384-Lyz+8VfV0lv38W729WFAmn77iH5OSroyONnUva4+gYaQTic3iI2fnUKtDSpbVf0J"
	crossorigin="anonymous">

<!-- (原廠設定)Animate.css -->
<link rel="stylesheet" href="/Traveler/css/animate.css">

<!-- (原廠設定)Icomoon Icon Fonts-->
<link rel="stylesheet" href="/Traveler/css/icomoon.css">

<!-- (原廠設定)Bootstrap  -->
<link rel="stylesheet" href="/Traveler/css/bootstrap.css">

<!-- (原廠設定)Superfish -->
<link rel="stylesheet" href="/Traveler/css/superfish.css">

<!-- (原廠設定)Magnific Popup -->
<link rel="stylesheet" href="/Traveler/css/magnific-popup.css">

<!-- (原廠設定)Date Picker -->
<link rel="stylesheet" href="/Traveler/css/bootstrap-datepicker.min.css">

<!-- (原廠設定)CS Select -->
<link rel="stylesheet" href="/Traveler/css/cs-select.css">
<link rel="stylesheet" href="/Traveler/css/cs-skin-border.css">
<link rel="stylesheet" href="/Traveler/css/style.css">

<style>

.do {
	height: 1100px;
	padding-top: 20px;
	width: auto;
}

.do1 {
	border: 3px solid 	#ffa042;
	width: 35%;
	height: 980px;
	margin: auto;
	padding-top: 20px;
	border-radius:20px;
	background-color:#FFFFFF;
}

.do2 {
	width: 35%;
	margin: auto;
	
}

.do3 {
	width: 35%;
	margin: auto;
	padding-top:15px;
}

.do4 {
	width: 80%;
	margin: 20px;
	
}

.le{
text-align:center;
color:#FF5511;
font-size:2em;
font-weight:900


}

</style>

<title></title>
</head>
<body>
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>

  <div id="fh5co-blog-section" class="fh5co-section-gray" >

	<div class="do">
		<div class="do1">
			<form:form method='POST' action='/Traveler/addclientpath'
				modelAttribute="Client" enctype="multipart/form-data">
				<input type="hidden" name="commid"
					value="${Client.commodityBean.commodityid}">
								
				<legend class="le">您兌換商品為:</legend>
				<div class="do2">
					<img width='200' height='200'
						src="<c:url value='/getPicture/${Client.commodityBean.commodityid}'/>" />
					<p style="color:#888888;font-size:1.3em;font-weight:900">${Client.commodityBean.name}</p>
				</div>
				<div class="do4">
				
<%-- 					<p style="color:blue;font-size:1.3em;font-weight:900 " id='p1'>商品點數:${Client.commodityBean.point}</p> --%>
					<p style="color:blue;font-size:1.3em;font-weight:900 " >商品點數:<span id='p1'></span></p>
				</div>
				<div class="do4">
					<p style="color:red;font-size:1.3em;font-weight:900">會員點數:<span id='p2' ></span></p>
				</div>

				<div class="do4">
					<label for='quantity'>數量:</label>
					<div>
						<form:select path="cliquantity" id="quantity" >
							<form:option value="1" lable="" />
							<form:option value="2" lable="" />
							<form:option value="3" lable="" />
							<form:option value="4" lable="" />
						</form:select>
					</div>
				</div>


				<div class="form-group col-md-10">
					<label for='clientname'>收件人姓名:</label>
					<div>
						<form:input type="text" id="clientname" name='clientname'
							path="clientname" class="form-control"
							value='${Client.memberBean.chineseLastName}${Client.memberBean.chineseFirstName}' 
							/>
					</div>
				</div>

				<div class="form-group col-md-10">
					<label for='clientaddr'>寄送地址:</label>
					<div>
						<form:input type="text" id="clientaddr" name='clientaddr' class="form-control"
							path="clientaddr" value='${Client.memberBean.address}'  />
					</div>
				</div>

				<div class="form-group col-md-10">
					<label for='clienttel'>電話:</label>
					<div>
						<form:input type="text" id="clienttel" name='clienttel' class="form-control"
							path="clienttel" value='${Client.memberBean.mobile}' />
					</div>
				</div>


				<div class="do4">
					<label for='Transport'>寄送方式:</label>
					<div>
						<form:select path="clitransport" id="Transport">
							<form:option value="郵局" lable="" />
							<form:option value="黑貓宅急便" lable="" />
						</form:select>
					</div>
				</div>

				<div class="do3" >
					<button type="submit" class="btn btn-primary" id='cliAdd'>送出</button>
				</div>
			</form:form>
		</div>
	</div>
	</div>

	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>

<script>

$("#quantity").change(function(){$("#p1").html(
		parseInt(
				parseInt(${Client.commodityBean.point})
				*parseInt($(this).val()) )) });
				
$("#p1").html(parseInt(${Client.commodityBean.point}));


$("#p2").html(parseInt(${Client.memberBean.point}));



</script>


</body>

</html>