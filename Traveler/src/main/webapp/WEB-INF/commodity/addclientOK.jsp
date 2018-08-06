<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Order completed</title>
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


<!-- -------------------------------------------------------------------------------------------------------	 -->



<!-- <script src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js"></script> -->

<!-- --------A別人的網站-----------------------------------------------------------------------------------------------	 -->

<!-- -------------------------------------------------------------------------------------------------------	 -->
<style>
.dx {
	width: 1200px;
	height: 800px;
	margin: auto;
}

.df {
	width: 1200px;
	margin: auto;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
		
        <%@ include file="/WEB-INF/frontStageHeader.jsp"%>


			<div id="fh5co-blog-section" class="fh5co-section-gray">
				<div class="df">
					<h1 style="text-align: center">兌換成功</h1>
					<h2 style="text-align: center">商品將在10個工作天內寄送，感謝您的兌換</h2>
					<a href="commlistfront"><p style="text-align: center">點我回紅利兌換</p></a>
				</div>
				<div class="dx">
					<div id="carouselExampleIndicators" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0"
								class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img height=800px class="d-block w-100"
									src="/Traveler/images/disney.jpg" alt="First slide">
							</div>
							<div class="carousel-item">
								<img height=800px class="d-block w-100"
									src="/Traveler/images/sakura_1.jpg" alt="Second slide">
							</div>
							<div class="carousel-item">
								<img height=800px class="d-block w-100"
									src="/Traveler/images/sukii.jpg" alt="Third slide">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
			
<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
				</div>
				</div>
</body>
</html>