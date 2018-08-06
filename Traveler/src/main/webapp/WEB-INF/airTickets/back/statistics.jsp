<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>TravelerManager</title>
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

</script>
<!-- 側邊樣式 -->
<link rel="stylesheet" href="/Traveler/css/side/side.css">


<script src="/Traveler/js/airplain/jquery-tablepage.js"></script>
<script>
$( document ).ready(function(){
		page();
		dat();
		//進入直接FOCUS在查詢單筆
		$("#one").focus();
		//enter直接查詢
		$("#one").keypress(function(e) {
			if (e.which == 13) {
				selectOne();
			}
		})
// 		pagecolor();
	});
	function ale(){
		
	 var timeout=setTimeout(function () {
// 		 alert("QQ");
		 pagecolor();
		    }, 1);
		;
	}

	function page() {
		$("#tbb").tablepage($("#table_page"), 10);
		pagecolor();
	}
	function pagecolor(){	
// 		alert("color");
		$(".spann").find("td").css("color","orange");
		$(".spann").find("td").find("table").css("margin","2px");
// 		$(".spann").find("td").find("table").find("th").css("text-align","center").css("color","orange");
		$(".spann").find("td").find("table").find("th").css("text-align","center").css("color","orange").attr("onclick","ale()");;
		
	}
	
	function selectOne(){
	var id= $("#one").val();
	var data={};
	  data.orderId=id;
	$.ajax({
		url : 'selectOne/check',
		type : 'POST',
		data : data,
// 		enctype: "multipart/form-data",
// 		contentType : false,
// 		processData : false,
		success : function(responce) {
			if("exist".match(responce)){
				window.location.assign("selectOne/"+id);
			};
			if("noAnswer".match(responce)){
				$("#side").empty().text("查無訂單");
				}
			
		},
		error:function(){
			alert("格式錯誤");
		}

	});
	}
	
	
	
	
	
	
</script>
<script>
//顯示最新訂單的ICON
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
//顯示當日訂單

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
<!-- 
<script>
function extraPrice(){
	$(".d2").empty();
	$(".d2").html("<div><h2>調整EXTRA價格</h2><select  id='dept' name='dept' class='secDep' style='color: blue;''><option selected='selected'>選擇出發地</option><option>TPE</option></select></div>");
	$(".d2").append("<div><select onchange='myFunction()' name='arrv'  id='arrv'><option selected='selected'>選擇目的地</option><option>HND</option><option>NRT</option></select></div><div id='show'><div>");
	
}

function modify(){
	alert("修改");
}	

var dept;
var arrv;
var id;
var extraPrice;
function myFunction(){
	dept=$("#dept").val();
	arrv=$("#arrv").val();
	alert(dept+","+arrv);
	var data= new FormData();
	data.append("dept",dept);
	data.append("arrv",arrv);

	
	$.ajax({
		url : '/Traveler/airTickets/back/extra',
		type : 'POST',
		data : data,
		enctype: "multipart/form-data",
		contentType : false,
		processData : false,
		success : function(responce) {
			$("#show").empty();		
			id=responce.pkId;
			$("#show").append("<div><input id='update' type='text' value="+responce.extraPrice+" ><button type='button' class='btn' onclick='modify()'>修改</button></div>");
// 			window.location.assign(responce);
		},
		error:function(){
			alert("error");
		}

	});
}
	
function modify(){
	extraPrice =$("#update").val();
	var data2= new FormData();
	data2.append("id",id);
	data2.append("dept",dept);
	data2.append("arrv",arrv);
	data2.append("extraPrice",extraPrice);
	
	alert(dept+","+arrv+","+extraPrice);
	
	$.ajax({
		url : 'updateExtra',
		type : 'POST',
		data : data2,
		enctype: "multipart/form-data",
		contentType : false,
		processData : false,
		success : function(responce) {
			alert(responce);
		},
		error:function(){
			alert("error");
		}

	});
}	

function searchAll(){
	window.location.assign("searchAll");
}

</script>
 -->
<!-- D3 函式庫 --> 
<script src=https://d3js.org/d3.v3.min.js charset="utf-8"></script>
<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
<script src="/Traveler/js/airplain/backLeft.js"></script>

<script>


function test(){
	var json=${json};
	var totalClick=json[0].click;
	var HND=json[1].click;
	var KIX=json[2].click;
	var SEL=json[3].click;
	var BKK=json[4].click;
	var SIN=json[5].click;
	var NRT=json[6].click;
	$("#total").html("<h3  style='color:#CC0000; margin:0px;padding:0px;'>5月份總搜尋數："+totalClick+"</h3>");
	d3.select("body").append("div").attr("id", "mydiv");
	//設定欲顯示的資料。
	
	var data = [{
	values: [HND,KIX,SEL,BKK,SIN],
	labels: ['東京羽田', '大阪關西','韓國首爾','泰國曼谷','新加坡', '東京成田'],
	type: 'pie'
	}];
	//設定框架大小。 
	var frame = {
	height: 700,
	width: 700};
	//使用Plotly畫出圓餅圖。 
	Plotly.newPlot('mydiv', data, frame);
}
</script>
<title>Insert title here</title>
</head>
<body>

	<%@ include file="/WEB-INF/backStageHeader.jsp" %>

	<!--=========================要放的東西  =====================-->
	
	<!-- =========側邊欄位開始============ -->	
<div id="mwt_mwt_slider_scroll">
<div id="mwt_slider_content"   >
<%@ include file="/WEB-INF/airTickets/back/leftSide.jsp" %>
</div>
</div>
<!-- =========側邊欄位結束============ -->
	
	
	
	
		<div style="margin:0px auto; width:800px;" class="content text-center">
		<select>
		<option>2018</option>
		<option>2019</option>
		<option>2020</option>
		</select>
		<br><br>
		<button class="btn-info" style="WIDTH: 75px;" onclick="test()">1月統計</button> 
		<button class="btn-info" style="WIDTH: 75px;" onclick="test()">2月統計</button> 
		<button class="btn-info" style="WIDTH: 75px;" onclick="test()">3月統計</button> 
		<button class="btn-info" style="WIDTH: 75px;" onclick="test()">4月統計</button> 
		<button class="btn-info" style="WIDTH: 75px;" onclick="test()">5月統計</button> 
		<button class="btn-info" style="WIDTH: 75px;"  onclick="test()">6月統計</button>
		<br><br>
		<button class="btn-info" style="WIDTH: 75px;" onclick="test()">7月統計</button> 
		<button class="btn-info" style="WIDTH: 75px;" onclick="test()">8月統計</button> 
		<button class="btn-info" style="WIDTH: 75px;" onclick="test()">9月統計</button> 
		<button class="btn-info" style="WIDTH: 75px;" onclick="test()">10月統計</button> 
		<button class="btn-info" style="WIDTH: 75px;" onclick="test()">11月統計</button> 
		<button class="btn-info" style="WIDTH: 75px;" onclick="test()">12月統計</button> 
			<div id="total"></div>
			<div id="mydiv"></div>
		</div>

	<!--  ========================================================== -->




	<%@ include file="/WEB-INF/backStageFooter.jsp" %>



</body>
</html>