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
<!-- 展示區 -->
<!-- 表1 顯示商品名  -->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-12" style="font-weight:bold">
   <div class="well" style="background-color:black;color:white;font-size:30px">${detail.themeProducts.productName}</div>
  </div>
 </div>
</div> 
<!--表2 行程資訊標題  -->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-12" style="font-weight:bold">
   <div class="panel-heading" style="color:black;font-size:32px;text-align:left"><img src="/Traveler/images/行李箱.png" width="50" height="50">&nbsp;&nbsp;&nbsp;&nbsp;行程資訊</div>
  </div>
 </div>
</div> 
<hr>
<!--表3 行程資訊內容  -->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-4">
   <div class="panel-body" style="color:black;font-size:24px">出發日期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${detail.setOut}" pattern="yyyy/MM/dd"/></div>
   <div class="panel-body" style="color:black;font-size:24px">報名期限&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${detail.deadline}" pattern="yyyy/MM/dd" /></div>
  </div>
  <div class="col-md-4">
   <div class="panel-body" style="color:black;font-size:24px">旅遊國家&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${detail.themeProducts.country}</div>
   <div class="panel-body" style="color:black;font-size:24px">一人費用&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NTD&nbsp;&nbsp;$${detail.price}</div>
  </div>
  <div class="col-md-4">
   <div class="panel-body" style="color:white;font-size:24px"></div>
   <div class="panel-body" style="color:black;font-size:24px;;margin-top:20px"><a onmouseover="this.style.color='orange'" onmouseout="this.style.color='#4F4FFF'" style="color:#4F4FFF;font-size:32px;" href="${detail.journeyId}/application"><img src="/Traveler/images/向右箭頭.jpg" width="50" height="50">點擊此處填寫報名表</a></div>
   </div>
 </div>
</div>
<hr>
<!--表4 航班資訊標題  -->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-12" style="font-weight:bold">
   <div class="panel-heading" style="color:black;font-size:30px;text-align:left"><img src="/Traveler/images/航班.png" width="50" height="50">&nbsp;&nbsp;&nbsp;&nbsp;航班資訊</div>
    <div class="panel-body" style="color:black;font-size:20px">* 以下為本行程預定的航空班機及飛航路線，實際航班以團體確認的航班編號與飛行時間為準。</div>
    <div class="panel-body" style="color:black;font-size:20px">* 因應國際油價波動，航空公司隨機票所增收燃油附加費用，會隨國際油價而有所調整。</div>
  </div>
 </div>
</div> 
<hr>
<!--表5 航班資訊標題列  -->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-12">
   <div class="well" style="color:white;font-size:24px;text-align:left;background-color:black">出發日期/時間&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   抵達日期/時間&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   出發機場&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   抵達機場&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   航空公司&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;班機編號</div>
  </div>
 </div>
</div> 
<hr>
<!--表5 航班資訊內容  -->
<div class="container-fluid">
 <div class="row">           
  <div class="col-md-2" style="color:black;font-size:24px">
   <div class="panel-body"><fmt:formatDate value="${detail.goStartDate}" pattern="yyyy/MM/dd"/>&nbsp;&nbsp;${detail.goStartHour}:${detail.goStartMinute}</div>
   <div class="panel-body"><fmt:formatDate value="${detail.returnStartDate}" pattern="yyyy/MM/dd"/>&nbsp;&nbsp;${detail.goEndHour}:${detail.goEndMinute}</div>
  </div>
  <div class="col-md-2" style="color:black;font-size:24px">
   <div class="panel-body"><fmt:formatDate value="${detail.goStartDate}" pattern="yyyy/MM/dd"/>&nbsp;&nbsp;${detail.goStartHour}:${detail.goStartMinute}</div>
   <div class="panel-body"><fmt:formatDate value="${detail.returnStartDate}" pattern="yyyy/MM/dd"/>&nbsp;&nbsp;${detail.goEndHour}:${detail.goEndMinute}</div>
  </div>
  <div class="col-md-2" style="color:black;font-size:24px">
   <div class="panel-body">${detail.goStartWhere}</div>
   <div class="panel-body">${detail.returnStartWhere}</div>
  </div>
  <div class="col-md-2" style="color:black;font-size:24px">
   <div class="panel-body">${detail.goEndWhere}</div>
   <div class="panel-body">${detail.returnEndWhere}</div>
  </div>
  <div class="col-md-2" style="color:black;font-size:24px">
   <div class="panel-body"><img src="/Traveler/images/${detail.companyName}.gif">${detail.companyName}</div>
   <div class="panel-body"><img src="/Traveler/images/${detail.companyName}.gif">${detail.companyName}</div>
  </div>
  <div class="col-md-2" style="color:black;font-size:24px">
   <div class="panel-body">${detail.goPlaneId}</div>
   <div class="panel-body">${detail.returnPlaneId}</div>
  </div>
 </div>
