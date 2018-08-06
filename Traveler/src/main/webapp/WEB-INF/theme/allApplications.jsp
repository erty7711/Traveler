<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Traveler</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />


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
<!-- 連結旁邊的小ICON套件  -->	
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe" crossorigin="anonymous"></script>
<!-- Bootstrap -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> -->
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
<!-- 測試側邊 -->
<style>
#mwt_mwt_slider_scroll
{
top: 95px;
left:0px; 
width:200px;
position:fixed; 
z-index:9999;
}

#mwt_slider_content{
/* background:#FF8800; */
 background:#FF8800; 
text-align:center;
padding-top:20px;
}

#mwt_fb_tab {
position:absolute;
top:20px;
right:-24px;
width:24px;
background:#FF8800;
color:#ffffff;
font-family:Arial, Helvetica, sans-serif;
text-align:center;
padding:9px 0;

-moz-border-radius-topright:10px;
-moz-border-radius-bottomright:10px;
-webkit-border-top-right-radius:10px;
-webkit-border-bottom-right-radius:10px;
}
#mwt_fb_tab span {
display:block;
height:12px;
padding:1px 0;
line-height:12px;
text-transform:uppercase;
font-size:12px;
}
</style>
<script type='text/javascript'>
$(document).ready(function(){
	$("#mwt_mwt_slider_scroll").animate({ left:'0px' }, 600 ,'swing');
	$('#mwt_slider_content').css('height', ($(window).height() - 20) + 'px' );
})
// $(function(){
// var w = $("#mwt_slider_content").width();
// $('#mwt_slider_content').css('height', ($(window).height() - 20) + 'px' ); //將區塊自動撐滿畫面高度

// $("#mwt_fb_tab").mouseover(function(){ //滑鼠滑入時
// if ($("#mwt_mwt_slider_scroll").css('left') == '-'+w+'px')
// {
// $("#mwt_mwt_slider_scroll").animate({ left:'0px' }, 600 ,'swing');
// }
// });


// $("#mwt_slider_content").mouseleave(function(){　//滑鼠離開後
// $("#mwt_mwt_slider_scroll").animate( { left:'-'+w+'px' }, 600 ,'swing');
// });
// });

</script>
<style>
        
* {
	margin: 0;
	padding: 0;
}

/* #allpage { */
/* 	margin: 0 auto; */
/* } */

.menu {
	overflow: auto;
	width: 100%;
	list-style-type: none;
	background-color: #FF8800;
	border-bottom: 3px solid #cccccc;
}

.me {
	overflow: auto;
	width: 100%;
	list-style-type: none;


}

.menu li {
	float: left;
	width: 11em;
	/*為了讓連結區域能依字型大小的變化自動放大,因此在指定width屬性時採用em為單位*/
	border-right: 1px solid #cccccc;
}

.me li {
	float: left;
    width: 15em; 
	/*為了讓連結區域能依字型大小的變化自動放大,因此在指定width屬性時採用em為單位*/
	
}

.menu li a {
	display: block;
	width: 100%;
	line-height: 3em;
	/*讓文字上下空出適當的空白,不用padding屬性,直接將行Box的高度設的高一些*/
	color: #333333;
	text-decoration: none;
	text-align: center;
}

.me li a {
	display: block;
	width: 100%;
	line-height: 3em;
	/*讓文字上下空出適當的空白,不用padding屬性,直接將行Box的高度設的高一些*/
	color: #333333;
	text-decoration: none;
	text-align: center;
}

 .menu li a:hover { 
	color: #FFFFFF; 
 	background-color: #AA7700; 
 } 
  .me li a:hover { 
	color: #FFFFFF; 
 	background-color: #AA7700; 
 }


/* .content { */
/* 	overflow: auto; */
/* 	width: 100%; */
/* 	padding-bottom: 20px; */
/* } */

/* aside { */
/* 	float: right; */
/* 	width: 20%; */
/* } */

.list1 {
	list-style: decimal inside;
}



footer {
	width: 100%;
	clear: both;
	line-height: 2.5em;
	text-align: center;
	color: #ffffff;
	background-color: #FFBB00;
	/*             border-bottom-right-radius: 15px; */
	/*             border-bottom-left-radius: 15px; */
}

.d1 {
	background-color: #FF8800;
	width: 20%;
	height:630px;
	float:left;
}

.d2{
background-color: #FFFFFF;
width: 80%;
height:630px;
float:right;
}

</style>

<!-- <link rel="stylesheet" -->
<!-- 	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"> -->


<!-- 老師 -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/jumbotron.css">
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

<title>Insert title here</title>
</head>
<body>

<%@ include file="/WEB-INF/backStageHeader.jsp" %>

<!--=========================要放的東西  =====================-->
	
<!-- =========側邊欄位開始============ -->	
<%@ include file="/WEB-INF/theme/backLeftSide.jsp" %>
<!-- =========側邊欄位結束============ -->
<!-- 左邊的bar會歪 -->
<div style="color:black;margin-left:230px;font-size:24px">
<!-- 大標題  + 新增主題連結區-->
<br>
<div class="container-fluid">
 <div class="row">
  <div class="col-md-12">
   <div class="header">全報名表&nbsp;&nbsp;&nbsp;&nbsp;
    <a onmouseover="this.style.color='orange'" onmouseout="this.style.color='#4F4FFF'" style="font-size:24px;color:#4F4FFF"href=''>依行程排序<img src="/Traveler/images/排序.png" width="40" height="40"></a>
    <a onmouseover="this.style.color='orange'" onmouseout="this.style.color='#4F4FFF'" style="font-size:24px;color:#4F4FFF"href=''>依人數排序<img src="/Traveler/images/排序.png" width="40" height="40"></a>
    <a onmouseover="this.style.color='orange'" onmouseout="this.style.color='#4F4FFF'" style="font-size:24px;color:#4F4FFF"href=''>依出團日排序<img src="/Traveler/images/排序.png" width="40" height="40"></a>
  </div>
 </div>
</div>
<hr>
<!-- 表格 title -->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-1">編號</div>
  <div class="col-md-1">行程</div>
  <div class="col-md-1">姓名</div>
  <div class="col-md-2" style="width:170px">連絡電話</div>
  <div class="col-md-1" style="width:80px">人數</div>
  <div class="col-md-1">出團日</div>
  <div class="col-md-2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;簽收日</div>
  <div class="col-md-3"></div>
 </div>
</div>
<hr>
<!-- 表格 內容 -->
<c:forEach var='applications' items='${applications}'>
<div class="container-fluid">
 <div class="row">
  <div class="col-md-1">${applications.applicationId}</div>
  <div class="col-md-1">${applications.journeyId}</div>
  <div class="col-md-1">${applications.name}</div>
  <div class="col-md-2" style="width:180px">${applications.cellPhone}</div>
  <div class="col-md-1" style="width:50px">${applications.people}</div>
  <div class="col-md-1"><fmt:formatDate value="${applications.themeJourneys.setOut}" pattern="yyyy/MM/dd"/></div>
  <div class="col-md-2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${applications.terminate}" pattern="yyyy/MM/dd"/></div>
  <div class="col-md-3">
   <a href='../theme/allApplications/${applications.applicationId}'>查看詳細內容<img src="/Traveler/images/向左橘.png" width="40" height="40"></a>
   
  </div> 
 </div>
</div>
</c:forEach>
</div>
</div>
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
	<!--  ========================================================== -->
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
	<%@ include file="/WEB-INF/backStageFooter.jsp" %>
</body>
</html>