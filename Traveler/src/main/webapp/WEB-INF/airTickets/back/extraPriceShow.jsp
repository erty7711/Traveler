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

<script src="/Traveler/js/airplain/backLeft.js"></script>


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

.d2{
margin:0px auto;
width:500px;
}
</style>
<script>

//點擊input直接修改
$(document).ready(function() {


$("input").dblclick(function() {
	
	var before;
	var detpName;
	var arrvName;
	var airLineName;
	var modifyExtraPrice;
	var modifyDetial= new FormData();
	
	 
	$(this).css("background-color", "#FFFFCC");
	$(this).attr("readonly", false);
	$(this).keypress(function(e) {
		// 	    	  console.log(e.which);
		if (e.which == 13) {
			$(this).blur();
			modifyExtraPrice = $(this).val();
			//出發地
// 			detpName=$(this).parent("td").prev().prev().prev().text();
			var id=$(this).parent("td").next().text();
			//目的地
			arrvName=$(this).parent("td").prev().prev().text();
			//航空公司
			airLineName=$(this).parent("td").prev().text();
			//將其存成formdata傳給AJAX後端
			modifyDetial.append("id",id);
			modifyDetial.append("arrvName",arrvName);
			modifyDetial.append("airLineName",airLineName);
			modifyDetial.append("modifyExtraPrice",modifyExtraPrice);
			//ajax傳送			
			$.ajax({
			    type : "post",
			    url : "/Traveler/airTickets/back/modifyExtraPrice",
			    data: modifyDetial,
				contentType : false,
				processData : false,
				enctype: "multipart/form-data",
			    success : function(response) {
			    	alert("修改完成");
			    },
			    error : function() {
			        alert('格式錯誤');
			    }
			});
			
		}
	})
});
});


// function modifyExtra(){
// 	$(this).prop('readonly', false);
// 	alert("gogo");
// }

function choose(){
	var chooseAirLine=event.target.value;
	
	for(var x=1;x<($(".choose").find("tr").length);x++){
		var airline=$(".choose").find("tr:eq("+x+")").find("td:eq(1)").text();
		if(airline!=chooseAirLine){
			$(".choose").find("tr:eq("+x+")").css("display","none");
		}else{
			$(".choose").find("tr:eq("+x+")").css("display","");
		}
	};
	
}

</script>
<title>Insert title here</title>
</head>
<!-- 函背景底色 -->
<!-- <body style="background-image: url(/Traveler/images/sky.jpg);"> -->
<body >

	<%@ include file="/WEB-INF/backStageHeader.jsp" %>

	<!--=========================要放的東西  =====================-->
	
	<!-- =========側邊欄位開始============ -->	
<div id="mwt_mwt_slider_scroll">
<div id="mwt_slider_content"   >
<%@ include file="/WEB-INF/airTickets/back/leftSide.jsp" %>

</div>
</div>
<!-- =========側邊欄位結束============ -->
	
	
		<div>
	
		<div class="d2 content text-center" >
  <h2>ExtraPrice清單</h2>
  <p>可直接點擊修改</p>
  <button class="btn-info" onclick="choose()" value="東京成田" >東京成田</button>            
  <button class="btn-info" onclick="choose()" value="東京羽田" >東京羽田</button>            
  <button class="btn-info" onclick="choose()" value="大阪關西" >大阪關西</button>            
  <button class="btn-info" onclick="choose()" value="首爾仁川" >首爾仁川</button>            
  <button class="btn-info" onclick="choose()" value="泰國曼谷" >泰國曼谷</button>            
  <button class="btn-info" onclick="choose()" value="新加坡" >新加坡</button>            
  <table class="table table-condensed choose">
    <thead>
      <tr>
        <th class="text-center"   width="200px;">出發地</th>
        <th class="text-center" width="200px;">目的地</th>
        <th class="text-center" width="200px;">航空公司</th>
        <th class="text-center" width="200px;">ExtraPrice(NT.)</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="list" items="${list}">
      <tr >
        <td width="200px;">${list.deptChinese}</td>
        <td width="200px;">${list.arrvChinese}</td>
        <td width="200px;">${list.airLine}</td>
        <td width="200px;"><input size="5" type="text" value="${list.extraPrice}" readonly ></td>
        <td width="200px;" style="display:none;">${list.id}</td>
      </tr>
	</c:forEach>
    </tbody>
  </table>
		
		
		</div>
</div>
	<!--  ========================================================== -->




	<%@ include file="/WEB-INF/backStageFooter.jsp" %>



</body>
</html>