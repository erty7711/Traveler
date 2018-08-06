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
<!-- 手風琴 -->
<link rel="stylesheet" href="/Traveler/css/astyle.css" type="text/css"/>

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

<!-- 手風琴 -->
<script type="text/javascript" src="/Traveler/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
$(function(){
	$("ul.subs").hide();
	$("div.main").click(function(){
		$("ul.subs").hide();
		if($("+ul",this).css("display")=="none"){
		   $("+ul",this).show();
	    }
	 });
  });
</script>
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
<script>
function test()
{alert("已新增成功~~將回到旅遊管理首頁");
	}
</script>

<title>Insert title here</title>
</head>
<body>

	<%@ include file="/WEB-INF/backStageHeader.jsp" %>

	<!--=========================要放的東西  =====================-->
	
	<!-- =========側邊欄位開始============ -->	
<%@ include file="/WEB-INF/theme/backLeftSide.jsp" %>
<!-- =========側邊欄位結束============ -->
	
	
	
	
        <div class="content text-center">
<div style="color:black">

  <div>
   <h1 style="text-align: center;margin-top: 50px;">主題維護</h1>
  </div>


<hr width='3'>

<section style='font-size:30px;'>
	<form:form method="POST" modelAttribute="themeBean" enctype="multipart/form-data" >
	 <fieldset>
	  <label style="margin-right: 150px;">新增主題類別</label><br>
	   <form:input  path="titleName" type="text"/>								
		<br>
		<br>
		<label style="margin-right: 150px;">新增主題圖片</label>
		<form:input  style="margin-left: 600px;" path="titleImage" type="file"/>	
		<br>
		<br>															
		<div>					
		<input type="submit" value="確認送出" onclick="test()" />
		</div>
	  </fieldset>
	</form:form>		
</section>	
</div>
		
</div>

	<!--  ========================================================== -->




	<%@ include file="/WEB-INF/backStageFooter.jsp" %>



</body>
</html>