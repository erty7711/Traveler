<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
<title>Travel &mash; 100% Free Fully Responsive HTML5 Template
	by FREEHTML5.co</title>
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
<link rel="shortcut icon" href="images/LeftTopCorner.ico">

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

	


</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">

	<%@ include file="/WEB-INF/frontStageHeader.jsp" %>

			<!-- end:header-top -->

			<div  id="all"  class="fh5co-hero">
				<div class="fh5co-overlay"></div>
				<div class="fh5co-cover" data-stellar-background-ratio="0.1"
					style="background-image: url(/Traveler/images/backgroundairplain.jpg);">
					
					<div class="desc">
						<div class="container">
							<div class="row">
								<div class="col-sm-5 col-md-5">
									<div class="tabulation animate-box">

										<!-- Nav tabs -->
										<ul class="nav nav-tabs" role="tablist">
											<li role="presentation" class="active"><a
												href="#flights" aria-controls="flights" role="tab"
												data-toggle="tab" style="color: blue;">航班</a></li>
<!-- 											<li role="presentation"><a href="#hotels" -->
<!-- 												aria-controls="hotels" role="tab" data-toggle="tab">飯店</a></li> -->
<!-- 											<li role="presentation"><a href="#packages" -->
<!-- 												aria-controls="packages" role="tab" data-toggle="tab">主題旅遊</a> -->
<!-- 											</li> -->
							
										</ul>

										<!-- Tab panes -->

										<div class="tab-content">
											<div role="tabpanel" class="tab-pane active" id="flights">
												<div class="row">
													<form action="/Traveler/airTickets/BFMS" method="get">
														<div class="col-xxs-12 col-xs-5 mt">
															<div class="input-field">
																<label for="from">出發地</label>
																<!-- 													增加先啟提供地點 -->
																<!-- 													<input type="text" class="form-control" id="from-place" placeholder="台灣-桃園"/> -->
																<select id="sec" name="dept" class="secDep"
																	style="color: blue;">
																	<option selected="selected">選擇出發地</option>
																</select>
															</div>
														</div>
														<div class="col-xxs-12 col-xs-5 col-xs-offset-1 mt">
															<div class="input-field">
																<label for="from">目的地</label>
																<!-- 																 <input type="text" class="form-control" id="to-place" -->
																<!-- 																placeholder="Tokyo, Japan" /> -->
																<select id="ret" name="arrv" style="color: blue;">
																	<option selected="selected">必須選擇出發地</option>
																</select>
															</div>
														</div>
														<div class="col-xxs-12 col-xs-6 mt alternate">
															<div class="input-field">
																<label for="date-start">出發日</label>
																<!-- 															<input type="text" class="form-control" id="date-start" placeholder="mm/dd/yyyy" /> -->
																<div class="input-text5">
																	<input type="text" class="form-control" name="depDate"
																		id="datepicker" readonly>
																</div>
															</div>
														</div>
														<div class="col-xxs-12 col-xs-6 mt alternate">
															<div class="input-field" id="reb">
																<label for="date-end">回程日</label>
																<!-- <input type="text" class="form-control" id="date-end" placeholder="mm/dd/yyyy" /> -->
																<div class="input-text6">
																	<input type="text" class="form-control" name="reDate"
																		id="datepicker2" readonly>
																</div>
															</div>
														</div>
														<div class="col-sm-12 mt">
															<section style="color: black;">
																<!-- 															<pre style="border: 0"> -->
																<input type="radio" name="array" value="single"
																	checked="yes" onchange="re()">來回
																&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
																&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
																<input type="radio" name="array" value="return"
																	onchange="reba()">單程
																<!-- 																</pre> -->
																<!--<label for="class">Class:</label>
													<select class="cs-select cs-skin-border">
														<option value="" disabled selected>Economy</option>
														<option value="economy">Economy</option>
														<option value="first">First</option>
														<option value="business">Business</option>-->
																</select>
															</section>
														</div>
														<div class="col-xxs-12 col-xs-6 mt">
															<section>
																<label for="class">成人:</label> <select name="psg"
																	style="color: blue;" class="cs-select cs-skin-border">
																	<!-- 														<option value="" disable selected ></option> -->
																	<option value="1" selected>1</option>
																	<option value="2">2</option>
																	<option value="3">3</option>
																	<option value="4">4</option>
																</select>
															</section>
														</div>
														<div class="col-xxs-12 col-xs-6 mt">
															<section>
																<label for="class">孩童</label> <select
																	style="color: blue;" class="cs-select cs-skin-border">
																	<option value="0">0</option selected>
																	<option value="1">1</option>
																	<option value="2">2</option>
																	<option value="3">3</option>
																	<option value="4">4</option>
																</select>
															</section>
														</div>
														<div class="col-xs-12">
															<!-- 														<input type="submit" class="btn btn-primary btn-block"  value="Search Flight"> -->
															<input type="submit" class="btn btn-primary btn-block"
																value="Search Flight" onclick="slow()">
														</div>
													</form>
												</div>
												<div class="text-center"><h3 style="color:red">${error}</h3></div>
											</div>
