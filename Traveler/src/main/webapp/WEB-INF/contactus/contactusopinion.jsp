<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe" crossorigin="anonymous"></script>
<style>
from{
border:1px solid black;
}
</style>
<script type="text/javascript">
function disp_confirm()
  {
  var r=confirm("確認送出嗎?")
 
  }
</script>
</head>
<body>
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>

	
			</header>

			<!-- end:header-top -->

			<div class="fh5co-hero">
			   
			   
				<div class="fh5co-cover" data-stellar-background-ratio="0.5"
					style="background-image: url(../images/contactus.jpg);">
					<div class="desc">
						<div class="container">
							<div class="row">
								<div class="col-sm-5 col-md-5">
								<div class="tabulation animate-box"  style="color:black;">
								<section class='container'>
<form:form method='POST' action="InsertOpinionSuccess" modelAttribute="contactusBean"  enctype='multipart/form-data'>
						 <fieldest>
						 <div class='form-group'  style="padding-top:10px">
						 <label for='name'>姓名:</label>
						 <form:input id='name' path='name' type='text'/>
						 </div>
						 <div class='form-group'>
						 <label for='sex'>性別:</label>
						 <form:checkbox  path='sex' value="男"/>男
						 <form:checkbox  path='sex' value="女"/>女
						 </div>
						 <div class='form-group'>
						 <label for='age'>年齡:</label>
						 <form:input id='age' path='age' type='text'/>
						 </div>
						 <div class='form-group'>
						 <label for='phone'>連絡電話:</label>
						 <form:input id='phone' path='phone' type='text'/>
						 </div>
						 <div class='form-group'>
						 <label for='email'>電子信箱:</label>
						 <form:input id='email' path='email' type='text'/>
						 </div>
						 <div class='form-group'>
						 <label for='address'>所在地:</label>						 
						 <form:select path="address" style='color:black'>
									<form:option value="台北市"/>
									<form:option value="新北市"/>
									<form:option value="基隆市"/>
									<form:option value="桃園市"/>
									<form:option value="新竹市"/>								
									<form:option value="新竹縣"/>
									<form:option value="苗栗縣"/>
									<form:option value="台中市"/>
									<form:option value="彰化縣"/>
									<form:option value="南投縣"/>
									<form:option value="雲林縣"/>
									<form:option value="嘉義市"/>
									<form:option value="嘉義縣"/>
									<form:option value="台南市"/>
									<form:option value="高雄市"/>
									<form:option value="屏東縣"/>
									<form:option value="台東縣"/>
									<form:option value="花蓮縣"/>
									<form:option value="宜蘭縣"/>
									<form:option value="澎湖縣"/>
								</form:select>
						 </div>
						 <div class="form-group">
								<label for='opinion'>意見類別:</label>
								<form:select path="opinion" style='color:black'>
									<form:option value="機票預訂"/>
									<form:option value="飯店預訂"/>
									<form:option value="旅遊資訊"/>
									<form:option value="紅利點數"/>
									<form:option value="會員服務"/>
									<form:option value="意見回饋"/>								
									<form:option value="其它"/>
								</form:select>
							</div>
							<div class='form-group'>
						<label for='comment'>意見欄:</label>
						<form:textarea cols="40" rows="5"  id="comment" path='comment' style='color:black'></form:textarea>
						</div>
						<div  style=color:red> 歡迎您對Traveler旅遊各項服務及產品提供意見與發表問題，<br>
                                                  請務必填妥聯絡資料以利Traveler旅遊與您取得聯繫，<br>
                                                   感謝您!
               </div>
               <div class='form-group'>
               	<input type="submit" id='btnAdd' class="btn btn-primary" onclick="disp_confirm()"
value="送出"></input>
               	</div>
		</fieldest>
		</form:form>
	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	<!-- fh5co-blog-section -->

	
	</div>
	</div>
	</footer>

	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>
</html>