</div>
<hr>
<!--超級大圖  -->
<a><img src="/Traveler/images/${detail.themeProducts.productName}-1.png" style="border:10px #808000 ridge;width:1500px; height:1000px;"></a>
<a><img src="/Traveler/images/${detail.themeProducts.productName}-2.png" style="border:10px #808000 ridge;width:1500px; height:1000px;"></a>
<a><img src="/Traveler/images/${detail.themeProducts.productName}-3.png" style="border:10px #808000 ridge;width:1500px; height:1000px;"></a>

<br>
<hr>
<!-- 每日行程 1標題-->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-12" style="font-weight:bold">
   <div class="panel-heading" style="color:black;font-size:32px;text-align:left"><img src="/Traveler/images/day.png" width="100" height="100">&nbsp;&nbsp;&nbsp;&nbsp;第一天:${detail.themeProducts.descriTitle1}</div>
  </div>
 </div>
</div> 
<hr>
<!-- 每日行程 1-->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-6">
   <div class="panel-body"><img src="/Traveler/images/${detail.themeProducts.productName}-1.png" style="border:10px #808000 ridge;width:725px; height:552px;"></div>
  </div>
  <div class="col-md-6" style="font-size:24px">
    <div class="panel-heading" style="color:blue;font-weight:bold">${detail.themeProducts.descriTitle1}</div>
     <div class="panel-body" >${detail.themeProducts.description1}</div>
  </div>
 </div>
</div>
<!-- 每日行程 1 吃-->
<div class="container-fluid">
 <div class="row" style="font-size:24px">
  <div class="col-sm-3">
   <div class="panel-heading"><img src="/Traveler/images/餐.png" width="50" height="50">&nbsp;&nbsp;早餐:${detail.themeProducts.breakfast1}</div>
  </div>
  <div class="col-sm-3">
   <div class="panel-heading"><img src="/Traveler/images/餐.png" width="50" height="50">&nbsp;&nbsp;中餐:${detail.themeProducts.lunch1}</div>
  </div>
  <div class="col-sm-3">
   <div class="panel-heading"><img src="/Traveler/images/餐.png" width="50" height="50">&nbsp;&nbsp;晚餐:${detail.themeProducts.dinner1}</div>
  </div>
  <div class="col-sm-3">
   <div class="panel-heading"><img src="/Traveler/images/住宿.png" width="50" height="50">&nbsp;&nbsp;住宿:${detail.themeProducts.hotelName}</div>
  </div>
 </div>
</div>
<hr>
<!-- 每日行程 2標題-->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-12" style="font-weight:bold">
   <div class="panel-heading" style="color:black;font-size:32px;text-align:left"><img src="/Traveler/images/day.png" width="100" height="100">&nbsp;&nbsp;&nbsp;&nbsp;第二天:${detail.themeProducts.descriTitle2}</div>
  </div>
 </div>
</div> 
<hr>
<!-- 每日行程 2-->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-6">
   <div class="panel-body"><img src="/Traveler/images/${detail.themeProducts.productName}-2.png" style="border:10px #808000 ridge;width:725px; height:552px;"></div>
  </div>
  <div class="col-md-6" style="font-size:24px">
    <div class="panel-heading" style="color:blue;font-weight:bold">${detail.themeProducts.descriTitle2}</div>
     <div class="panel-body">${detail.themeProducts.description2}</div>
  </div>
 </div>
</div>
<!-- 每日行程 2 吃-->
<div class="container-fluid">
 <div class="row" style="font-size:24px">
  <div class="col-sm-3">
   <div class="panel-heading"><img src="/Traveler/images/餐.png" width="50" height="50">&nbsp;&nbsp;早餐:${detail.themeProducts.breakfast2}</div>
  </div>
  <div class="col-sm-3">
   <div class="panel-heading"><img src="/Traveler/images/餐.png" width="50" height="50">&nbsp;&nbsp;中餐:${detail.themeProducts.lunch2}</div>
  </div>
  <div class="col-sm-3">
   <div class="panel-heading"><img src="/Traveler/images/餐.png" width="50" height="50">&nbsp;&nbsp;晚餐:${detail.themeProducts.dinner2}</div>
  </div>
  <div class="col-sm-3">
   <div class="panel-heading"><img src="/Traveler/images/住宿.png" width="50" height="50">&nbsp;&nbsp;住宿:${detail.themeProducts.hotelName}</div>
  </div>
 </div>
</div>
<hr>
<!-- 每日行程 3標題-->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-12" style="font-weight:bold">
   <div class="panel-heading" style="color:black;font-size:32px;text-align:left"><img src="/Traveler/images/day.png" width="100" height="100">&nbsp;&nbsp;&nbsp;&nbsp;第三天:${detail.themeProducts.descriTitle3}</div>
  </div>
 </div>