<!-- 											飯店分頁 -->
<!-- 											<div role="tabpanel" class="tab-pane" id="hotels"> -->
<!-- 												<div class="row"> -->
<!-- 													<div class="col-xxs-12 col-xs-12 mt"> -->
<!-- 														<div class="input-field"> -->
<!-- 															<label for="from">City:</label> <input type="text" -->
<!-- 																class="form-control" id="from-place" -->
<!-- 																placeholder="Los Angeles, USA" /> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<div class="col-xxs-12 col-xs-6 mt alternate"> -->
<!-- 														<div class="input-field"> -->
<!-- 															<label for="date-start">Return:</label> <input -->
<!-- 																type="text" class="form-control" id="date-start" -->
<!-- 																placeholder="mm/dd/yyyy" /> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<div class="col-xxs-12 col-xs-6 mt alternate"> -->
<!-- 														<div class="input-field"> -->
<!-- 															<label for="date-end">Check Out:</label> <input -->
<!-- 																type="text" class="form-control" id="date-end" -->
<!-- 																placeholder="mm/dd/yyyy" /> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<div class="col-sm-12 mt"> -->
<!-- 														<section> -->
<!-- 															<label for="class">Rooms:</label> <select -->
<!-- 																class="cs-select cs-skin-border"> -->
<!-- 																<option value="" disabled selected>1</option> -->
<!-- 																<option value="economy">1</option> -->
<!-- 																<option value="first">2</option> -->
<!-- 																<option value="business">3</option> -->
<!-- 															</select> -->
<!-- 														</section> -->
<!-- 													</div> -->
<!-- 													<div class="col-xxs-12 col-xs-6 mt"> -->
<!-- 														<section> -->
<!-- 															<label for="class">Adult:</label> <select -->
<!-- 																class="cs-select cs-skin-border"> -->
<!-- 																<option value="" disabled selected>1</option> -->
<!-- 																<option value="1">1</option> -->
<!-- 																<option value="2">2</option> -->
<!-- 																<option value="3">3</option> -->
<!-- 																<option value="4">4</option> -->
<!-- 															</select> -->
<!-- 														</section> -->
<!-- 													</div> -->
<!-- 													<div class="col-xxs-12 col-xs-6 mt"> -->
<!-- 														<section> -->
<!-- 															<label for="class">Children:</label> <select -->
<!-- 																class="cs-select cs-skin-border"> -->
<!-- 																<option value="" disabled selected>1</option> -->
<!-- 																<option value="1">1</option> -->
<!-- 																<option value="2">2</option> -->
<!-- 																<option value="3">3</option> -->
<!-- 																<option value="4">4</option> -->
<!-- 															</select> -->
<!-- 														</section> -->
<!-- 													</div> -->
<!-- 													<div class="col-xs-12"> -->
<!-- 														<input type="submit" class="btn btn-primary btn-block" -->
<!-- 															value="Search Hotel"> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 											主題分頁 -->
<!-- 											<div role="tabpanel" class="tab-pane" id="packages"> -->
<!-- 												<div class="row"> -->
<!-- 													<div class="col-xxs-12 col-xs-6 mt"> -->
<!-- 														<div class="input-field"> -->
<!-- 															<label for="from">City:</label> <input type="text" -->
<!-- 																class="form-control" id="from-place" -->
<!-- 																placeholder="Los Angeles, USA" /> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<div class="col-xxs-12 col-xs-6 mt"> -->
<!-- 														<div class="input-field"> -->
<!-- 															<label for="from">Destination:</label> <input type="text" -->
<!-- 																class="form-control" id="to-place" -->
<!-- 																placeholder="Tokyo, Japan" /> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<div class="col-xxs-12 col-xs-6 mt alternate"> -->
<!-- 														<div class="input-field"> -->
<!-- 															<label for="date-start">Departs:</label> <input -->
<!-- 																type="text" class="form-control" id="date-start" -->
<!-- 																placeholder="mm/dd/yyyy" /> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<div class="col-xxs-12 col-xs-6 mt alternate"> -->
<!-- 														<div class="input-field"> -->
<!-- 															<label for="date-end">Return:</label> <input type="text" -->
<!-- 																class="form-control" id="date-end" -->
<!-- 																placeholder="mm/dd/yyyy" /> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 													<div class="col-sm-12 mt"> -->
<!-- 														<section> -->
<!-- 															<label for="class">Rooms:</label> <select -->
<!-- 																class="cs-select cs-skin-border"> -->
<!-- 																<option value="" disabled selected>1</option> -->
<!-- 																<option value="economy">1</option> -->
<!-- 																<option value="first">2</option> -->
<!-- 																<option value="business">3</option> -->
<!-- 															</select> -->
<!-- 														</section> -->
<!-- 													</div> -->
<!-- 													<div class="col-xxs-12 col-xs-6 mt"> -->
<!-- 														<section> -->
<!-- 															<label for="class">Adult:</label> <select -->
<!-- 																class="cs-select cs-skin-border"> -->
<!-- 																<option value="" disabled selected>1</option> -->
<!-- 																<option value="1">1</option> -->
<!-- 																<option value="2">2</option> -->
<!-- 																<option value="3">3</option> -->
<!-- 																<option value="4">4</option> -->
<!-- 															</select> -->
<!-- 														</section> -->
<!-- 													</div> -->
<!-- 													<div class="col-xxs-12 col-xs-6 mt"> -->
<!-- 														<section> -->
<!-- 															<label for="class">Children:</label> <select -->
<!-- 																class="cs-select cs-skin-border"> -->
<!-- 																<option value="" disabled selected>1</option> -->
<!-- 																<option value="1">1</option> -->
<!-- 																<option value="2">2</option> -->
<!-- 																<option value="3">3</option> -->
<!-- 																<option value="4">4</option> -->
<!-- 															</select> -->
<!-- 														</section> -->
<!-- 													</div> -->
<!-- 													<div class="col-xs-12"> -->
<!-- 														<input type="submit" class="btn btn-primary btn-block" -->
<!-- 															value="Search Packages"> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
										</div>

									</div>
								</div>
								<div class="desc2 animate-box">
									<div algin=ce
										class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1">
										<p>
										<p>
											<a class="btn btn-primary btn-lg" href="backStageForm">前往後台的傳送門</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>



  <%@ include file="/WEB-INF/frontStageFooter.jsp"%>



	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<div id="img1" style="display: none">
		<h1>
			<strong>搜尋中......</strang>
		</h1>
		<img alt="" src="images/airplain.gif" widtg=200px height=150px />
	</div>


</body>
</html>

