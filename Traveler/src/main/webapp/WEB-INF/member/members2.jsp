<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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

<!-- 測試側邊 -->
<style>
* {
    margin: 0;
    padding: 0;
}
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

function dat(){
var sum=0;
var num=$("#tbo").find("tr").length;
var nowD= (Date.parse(new Date())).valueOf();
var aDay=1000*60*60*24;
var number=$("#tbb").find("tr").length;

for(var k=0;k<number;k++){
	var test= $("#tbo").find("tr:eq("+k+")").find("td:eq(1)").text();
	var date =(Date.parse( new Date(test))).valueOf();
	if((nowD-date)<aDay){
		var visibity=$("#tbo").find("tr:eq("+k+")").find("img").css("visibility", "visible");
		sum+=1;
	}
}
$("#newTotal").empty().append(sum);
}

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
html,body{
margin:0;
padding:0;
height:100%;
}
.wrapper{
min-height:100%;
margin-bottom:0px;
}
.footer .push{
margin-bottom:0px;
}
</style>

<title>Insert title here</title>
</head>
<body>
<!-- <body style="background-image: url(/Traveler/images/sky.jpg);"> -->

	<%@ include file="/WEB-INF/backStageHeader.jsp" %>

	<!--=========================要放的東西  =====================-->
		<div class="row no-gutters" style="padding: 25px 0 0 200px">
		<div class="container">
			本站會員總人數：${memberSize}人<br>
				本日新會員人數：${newMemberSize}人
			<table class="table table-hover table-bordered" >
				<thead>
					<tr>
						<th scope="col">會員帳號</th>
						<th scope="col">會員姓名</th>
						<th scope="col">會員性別</th>
						<th scope="col">會員生日</th>
						<th scope="col">會員email</th>
						<th scope="col">會員手機</th>
						<th scope="col">會員地址</th>
						<th scope="col">註冊時間</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var='member' items='${members}'>
						<tr>
							<td><a href="<spring:url value='./member2?memberId=${member.memberId}'/>">${fn:substring(member.memberId, 0, 3)}*****${fn:substring(member.memberId, 8, 11)}</a></td>		
							<td>${member.chineseLastName}ｏ${fn:substring(member.chineseFirstName, 1, 2)}</td>		
							<td>${member.gender}</td>
							<td>${member.birthday}</td>
							<td>${member.email}</td>
							<td>${member.mobile}</td>
							<td>${member.address}</td>
							<td>${member.registerTime}</td>
						</tr>

					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
	<!-- =========側邊欄位開始============ -->	
<div id="mwt_mwt_slider_scroll">
<div id="mwt_slider_content"   >
<%@include file="/WEB-INF/member/leftSide.jsp" %>
<!--  <div><h1>會員管理<h1></div> -->
<!--  <div><a href="/Traveler/member/members"><h3>會員圖像資料</h3></a></div> -->
<!--  <div><a href="/Traveler/member/members2"><h3>會員清單</h3></a></div> -->
</div>
</div>
<!-- =========側邊欄位結束============ -->
	

	<%@ include file="/WEB-INF/backStageFooter.jsp" %>



</body>
</html>