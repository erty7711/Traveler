<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<link rel="shortcut icon" href="/Traveler/images/LeftTopCorner.ico">

<!--<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>-->

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">
<!-- Date Picker -->
<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet" href="css/cs-select.css">
<link rel="stylesheet" href="css/cs-skin-border.css">

<link rel="stylesheet" href="css/style.css">


<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->


<!-- jQuery -->


<script src="js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/sticky.js"></script>

<!-- Stellar -->
<script src="js/jquery.stellar.min.js"></script>
<!-- Superfish -->
<script src="js/hoverIntent.js"></script>
<script src="js/superfish.js"></script>
<!-- Magnific Popup -->
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/magnific-popup-options.js"></script>
<!-- Date Picker -->
<script src="js/bootstrap-datepicker.min.js"></script>
<!-- CS Select -->
<script src="js/classie.js"></script>
<script src="js/selectFx.js"></script>

<!-- Main JS -->
<script src="js/main.js"></script>




<!-- 讀取出發地地xml -->
<script type="text/javascript">
	var xmlhttp;
	$(document).ready(loadXMLDoc);
	function loadXMLDoc() {
		//判斷瀏覽器
		if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else { // code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		//等待
		// document.getElementById("myDiv").innerHTML="讀取中...";   
		//載入
		xmlhttp.open("GET", "xml/CITYcode.xml", true);
		//處理
		xmlhttp.onreadystatechange = function() {
			handleStateChange();
		};
		//設定表頭
		xmlhttp.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded;charset=utf-8")
		//傳送
		xmlhttp.send();
	}

	function handleStateChange() //處理動作--讀取XML
	{
		// readyState: 4 代表 request finished and response is ready
		// status: 200 代表 Ok
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			xmlDoc = xmlhttp.responseXML;
			txt = "";
			D = xmlDoc.getElementsByTagName("D");
			C = xmlDoc.getElementsByTagName("C");
			DEP = document.getElementById("sec");
			for (i = 0; i < C.length; i++) {
				opy = new Option(D[i].childNodes[0].nodeValue,
						C[i].childNodes[0].nodeValue);
				DEP.options.add(opy);

			}

		}

		{
			$("#sec")
					.click(
							function() {
// 								if($('#sec').options[0])
								if($('#sec :selected').text()=="選擇出發地"){
									$('#sec :selected').remove();
								}
								xmlhttp.open("GET", "xml/CITYcode.xml", true);
								xmlhttp.onreadystatechange = function() {
									RET = document.getElementById("ret");
									value = $('#sec :selected').text();
									while (RET.length > 0) {
										RET.remove(RET.length - 1);
									}

									if (xmlhttp.readyState == 4
											&& xmlhttp.status == 200) {
										xmlDoc = xmlhttp.responseXML;
										txt = "";
										D = xmlDoc.getElementsByTagName("D");
										C = xmlDoc.getElementsByTagName("C");

										for (i = 0; i < C.length; i++) {
											opy = new Option(
													D[i].childNodes[0].nodeValue,
													C[i].childNodes[0].nodeValue);
											if (D[i].childNodes[0].nodeValue == value) {
												continue;
											}
											RET.options.add(opy);
										}
									}
								};
								xmlhttp
										.setRequestHeader("Content-Type",
												"application/x-www-form-urlencoded;charset=utf-8")
								xmlhttp.send();

							});
		}
		;

	}

	<!--選擇出發地後生出目的地-->
</script>
<!-- 		選擇日期 -->


<script src="js/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="js/jquery-ui.min.css">
<script>
	$(function() {
		$("#datepicker")
				.datepicker(
						{
							showOn : "button",
							buttonImage : "https://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
							buttonImageOnly : true,
							buttonText : "Select date",
							minDate : 0,
							maxDate : "+1M +10D",
							dateFormat : "yy-mm-dd"
						});
	});

	$(function() {
		$("#datepicker2")
				.datepicker(
						{
							showOn : "button",
							buttonImage : "https://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
							buttonImageOnly : true,
							buttonText : "Select date",
							minDate : 0,
							maxDate : "+1M +10D",
							dateFormat : "yy-mm-dd"
						});
	});

	$(document).ready(function() {
		$("div.input-text5,img").on("change", function() {
			setTimeout(function() {
				$("div.input-text6,img").click()
			}, 10);
			//   		  		$("div.input-text6,img").click()
		});
	});