</div> 
<hr>
<!-- 每日行程 3-->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-6">
   <div class="panel-body"><img src="/Traveler/images/${detail.themeProducts.productName}-3.png" style="border:10px #808000 ridge;width:725px; height:552px;"></div>
  </div>
  <div class="col-md-6" style="font-size:24px">
    <div class="panel-heading" style="color:blue;font-weight:bold">${detail.themeProducts.descriTitle3}</div>
     <div class="panel-body">${detail.themeProducts.description3}</div>
  </div>
 </div>
</div>
<!-- 每日行程 3 吃-->
<div class="container-fluid">
 <div class="row" style="font-size:24px">
  <div class="col-sm-3">
   <div class="panel-heading"><img src="/Traveler/images/餐.png" width="50" height="50">&nbsp;&nbsp;早餐:${detail.themeProducts.breakfast3}</div>
  </div>
  <div class="col-sm-3">
   <div class="panel-heading"><img src="/Traveler/images/餐.png" width="50" height="50">&nbsp;&nbsp;中餐:${detail.themeProducts.lunch3}</div>
  </div>
  <div class="col-sm-3">
   <div class="panel-heading"><img src="/Traveler/images/餐.png" width="50" height="50">&nbsp;&nbsp;晚餐:${detail.themeProducts.dinner3}</div>
  </div>
  <div class="col-sm-3">
   <div class="panel-heading"><img src="/Traveler/images/住宿.png" width="50" height="50">&nbsp;&nbsp;住宿:溫暖的家</div>
  </div>
 </div>
</div>
<hr>
<!-- 備註 標題--> 
<div class="container-fluid">
 <div class="row">
  <div class="col-md-12" style="font-weight:bold">
   <div class="panel-heading" style="color:black;font-size:32px;text-align:left"><img src="/Traveler/images/迴紋針.jpg" width="50" height="50">&nbsp;&nbsp;&nbsp;&nbsp;出團備註</div>
  </div>
 </div>
</div> 
<hr>
<!-- 備註 -->
<div class="container-fluid">
 <div class="row">
  <div class="col-md-12" style="font-size:20px">
   <div class="panel-heading" style="font-weight:bold">★費用包含★</div>
    <div class="panel-body">1.行程表中註明之飯店住宿、餐食、行程、車資、門票。</div>
    <div class="panel-body">2.兩地機場稅、燃油附加費、雜支附加費。</div>
    <div class="panel-body">3.每人500萬元旅遊意外責任險、20萬元意外傷害醫療險及海外急難救助。</div>
   <div class="panel-heading" style="font-weight:bold">★費用不含★</div>
    <div class="panel-body">申辦護照費用NT$1,400元。</div>
    <div class="panel-body">*需身份證正本、兩吋彩色白底近照2張，已服完兵役者，新辦護照需附上退伍令，在學役男出國手續與一般人民出國相同，非在學役男需先向地方政府兵役科辦理役男出國核准公文。</div>
   <div class="panel-heading" style="font-weight:bold">★注意事項★</div>
    <div class="panel-body">1.報名繳費後，觀光局國外旅遊定型化契約書即生效力，變更或取消行程依契約內容辦理。</div>
    <div class="panel-body">2.為使團體順利進行，本公司保留行程變更、對調之權利，行程內容、餐食、班機時間、降落城市、住宿飯店之確認以最後團體說明會資料為主、餐食料理內容以餐廳及飯店當日實際提供為主，住宿房型依飯店實際提供為主，依報名先後順序選擇。</div>
    <div class="panel-body">3.如遇需門票之參觀景點休館或其他不可抗力因素無法進入時，皆以退費處理，敬請見諒。</div>
    <div class="panel-body">4.若回程無隨團回國或更改回程機場時，需補機票差額，恕不退其餘團費。</div>
    <div class="panel-body">5.參加本行程須持有(至回國當日護照有效期六個月以上)之中華民國護照，若同時擁有雙重國籍或持他國護照，請先自行查明相關入出境之規定，並於報名時主動告知您的服務人員。</div>
    <div class="panel-body">6.若為軍職者，出國需經由所屬單位核準，並將核准章蓋於護照上，若為役男者，滿18歲未服兵役之役男，出國需經所屬戶政單位兵役科核准，並將核准章蓋於護照上。</div>
    <div class="panel-body">7.行程最低出團人數為10人(含)即可成行，最多參團則為20人(含)以下。</div>
    <div class="panel-body">8.行程內安排參觀之季節性景點(如賞櫻、賞花、賞楓、賞雪等)，會因當時現場實際狀況或天氣等不可抗力之因素等影響，而調整前往參觀適時適當觀光景點。</div>
    <div class="panel-body">9.團體機位以航空公司安排為準。</div>
  </div>
 </div>
</div> 
<hr>
<!-- 返回上方按鈕 -->				
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