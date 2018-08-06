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

<title>Insert title here</title>
</head>
<body>

	<%@ include file="/WEB-INF/backStageHeader.jsp" %>	
	
						
<!--=========================要放的東西  =====================-->
		<div class="container" style="padding-top:80px;padding-left:150px">
<script src="https://code.highcharts.com/highcharts.js"></script>
<!-- <script src="https://code.highcharts.com/modules/exporting.js"></script> -->
<script src="https://code.highcharts.com/modules/export-data.js"></script>

<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
<span style="font-size:13px;"></span>
<select id="choose" onchange="TheConfirmBox()">
	<option disabled=disabled selected=selected>請選擇</option>
<!-- 	<optgroup label="亞洲區"> -->
		<option value="http://localhost:8080/Traveler/contactus/contactuspieasia">1~3月份國人出國目的地統計</option>
		<option value="http://localhost:8080/Traveler/contactus/contactuspieage">1~3月份國人出國年齡地統計</option>
</select>
<span id="check" style="color:red;"></span><br>
<script>
	function TheConfirmBox() {
		var noteToMe;
		/*取得id為choose的選單裡剛剛所點擊的連結的名稱*/
		var whichUserChoose=choose.options[choose.selectedIndex].text;
		if (confirm("Hello！你確定要前往"+whichUserChoose+"?") == true){
			noteToMe = "你選取想前往"+whichUserChoose+"！";
			window.location.assign(choose.options[choose.selectedIndex].value);
		}else{
			noteToMe = "你按了取消喔！";
		}
		document.getElementById("check").innerHTML = noteToMe;
	}
	
</script>

<script>
Highcharts.chart('container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: '1~3月份國人出國年齡統計(亞洲區)'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [{
            name: '12歲以下',
            y: 267190,
            sliced: true,
            selected: true
        }, {
            name: '13至19歲 ',
            y: 141979
        }, {
            name: '20至29歲',
            y: 520927
        }, {
            name: '30至39歲',
            y: 763344
        }, {
            name: '40至49歲',
            y: 759121
        }, {
            name: '50至59歲',
            y: 616449
        }, {
            name: '60至65歲',
            y: 262736
        }, {
            name: '66歲以上',
            y: 228351
        }]
    }]
});
</script>

</div>
	<!-- =========側邊欄位開始============ -->	
<div id="mwt_mwt_slider_scroll">
<div id="mwt_slider_content"   >
<ul class="me">
<h2>客服管理</h2>
<p><a href="selectopinion" style="color:black">查看留言</a></p>
<p><a href="feedbackopinion" style="color:black">回覆留言</a></p>
<p><a href="StatisticsReport" style="color:black">統計報表</a></p>
<a href="contactuspieasia"></a>
<a href="contactuspieage"></a>



</ul>
</div>
</div>
<!-- =========側邊欄位結束============ -->
	
	
	
	
	

	<!--  ========================================================== -->




	<%@ include file="/WEB-INF/backStageFooter.jsp" %>



</body>
</html>