</script>


<script type="text/javascript">
	function re() {
		$("#reb").attr("style", "display");

	}
	function reba() {
		$("#reb").attr("style", "display:none");

	}
</script>

<script >

function slow(){
	$("#all").css("filter","opacity(40%)");
	$("#img1").css("position","absolute").css("left","50%").css("top","50%")
	.css("display","inline").css("filter","opacity(100%)");
}

</script>

</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">

			<header id="fh5co-header-section" class="sticky-banner">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
						<h1 id="fh5co-logo">
							<a href=""><i class="icon-airplane"></i>Travel</a>
						</h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li class="active"><a href="">Home</a></li>
								<li><a href="theme/themeTitles" class="fh5co-sub-ddown">主題旅遊</a>
								<!-- 下面這塊ul以後會刪掉 -->
									<ul class="fh5co-sub-menu">								    
										<li><a href="#">Family</a></li>
										<li><a href="#">CSS3 &amp; HTML5</a></li>
										<li><a href="#">Angular JS</a></li>
										<li><a href="#">Node JS</a></li>
										<li><a href="#">Django &amp; Python</a></li>
									</ul></li>
								<li><a href="flight.html">航班</a></li>
								<li><a href="hotel.html">Hotel</a></li>
								<li><a href="car.html">Car</a></li>
								<li><a href="blog.html">客戶服務</a></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</header>

			<!-- end:header-top -->

			<div  id="all"  class="fh5co-hero">
				<div class="fh5co-overlay"></div>
				<div class="fh5co-cover" data-stellar-background-ratio="0.5"
					style="background-image: url(images/cover_bg_1.jpg);">
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
											<li role="presentation"><a href="#hotels"
												aria-controls="hotels" role="tab" data-toggle="tab">飯店</a></li>
											<li role="presentation"><a href="#packages"
												aria-controls="packages" role="tab" data-toggle="tab">主題旅遊</a>
											</li>
										</ul>

										<!-- Tab panes -->

										<div class="tab-content">
											<div role="tabpanel" class="tab-pane active" id="flights">
												<div class="row">
													<form action="BFMS" method="get">
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
													<label for="class">成人:</label>
													<select name="psg" style="color:blue; " class="cs-select cs-skin-border">
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
																<label for="class">孩童</label> 
																<select style="color:blue; "
																	class="cs-select cs-skin-border">
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
											</div>

											<div role="tabpanel" class="tab-pane" id="hotels">
												<div class="row">
													<div class="col-xxs-12 col-xs-12 mt">
														<div class="input-field">
															<label for="from">City:</label> <input type="text"
																class="form-control" id="from-place"
																placeholder="Los Angeles, USA" />
														</div>
													</div>
													<div class="col-xxs-12 col-xs-6 mt alternate">
														<div class="input-field">
															<label for="date-start">Return:</label> <input
																type="text" class="form-control" id="date-start"
																placeholder="mm/dd/yyyy" />
														</div>
													</div>
													<div class="col-xxs-12 col-xs-6 mt alternate">
														<div class="input-field">
															<label for="date-end">Check Out:</label> <input
																type="text" class="form-control" id="date-end"
																placeholder="mm/dd/yyyy" />
														</div>
													</div>
													<div class="col-sm-12 mt">
														<section>
															<label for="class">Rooms:</label> <select
																class="cs-select cs-skin-border">
																<option value="" disabled selected>1</option>
																<option value="economy">1</option>
																<option value="first">2</option>
																<option value="business">3</option>
															</select>
														</section>
													</div>
													<div class="col-xxs-12 col-xs-6 mt">
														<section>
															<label for="class">Adult:</label> <select
																class="cs-select cs-skin-border">
																<option value="" disabled selected>1</option>
																<option value="1">1</option>
																<option value="2">2</option>
																<option value="3">3</option>
																<option value="4">4</option>
															</select>
														</section>
													</div>
													<div class="col-xxs-12 col-xs-6 mt">
														<section>
															<label for="class">Children:</label> <select
																class="cs-select cs-skin-border">
																<option value="" disabled selected>1</option>
																<option value="1">1</option>
																<option value="2">2</option>
																<option value="3">3</option>
																<option value="4">4</option>
															</select>
														</section>
													</div>
													<div class="col-xs-12">
														<input type="submit" class="btn btn-primary btn-block"
															value="Search Hotel">
													</div>
												</div>
											</div>

											<div role="tabpanel" class="tab-pane" id="packages">
												<div class="row">
													<div class="col-xxs-12 col-xs-6 mt">
														<div class="input-field">
															<label for="from">City:</label> <input type="text"
																class="form-control" id="from-place"
																placeholder="Los Angeles, USA" />
														</div>
													</div>
													<div class="col-xxs-12 col-xs-6 mt">
														<div class="input-field">
															<label for="from">Destination:</label> <input type="text"
																class="form-control" id="to-place"
																placeholder="Tokyo, Japan" />
														</div>
													</div>
													<div class="col-xxs-12 col-xs-6 mt alternate">
														<div class="input-field">
															<label for="date-start">Departs:</label> <input
																type="text" class="form-control" id="date-start"
																placeholder="mm/dd/yyyy" />
														</div>
													</div>
													<div class="col-xxs-12 col-xs-6 mt alternate">
														<div class="input-field">
															<label for="date-end">Return:</label> <input type="text"
																class="form-control" id="date-end"
																placeholder="mm/dd/yyyy" />
														</div>
													</div>
													<div class="col-sm-12 mt">
														<section>
															<label for="class">Rooms:</label> <select
																class="cs-select cs-skin-border">
																<option value="" disabled selected>1</option>
																<option value="economy">1</option>
																<option value="first">2</option>
																<option value="business">3</option>
															</select>
														</section>
													</div>
													<div class="col-xxs-12 col-xs-6 mt">
														<section>
															<label for="class">Adult:</label> <select
																class="cs-select cs-skin-border">
																<option value="" disabled selected>1</option>
																<option value="1">1</option>
																<option value="2">2</option>
																<option value="3">3</option>
																<option value="4">4</option>
															</select>
														</section>
													</div>
													<div class="col-xxs-12 col-xs-6 mt">
														<section>
															<label for="class">Children:</label> <select
																class="cs-select cs-skin-border">
																<option value="" disabled selected>1</option>
																<option value="1">1</option>
																<option value="2">2</option>
																<option value="3">3</option>
																<option value="4">4</option>
															</select>
														</section>
													</div>
													<div class="col-xs-12">
														<input type="submit" class="btn btn-primary btn-block"
															value="Search Packages">
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>
								<div class="desc2 animate-box">
									<div algin=ce class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1" >										<p>
										<p><a class="btn btn-primary btn-lg" href="#">空空的不知道要放啥</a></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>




			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">
					<p class="fh5co-social-icons">
						<a href="#"><i class="icon-twitter2"></i></a> <a href="#"><i
							class="icon-facebook2"></i></a> <a href="#"><i
							class="icon-instagram"></i></a> <a href="#"><i
							class="icon-dribbble2"></i></a> <a href="#"><i
							class="icon-youtube"></i></a>
					</p>
					<p>
						Copyright 2016 Free Html5 <a href="#">Module</a>. All Rights
						Reserved. <br>Made with <i class="icon-heart3"></i> by <a
							href="http://freehtml5.co/" target="_blank">Freehtml5.co</a> /
						Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	</footer>



	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->
	
										<div  id="img1" style="display:none">										
											<h1><strong>搜尋中......</strang></h1> 
											<img  alt="" src="images/airplain.gif" widtg=200px height=150px />
									</div>


</body>
</html>

