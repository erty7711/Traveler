<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
<title>Travel &mash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>
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
<script src="/Traveler/js/airplain/airSearch.js"></script>
<script src="/Traveler/js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="/Traveler/js/jquery-ui.min.css">


<script>
	$(function() {
		var dateFormat = "yyyy/MM/dd", from = $("#from").datepicker({
			defaultDate : "+1w",
			changeMonth : true,
			numberOfMonths : 1
		}).on("change", function() {
			to.datepicker("option", "minDate", getDate(this));
		}), to = $("#to").datepicker({
			defaultDate : "+1w",
			changeMonth : true,
			numberOfMonths : 1
		}).on("change", function() {
			from.datepicker("option", "maxDate", getDate(this));
		});

		function getDate(element) {
			var date;
			try {
				date = $.datepicker.parseDate(dateFormat, element.value);
			} catch (error) {
				date = null;
			}

			return date;
		}
	});
</script>
<style>
/* 飯店日期顏色 */
.ui-datepicker-month{
background-color:black;
color:orange;
}

</style>

</head>
<body>
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>
	
				<div id="all" class="fh5co-hero">
			<!-- <div class="fh5co-overlay"></div> -->
			<div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image: url(/Traveler/images/T1.jpg);">
					
				
				<div class="desc">
					<div class="container">
						<div class="row">
							<div class="col-sm-5 col-md-5">
								<!-- <a href="index.html" id="main-logo">Travel</a> -->
								<div class="tabulation animate-box">

								  <!-- Nav tabs -->
								   <ul class="nav nav-tabs" role="tablist">
								      <li role="presentation"  class="active">								      	
										    <a href="#flights" aria-controls="flights" role="tab" data-toggle="tab"><i class="fas fa-plane"></i>機票</a>
								      </li>									  
									  
										  <li role="presentation">															
												<a href="#hotels" aria-controls="hotels" role="tab" data-toggle="tab"><i class="fas fa-home"></i>飯店</a>
										  </li>
								   </ul>

								   <!-- Tab panes -->
									<div class="tab-content">
									 <div role="tabpanel" class="tab-pane active" id="flights">
										<div class="row">
												<form action="/Traveler/airTickets/BFMS" method="get">
														<div class="col-xxs-12 col-xs-5 mt" style="margin:0px;">
															<div class="input-field">
																<label for="from">出發地</label>
																<!-- 													增加先啟提供地點 -->
																<!-- 													<input type="text" class="form-control" id="from-place" placeholder="台灣-桃園"/> -->
																<select id="sec" name="dept" class="secDep"
																	style="color: 	#CC6600; font-size: 15pt;	">
																	<option selected="selected">選擇出發地</option>
																</select>
															</div>
														</div>
														<div class="col-xxs-12 col-xs-5 col-xs-offset-1 mt">
															<div class="input-field">
																<label for="from">目的地</label>
																<!-- 																 <input type="text" class="form-control" id="to-place" -->
																<!-- 																placeholder="Tokyo, Japan" /> -->
																<select id="ret" name="arrv" style="color: 	#CC6600	; font-size: 15pt;">
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
																<label for="class">小孩</label> <select
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
												<input type="submit" class="btn btn-primary btn-block" value="搜尋" onclick="slow()">
											</div>
												</form>
										</div>
										<div class="text-center"><h3 style="color:red">${error}</h3></div>
									 </div>

									 <div role="tabpanel" class="tab-pane" id="hotels">
									 	<div class="row">
									 		<form action="SelectListed" method="get">
											<div class="col-xxs-12 col-xs-12 mt">
												<div class="input-field">
													<label for="from">目的地:</label>
													<input type="text" class="form-control"  name="_Hotel/location" id="from-place" placeholder=""/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-start">入住日期:</label>
													<input type="text" class="form-control" name="_Hotel/start" id="from" placeholder=""/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-end">退房日期:</label>
													<input type="text" class="form-control" name="_Hotel/end" id="to" placeholder=""/>
												</div>
											</div>
											<div class="col-sm-12 mt">
												<section>
													<label for="class" >客房</label>
													<select class="cs-select cs-skin-border" style="color:black">
														<option value="" disabled selected >1間客房，1位成人</option>
														<option value="economy" >1間客房，2位成人</option>
														<option value="first" >1間客房，3位成人</option>
														<option value="business" >更多選項...</option>
													</select>
												</section>
											</div>											
											<div class="col-xs-12">
												<input type="submit" class="btn btn-primary btn-block" value="搜尋">
											</div>
											</form>
										</div>
									 </div>

									</div> 

								</div>
							</div>
						
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		

		<div id="fh5co-tours" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>最受歡迎的飯店 &amp; 飯店預定</h3>
						<p>每間現代化的寬敞客房均擁有極簡風格設計，每間客房都有免費WIFI</p>
					</div>
				</div>
				<div class="row row-bottom-padded-md">
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Traveler/images/hotelPic/Korea/Seoul/korSRA/Double/korSRA1.jpeg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>京都</h3>
								<span>3 nights</span>
								<span class="price">$4,500</span>
								<a class="btn btn-primary btn-outline" href="_Hotel/DisplayRoom">立即定位<i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Traveler/images/hotelPic/Korea/JejuIsland/korCRB/Double/korCRB2.jpeg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>福岡</h3>
								<span>4 nights</span>
								<span class="price">$6,800</span>
								<a class="btn btn-primary btn-outline" href="_Hotel/DisplayRoom1">立即定位<i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Traveler/images/hotelPic/Thailand/ChiangMai/taiCRB/Double/taiCRB2.jpeg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>北海道</h3>
								<span>2 nights</span>
								<span class="price">$6,500</span>
								<a class="btn btn-primary btn-outline" href="_Hotel/DisplayRoom2">立即定位<i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Traveler/images/hotelPic/Thailand/Pattaya/taiBRB/Double/taiBRB1.jpeg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>黑部立山</h3>
								<span>3 nights</span>
								<span class="price">$9,500</span>
								<a class="btn btn-primary btn-outline" href="_Hotel/DisplayRoom3">立即定位<i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Traveler/images/hotelPic/Thailand/Pattaya/taiBRB/Double/taiBRB4.jpeg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>北海道</h3>
								<span>4 nights</span>
								<span class="price">$8,500</span>
								<a class="btn btn-primary btn-outline" href="_Hotel/DisplayRoom4">立即定位<i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="/Traveler/images/hotelPic/Thailand/Pattaya/taiBRB/Double/taiBRB2.jpeg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>鹿兒島</h3>
								<span>2 nights</span>
								<span class="price">$7,500</span>
								<a class="btn btn-primary btn-outline" href="_Hotel/DisplayRoom5">立即定位<i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
				</div>
				
				
				
				
				<div class="row">
					<div class="col-md-12 animate-box">
						<h2 class="heading-title">專屬於自己的舒適的飯店</h2>
					</div>
					<div class="col-md-6 animate-box">
						<p>酒店擁有各種設施，讓您住得愉快。服務人員將歡迎並指導您在Matinloc度假村。部分設備齊全的客房提供免費茶水、壁櫥、毛巾、木質/鑲木地板、衣架。</p>
						<p>這個度假村的客人享受免費的活動，保證從浮潛和皮划艇的充實！它的豪華海景客房、私人海灘、無限游泳池、沙灘餐廳、迷你健身房和圖書館不僅配有書籍和電腦，而且還有娛樂設施。</p>
						<a href="#">知道更多...<i class="icon-arrow-right22"></i></a>
					</div>
					<div class="col-md-6 animate-box">
						<img class="img-responsive" src="/Traveler/images/cover_bg_2.jpg" alt="travel">
					</div>
				</div>
			</div>
		</div>
		<div id="fh5co-testimonial" style="background-image:url(/Traveler/images/img_bg_1.jpg);">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>顧客留言板</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
							<p>&ldquo;我一向不喜歡住陳舊的飯店，這一家確實有點陳舊。我此行兩次入住，第二次的房間更好一點。毛巾也是舊舊的。早飯也沒啥可吃的。優點：第一是服務態度優秀；第二是地段優異，幾乎是新北的最佳位置；第三是價格便宜；第四是冰箱里有免費的飲料。&rdquo;</p>
						</blockquote>
						<p class="author">黃光賢 <a href="http://freehtml5.co/" target="_blank">EEIT100</a> <span class="subtext">資策會數位研究所</span></p>
					</div>
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
							<p>&ldquo;說實話，房間不大，房間景觀很開揚，衛浴分離，但酒店設備很棒，泳池很乾淨～ 酒店附近晚上有點安靜，但離龍山寺站只有5分鐘距離，很推薦給大家。&rdquo;</p>
						</blockquote>
						<p class="author">林子祺<a href="http://freehtml5.co/" target="_blank">EEIT100</a> <span class="subtext">資策會數位研究所</span></p>
					</div>
					
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
							<p>&ldquo;作為一群朋友，我們在2018年5月住在這家酒店。 酒店是一家新建的酒店，位置偏離市中心，步行5分鐘即可到達地鐵站。 酒店房間很小，床也很小。這使得這家酒店不太好。 酒店的早餐非常好，食物很新鮮，熱和美味。&rdquo;</p>
						</blockquote>
						<p class="author">江姿瑩<a href="#">EEIT100</a> <span class="subtext">資策會數位研究所</span></p>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>
</html>