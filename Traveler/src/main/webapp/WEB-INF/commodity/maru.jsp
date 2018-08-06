<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

 <!-- D3 函式庫 --> 
<script src=https://d3js.org/d3.v3.min.js charset="utf-8"></script>
<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
<script src="/Traveler/js/airplain/backLeft.js"></script>


<title>Insert title here</title>
</head>

<script>


function test(){
	var json=${json};
	var a=json[0].commodityBean.name;
	var b=json[0].cliquantity;
	
	var a1=json[1].commodityBean.name;
	var a2=json[2].commodityBean.name;
	var a3=json[3].commodityBean.name;
	var a4=json[4].commodityBean.name;
	var a5=json[5].commodityBean.name;
	var a6=json[6].commodityBean.name;
	var a7=json[7].commodityBean.name;
	
	
	var b1=json[1].cliquantity;
	var b2=json[2].cliquantity;
	var b3=json[3].cliquantity;
	var b4=json[4].cliquantity;
	var b5=json[5].cliquantity;
	var b6=json[6].cliquantity;
	var b7=json[7].cliquantity;
	
	
	
	
	
// 	$("#total").html("<h3  style='color:#CC0000; margin:0px;padding:0px;'>五月份總搜尋數："+totalClick+"</h3>");
	d3.select("body").append("div").attr("id", "mydiv");
	//設定欲顯示的資料。
	
	var data = [{
	values: [b,b1,b2,b3,b4,b5,b6,b7],
	labels: [a,a1,a2,a3,a4,a5,a6,a7],
	type: 'pie'
	}];
	//設定框架大小。 
	var frame = {
	height: 600,
	width: 600};
	//使用Plotly畫出圓餅圖。 
	Plotly.newPlot('mydiv', data, frame);
}
</script>    

<body>

	<%@ include file="/WEB-INF/backStageHeader.jsp" %>

	<!--=========================要放的東西  =====================-->
	
	
	<div style="margin:0px auto; width:700px; padding:15px" class="content text-center" >
			<div id="total"></div>
			<div id="mydiv"></div>
			<button style="padding:20x" class="btn-info" onclick="test()">五月份兌換統計圖</button> 		
		</div>
	
	
	
	
	
	
	<!-- =========側邊欄位開始============ -->	
<div id="mwt_mwt_slider_scroll">
			<div id="mwt_slider_content"   >
				<div id="nav" style="margin:auto;">			 
					 <ul>
				 		 <li>
							<a class="btn btn-primary"href="commlist" ><h3><font color="white">商品清單</font></h3></a>
						 </li>
						  <li >
						   	<a class="btn btn-primary"href="tsuika"><h3><font color="white">新增商品</font></h3></a>			   
						  </li>
						  <li >
						   	<a class="btn btn-primary"href="henkou"><h3><font color="white">修改商品</font></h3></a>			   
						  </li>
						  <li >
						   	<a class="btn btn-primary"href="ClientLists"><h3><font color="white">兌換清單</font></h3></a>			   
						  </li>
						   <li >
						   	<a class="btn btn-primary"href="maruru"><h3><font color="white">兌換統計</font></h3></a>			   
						  </li>
					 </ul>
				</div>
			</div>
		</div>
<!-- =========側邊欄位結束============ -->
	
	
	
	
		<div class="content text-center">
		<h2></h2>
		
		
		</div>

	<!--  ========================================================== -->




	<%@ include file="/WEB-INF/backStageFooter.jsp" %>



</body>
</html>