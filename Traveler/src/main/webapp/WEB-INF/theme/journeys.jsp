<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<!-- bootstrap網格 -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"></link>
<style>
.well, .panel {text-align: center;}
</style>
<!-- 返回上方按鈕 -->
<style>
#gotop {
    position:fixed;
    z-index:90;
    right:30px;
    bottom:31px;
    display:none;
    width:50px;
    height:50px;
    color:#fff;
    background:#33b5e5;
    line-height:50px;
    border-radius:50%;
    transition:all 0.5s;
    text-align: center;
    box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16), 0 2px 10px 0 rgba(0,0,0,0.12);
}
#gotop :hover{
    background:#0099CC;
}
</style>
<!--  -->
</head>
<body>
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>
<!-- 大標 放三張跟此產品相關的圖-->	
<h1 style="background:black;color:white;text-align:center;height:50px;font-weight:bold">~嚴選行程*任君挑選~</h1>
<a><img src="/Traveler/images/${productName}-2.png" style="border:10px #808000 ridge;width:495px; height:250px;"></a>	
<a><img src="/Traveler/images/${productName}-1.png" style="border:10px #808000 ridge;width:495px; height:250px;"></a>
<a><img src="/Traveler/images/${productName}-3.png" style="border:10px #808000 ridge;width:495px; height:250px;"></a>
<br>
<hr>
<!-- 展示區 -->
<div class="container-fluid" style="text-align:center;background:#2B2B2B">
 <div class="row" style="font-size:30px;color:white">
  <div class="col-md-2" style="text-align:right">出發日</div>
  <div class="col-md-4">商品名稱</div>
  <div class="col-md-2">航空公司</div>
  <div class="col-md-1">價格</div>
  <div class="col-md-3"></div>
 </div>
</div>
<hr><hr>
<c:forEach var='journeys' items='${journeys}'>
<div class="container-fluid" style="font-size:22px;color:#2B2B2B;text-align:center">
 <div class="row">
  <!--欄位1 出發日期-->
  <div class="col-md-2" style="text-align:right">
   <div class="panel-body" style="background:white;border:10px white none;margin-top:10px"><fmt:formatDate value="${journeys.setOut}" pattern="yyyy/MM/dd"/></div>
  </div>
  <!--欄位2 商品名稱-->
  <div class="col-md-4">
   <div class="panel-body"style="font-family: DFKai-sb;background:white;border:10px white none;margin-top:10px"><${journeys.themeProducts.productName}></div>
  </div>
  <!--欄位3 航空公司-->
  <div class="col-md-2">
   <div class="panel-body" style="background:white;border:10px white none;"><a><img src="/Traveler/images/${journeys.companyName}.gif"style="width:50px; height:50px;"></a>&nbsp;&nbsp;${journeys.companyName}</div>
  </div>
  <!--欄位4 價格-->
  <div class="col-md-1">
   <div class="panel-body" style="background:white;border:10px white none;margin-top:10px" >$&nbsp;&nbsp;${journeys.price}</div>
  </div>
  <!--欄位5 連結-->
  <div class="col-md-3">
   <div class="panel-body" style="background:white;border:10px white none;text-align:left"><a onmouseover="this.style.color='orange'" onmouseout="this.style.color='#4F4FFF'" style="color:#4F4FFF;" href="${journeys.themeProducts.productName}/${journeys.journeyId}">查看更多細節<img src="/Traveler/images/向左箭頭.png" width="50" height="50"></a></div>
  </div>
  
 </div>
</div>
<hr><hr>
</c:forEach> 
			
<script type="text/javascript">
$(function() {
    /* 按下GoTop按鈕時的事件 */
    $('#gotop').click(function(){
        $('html,body').animate({ scrollTop: 0 }, 'slow');   /* 返回到最頂上 */
        return false;
    });
     
    /* 偵測卷軸滑動時，往下滑超過400px就讓GoTop按鈕出現 */
    $(window).scroll(function() {
        if ( $(this).scrollTop() > 400){
            $('#gotop').fadeIn();
        } else {
            $('#gotop').fadeOut();
        }
    });
});				
/*返回上方的按鈕*/
</script>   
<!-- 記得要把按鈕放到網頁上, 否則它不會出現 -->
<img src=/Traveler/images/向上箭頭.png id="gotop" style="">
   <i class="fa fa-angle-up"></i>
	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>
</html>