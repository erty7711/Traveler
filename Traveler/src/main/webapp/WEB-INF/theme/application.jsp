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
<!--  
//function test2() { 
//  var msg = "報名完成!!\n\n请确认！"; 
// var msg = "OK"; 
// if (confirm(msg)==true){ 
//  return true; 
// }else{ 
//  return false; 
// } 
//} 
-->
<script>
function test()
{alert("申請成功~~報名表已幫您寄出!!\n專屬服務人員將在三天內跟您聯絡~~\n接下來將轉回首頁~~");
	}
</script> 

</head>
<body>
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>
<!-- 大標 -->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-12" style="font-weight:bold">
   <div class="well" style="background-color:black;color:white;font-size:30px;text-align:center">主題旅遊報名申請</div>
  </div>
 </div>
</div> 
<!-- 報名表格 -->		
<div   class="container">
 <div class="row">
  <div class=" col-sm span12" style="width:100%;height:100%">

<!-- 程式碼開始 -->
<form:form method="POST" modelAttribute="application" class="form-horizontal" role="form" id="form" >
<div class="form-group">
 <label for="name" class="col-sm-3 control-label" style='font-size:28px;'>聯絡人姓名</label>
  <div class="col-sm-3 controls">
   <input type="text" id="name" name="name" placeholder="例:王大明" class="form-control" style='font-size:20px;margin-top:10px'>
  </div> 
   
 <b style='font-size:28px;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${test.themeProducts.productName}</b>

</div>

<div class="form-group"style='font-size:28px'>
 <label for="gender" class="col-sm-3 control-label" style='font-size:28px;'>稱謂</label>
  <div class="col-sm-3 controls">
   <!--<input type="text" id="gender" name="gender" placeholder="先生、小姐" class="form-control">  -->
  <div class="form-control" style='font-size:20px;'>
   <form:select path="gender" style="border:1px none #000;background:white">
    <form:option value="-1" label="稱謂"></form:option>
    <form:option value="先生" label="先生"></form:option>
    <form:option value="小姐" label="小姐"></form:option>
   </form:select>
  </div>
 </div>
  
<b style='font-size:28px;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;國家:${test.themeProducts.country}</b>

</div>
<div class="form-group"style='font-size:28px;'>
 <label for="cellPhone" class="col-sm-3 control-label" style='font-size:28px;'>連絡電話</label>
  <div class="col-sm-3 controls">
   <input type="text" id="cellPhone" name="cellPhone" placeholder="例:0912345678" class="form-control"style='font-size:20px;'>
  </div>
  
<b style='font-size:28px'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出發日期:<fmt:formatDate value="${test.setOut}" pattern="yyyy/MM/dd" /></b>

</div>

<div class="form-group"style='font-size:28px;'>
 <label for="people" class="col-sm-3 control-label" style='font-size:28px;'>人數</label>
  <div class="col-sm-3 controls">
  <div class="form-control" style='font-size:20px;'>
   <form:select path="people" style="border:1px none #000;background:white">
    <form:option value="-1" label="請挑選人數"></form:option>
    <form:option value="1" label="1人"></form:option>
    <form:option value="2" label="2人"></form:option>
    <form:option value="3" label="3人"></form:option>
    <form:option value="4" label="4人"></form:option>
    <form:option value="5" label="5人"></form:option>
    <form:option value="6" label="6人"></form:option>
    <form:option value="7" label="7人"></form:option>
    <form:option value="8" label="8人"></form:option>
    <form:option value="9" label="9人"></form:option>
    <form:option value="10" label="10人"></form:option>
    <form:option value="11" label="11人"></form:option>
    <form:option value="12" label="12人"></form:option>
    <form:option value="13" label="13人"></form:option>
    <form:option value="14" label="14人"></form:option>
    <form:option value="15" label="15人"></form:option>
    <form:option value="16" label="16人"></form:option>
    <form:option value="17" label="17人"></form:option>
    <form:option value="18" label="18人"></form:option>
    <form:option value="19" label="19人"></form:option>
    <form:option value="20" label="20人"></form:option>
   </form:select>
  </div>
</div>
  
<b style='font-size:28px;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;返回日期:<fmt:formatDate value="${test.returnDay}" pattern="yyyy/MM/dd" /></b>

</div>

<div class="form-group">
 <label for="callTime" class="col-sm-3 control-label" style='font-size:28px;'>可連絡時段</label>
  <div class="col-sm-3 controls">
   <!--<input type="text" id="callTime" name="callTime" placeholder="早上、下午、晚上" class="form-control">-->
   <div class="form-control"style='font-size:20px;'>
    <form:select path="callTime" style="border:1px none #000;background:white">
    <form:option value="-1" label="">請選擇時段</form:option>
    <form:option value="早上" label="早上"></form:option>
    <form:option value="下午" label="下午"></form:option>
    <form:option value="晚上" label="晚上"></form:option>
    </form:select>
   </div>
  </div>
  
<b style='font-size:28px;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;航空公司:${test.companyName}</b>

</div>

<div class="form-group">
 <label for="location" class="col-sm-3 control-label" style='font-size:28px;'>服務據點</label>
  <div class="col-sm-3 controls">
   <!--<input type="text" id="location" name="location" placeholder="台北、台中、高雄" class="form-control">  -->
   <div class="form-control"style='font-size:20px;'>
   <form:select path="location" style="border:1px none #000;background:white">
    <form:option value="-1" label="">服務據點</form:option>
    <form:option value="台北" label="台北"></form:option>
    <form:option value="台中" label="台中"></form:option>
    <form:option value="高雄" label="高雄"></form:option>
   </form:select>
  </div>
 </div>
  
<b style='font-size:28px;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;標準團費:${test.price}</b>
  
</div>

<div class="form-group">
 <label for="extra" class="col-sm-3 control-label" style='font-size:28px;'>備註事項</label>
  <div class="col-sm-9 controls">
   <textarea class="form-control" rows="3" id="extra" name="extra" placeholder="請輸入500字以內"style='font-size:20px;'></textarea>
  </div>
</div>

<div class="form-group">
 <div class="col-sm-offset-3 col-sm-6">
  <button onmouseover="this.style.color='orange'" onmouseout="this.style.color='#4F4FFF'" style="color:#4F4FFF;font-size:28px;font-weight:bold" type="submit" class="btn"  onclick="test()">點擊此處以寄出報名表</button>
 </div>
</div>
</form:form>
    
  </div>
 </div>
</div>
<br><br><br>
<hr>
	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>
</html>