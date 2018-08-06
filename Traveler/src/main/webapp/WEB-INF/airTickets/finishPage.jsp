<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link rel="shortcut icon" href="/Traveler/images/favicon.ico">

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
<script>

function homepage(){
	window.location.assign("/Traveler/");
}

</script>
<style>
.det1{
width:340px;
margin:10px;
padding:10px;
}
.det2{
background-color:orange;
color:white;
}
.img{
margin:10px;
}

</style>
</head>
<body
	style="background-image: url(/Traveler/images/true.jpg); background-attachment: fixed;">
	<div id="fh5co-wrapper">
		<div id="fh5co-page">

			<%@ include file="/WEB-INF/frontStageHeader.jsp" %>

			<!-- end:header-top -->

			<div class="fh5co-hero">

				<!-- 	背景暖色系樣式			<div class="fh5co-overlay"></div> -->
				<div class="fh5co-cover" data-stellar-background-ratio="0.5">

					<div>

						<div class="main123">
							<div class="item123">
								<div align="center">
									<div class="det1">
										<h3 class="det2" >感謝您的訂購</h3>
										<h3 class="det2">系統已寄出明細至您的信箱</h3>
										<a style="color:blue" href="/Traveler/airTickets/download">點擊下載<img src="/Traveler/images/pdfIcon.png" alt="" height="16" width="16"  ></a>
									</div>
									<br><br><br>
									<div><h2 style="color:red;">精選推薦飯店</h2>
<!-- 									<div > -->
<!-- 									<img class="img" height="200" width="200" src="/Traveler/images/hotelPic/Japan/Tokyo/japDRA/HotelCoverImage/japDRA.jpg" /> -->
<!-- 									<img class="img" height="200" width="200" src="/Traveler/images/hotelPic/Japan/Tokyo/japDRA/HotelCoverImage/japDRA.jpg" /> -->
<!-- 									</div> -->

<!-- 						輪播 -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img height="400" width="400" src="/Traveler/images/hotelPic/Japan/Tokyo/japDRA/HotelCoverImage/japDRA.jpg" alt="Los Angeles">
    </div>

    <div class="item">
      <img height="400" width="400" src="/Traveler/images/hotelPic/Japan/Tokyo/japDRB/HotelCoverImage/japDRB.jpg" alt="Chicago">
    </div>

    <div class="item">
      <img height="400" width="400" src="/Traveler/images/hotelPic/Japan/Tokyo/japDRC/HotelCoverImage/japDRC.jpg" alt="New York">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


									</div>
									<div style="margin:20px;">
									<button type="button" class="btn-xs btn-warning " onclick="homepage()">回首頁</button>
									</div>
								</div>
								<div id=ticketResult></div>
							</div>
						</div>




	<%@ include file="/WEB-INF/frontStageFooter.jsp" %>
			



			</div>
			<!-- END fh5co-page -->

		</div>
		<!-- END fh5co-wrapper -->

	</div>
</body>
</html>


