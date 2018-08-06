<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<!-- <link rel="shortcut icon" href="/Traveler/images/favicon.ico"> -->
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


<script>
var extraPrice=null;
<c:if test="${extraPrice!=null}">var extraPrice = ${extraPrice};</c:if>

var emp = ${result};

//將額外價格加上
function changePrice(){
	var templist=emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary;
	console.log(extraPrice);
//       var tempNumber=$("#ticketResult").find("table").length;
      var tempList=emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary;
		for(var x=0;x<extraPrice.length;x++){
			extraPrice[x].cheap=9999999;
		};
	for(var x=0;x<extraPrice.length;x++){
		console.log(extraPrice[x].airLine);
		for(var y=0;y<tempList.length;y++){
			var compare=tempList[y].AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].OperatingAirline.Code;
			if(extraPrice[x].airLineCode==compare){
			var oldPrice=tempList[y].AirItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].PassengerFare.TotalFare.Amount;
			var extraP=extraPrice[x].extraPrice;
			var newPrice=parseInt(oldPrice)+parseInt(extraP);
			if(newPrice<extraPrice[x].cheap){
				extraPrice[x].cheap=newPrice;};
			
// 			console.log(newPrice);
			tempList[y].AirItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].PassengerFare.TotalFare.Amount=newPrice;
// 			console.log(tempList[y].AirItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].PassengerFare.TotalFare.Amount);
			}
		}
	}
	console.log(extraPrice);
}

//往前往後一天搜尋

function addDays(date, days) {
	  var result = new Date(date);
	  result.setDate(result.getDate() + days);
	  return result;
	}
	
function dateToString(date){
	
	  var temp = new Date(date);
	  var yyyy=temp.getFullYear();
	  var MM=("0"+(temp.getMonth()+1)).slice(-2);
	  var dd=("0"+temp.getDate()).slice(-2);
	  var result =(yyyy+"-"+MM+"-"+dd);
	  return result;
	// alert(dDate.getFullYear()+"-"+(dDate.getMonth()+1)+"-"+dDate.getDate());
}	

var depCode='${dep}';
var arrCode='${arr}';
var depDateTemp='${depDate}';
var reDateTemp='${reDate}';
var personTemp='${psg}';

var dDateBefore = new Date(depDateTemp);
var rDateBefore = new Date(reDateTemp);


//讀取中畫面
function slow() {
	$("#all").css("filter", "opacity(40%)");
	$("#img1").css("position", "absolute").css("left", "40%").css("top",
			"40%").css("display", "inline").css("filter", "opacity(100%)");
}

//導向重新搜尋葉面方法
function post(URL, PARAMS) { 
    var temp = document.createElement("form"); 
    temp.action = URL; 
    temp.method = "post"; 
    temp.style.display = "none"; 
    for (var x in PARAMS) { 
      var opt = document.createElement("textarea"); 
      opt.name = x; 
      opt.value = PARAMS[x]; // alert(opt.name) 
      temp.appendChild(opt); 
      }
    document.body.appendChild(temp); 
    temp.submit(); return temp; 
  }
//往前
function reSearchAdvance(){
	var dDateAfter=dateToString(addDays(dDateBefore,-1));
	var rDateAfter=dateToString(addDays(rDateBefore,-1));

var reSend = {};
	reSend.dept= depCode;
	reSend.arrv=arrCode;
	reSend.depDate=dDateAfter;
	reSend.reDate=rDateAfter;
	reSend.psg=personTemp;
	console.log(reSend);
	slow();
	post("reSend",reSend);
	
}

//往後
function reSeatchPostpone(){
	var dDateAfter=dateToString(addDays(dDateBefore,1));
	var rDateAfter=dateToString(addDays(rDateBefore,1));

	var reSend = {};
		reSend.dept= depCode;
		reSend.arrv=arrCode;
		reSend.depDate=dDateAfter;
		reSend.reDate=rDateAfter;
		reSend.psg=personTemp;
		console.log(reSend);
		slow();
		post("reSend",reSend);
	
}
//往前往後搜尋結束




//照飛行時間排序
// var data = emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary;
//  data.sort(function(a,b){
// 	  return (a.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ElapsedTime)-(b.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ElapsedTime)
// })

//  照飛價格排序
// var data = emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary;
//  data.sort(function(a,b){
// 	  return (a.AirItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].PassengerFare.TotalFare.Amount)-(b.AirItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].PassengerFare.TotalFare.Amount)
//  })

// $(document).ready(function(){
// 	$.each(emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary,function(name,value){
		
		
// 		console.log("去程")
// 		console.log("航空公司"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].OperatingAirline.Code)
// 		console.log("出發地"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureAirport.LocationCode)
// 		console.log("出發時間"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime)
// 		console.log("目的地"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalAirport.LocationCode)
// 		console.log("抵達時間"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalDateTime)
// 		console.log("飛行時間"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ElapsedTime)
// 		console.log("回程")
// 		console.log("航空公司"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].OperatingAirline.Code)
// 		console.log("出發地"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].DepartureAirport.LocationCode)
// 		console.log("出發時間"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].DepartureDateTime)
// 		console.log("目的地"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].ArrivalAirport.LocationCode)
// 		console.log("抵達時間"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].ArrivalDateTime)
// 		console.log("飛行時間"+value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].ElapsedTime)
// 		console.log("價格"+value.AirItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].PassengerFare.TotalFare.Amount)
// 		console.log("-------------------------------------------------")
		

// 	})
// })


// 	  var data2=data.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ElapsedTime;
// 	  data.sort(data2);
	  //原生javascript sort() 方法
// 	  data2.sort(function(good1, good2) {
	   /* 用价格排序由小到大 */
// 	   return good1.ElapsedTime > good2.ElapsedTime;
// 	  });
// 	  console.log(data2);
// 	  console.log(data.value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime);//排序后的数据
	  


</script>
<!--簡易篩選功能-->
<script>
function test(){
	for(var i=0;i<50;i++){
		
	var k=$("#"+i).parents("tbody").find("tr:eq(0)").children("td:eq(4)").children("span:eq(0)").text();
	if(k>20000){
		$("#"+i).parents("table").parent("div").parent("div").css("display","none");
	}
	}
}
//不認識的航空不顯示
function noShow(){
	for(var i=0;i<50;i++){
		var na=$("#"+i).parents("table").parent("div").prev("div").text();
		for(var a=0;a<50;a++){
		if(na.match("7C")||na.match("TW")||na.match("B7")||na.match("PR")||na.match("SL")||na.match("XW")){
			$("#"+i).parents("table").parent("div").parent("div").css("display","none");
			}
		}
	
		}
}



function CLOnly(){
	var checkBoxNum = $(":checkbox").length;
	var all=[];
	for(var d=0;d<50;d++){
	$("#"+d).parents("table").parent("div").parent("div").css("display","none");
	}
	for(var k=0;k<checkBoxNum;k++){
		if($("#checkbox").find('input:checkbox:eq('+k+')').prop("checked")){
			var name=$("#checkbox").find('input:checkbox:eq('+k+')').attr('checked', 'false').val();
			all.push(name);
		}
	}
	
	for(var i=0;i<50;i++){
		var na=$("#"+i).parents("table").parent("div").prev("div").text();
		for(var a=0;a<all.length;a++){
		if(na.match(all[a])){
			$("#"+i).parents("table").parent("div").parent("div").css("display","inline");
		}
		}
		}
	
	if(all.length==0){
		for(var d=0;d<50;d++){
			$("#"+d).parents("table").parent("div").parent("div").css("display","inline");
			var na=$("#"+d).parents("table").parent("div").prev("div").text();
			if(na.match("7C")||na.match("TW")||na.match("B7")||na.match("PR")||na.match("SL")||na.match("XW")){
					$("#"+d).parents("table").parent("div").parent("div").css("display","none");
					}
			
			}
	}
}



</script>

<!--  -->

<style type="text/css">
.divv1{
width:100%;　//DIV區塊寬度
line-height:100%;　//DIV區塊高度
padding:20px;　//DIV區塊內距，參閱：CSS padding 內距。
float:left;
}
.divv2{
font-size:15px;
border: 1px solid orange ; 
background-color: white;
width:15%;
/* line-height:446%; */
 line-height:395%; 
align:center;
padding:20px;
float:left;
}
</style>


<script>
<!--回傳搜尋內容開始-->
function list(){
	var docFrag=$(document.createDocumentFragment());
	$.each(emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary,function(name,value){
			
   			var cell1=$("<div></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime)
            var cell2=$("<div></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureAirport.LocationCode)
            var td1=$("<td width='20%' align='center' valign='middle'></td>").append(cell1,cell2);
   			
            var cell4=$("<div></div>").html("<img src=/Traveler/images/arrow.png>");
            var td2=$("<td width='10%' align='center' valign='middle'></td>").append(cell4);
            
            var cell5=$("<div></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalDateTime);
            var cell6=$("<div></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ArrivalAirport.LocationCode);
            var cellH=$("<div hidden='hidden'></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].Equipment[0].AirEquipType);
            var td3=$("<td width='20%' align='center' valign='middle'></td>").append(cell5,cell6,cellH);
            
            var cell7=$("<span></span>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].ElapsedTime+"分鐘");

            var td4=$("<td  width='50%' align='center' valign='middle'></td>").append(cell7);
            
            var cellhr=$("<td colspan='5' align='center' valign='middle' ></td>").html("<hr size='1' noshade='noshade' style='border:1px #cccccc dashed;'>");
            var row2=$("<tr></tr>").append(cellhr);
            
            var cell10=$("<div></div>").html("<p style='margin:0;padding:0'>每人含稅</p>");
          //價格
         var cellPrice=$("<span style='font-size:25px;color:red'></span>").text(value.AirItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].PassengerFare.TotalFare.Amount);
         var cellPriceHidden=$("<span style='display:none'></span>").text(value.AirItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].PassengerFare.TotalFare.Amount);
            var td5=$("<td></td>").append(cell10,cellPrice,cellPriceHidden);
            
            var row1=$("<tr style='height:50px;' ></tr>").append(td1,td2,td3,td4,td5);
            
            
            var cellR1=$("<div></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].DepartureDateTime);
            var cellR2=$("<div></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].DepartureAirport.LocationCode);
            var tdR1=$("<td width='35%' align='center' valign='middle'></td>").append(cellR1,cellR2);
            
            var cellR4=$("<div></div>").html("<img src=/Traveler/images/arrow.png>");
            var tdR2=$("<td width='10%' align='center' valign='middle'></td>").append(cellR4);
            
            var cellR5=$("<div></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].ArrivalDateTime);
            var cellR6=$("<div></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].ArrivalAirport.LocationCode);
            var cellRH=$("<div hidden='hidden'></div>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].Equipment[0].AirEquipType);
            var tdR3=$("<td width='35%' align='center' valign='middle'></td>").append(cellR5,cellR6,cellRH);
            
            var cellR7=$("<span></span>").text(value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].ElapsedTime+"分鐘");
            var tdR4=$("<td  width='20%' align='center' valign='middle'></td>").append(cellR7);
            
            var cellR10=$("<div></div>").html("<button align=center style='top:50% ' type='button' class='btn btn_yell' id="+name+" onclick='sendDetails()'>訂位</button>");
            var tdR5=$("<td></td>").append(cellR10);
            
            var row3=$("<tr></tr>").append(tdR1,tdR2,tdR3,tdR4,tdR5);
            
            
            var table1=$("<table  align='center' style=' border: 1px solid orange ; background-color: white'></table>").append(row1,row2,row3);
            var div1=$("<div class='divv1'></div>").append(table1);
            var airline=value.AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].OperatingAirline.Code;	
            var div2=$("<div class='divv2' align='center'></div>").text(airline);
                div2.append("<img src=/Traveler/images/"+airline+".gif>");
            var divAll=$("<div></div>").append(div2,div1);
            docFrag.append(divAll);
	})
	$("#ticketResult").html(docFrag);

	noShow();
	}
<!-- 回傳搜尋內容結束-->


	function page(){
		
		<!--   分頁功能開始-->
<!--
		var totalSize=$("table tbody>tr").length; //獲取總數據
		   console.log(totalSize);
		
		    var pageSize=10;      //每頁顯示數據條數
			var currentPage=1;   //當前頁數
			var totalPage=Math.round(totalSize/pageSize); //計算總頁數
			$("table tbody>tr:gt(9)").hide(); //設置首頁顯示4條數據
			$(".total").text(totalPage);  //設置總頁數
			$(".current_page").text(currentPage); //設置當前頁數
		
		
			$(".next").click(function(){
				if(currentPage ==totalPage){ //當前頁數==最後一頁，禁止下一頁
					   return false;
					}else{//不是最後一頁，顯示應該顯示的數據.
					    $(".current_page").text(++currentPage);  //當前頁數先+1
						var start=pageSize*(currentPage-1);
						var end=pageSize*currentPage;
						$.each($('table tbody>tr'),function(index,item){
								if(index >=start && index < end){
									$(this).show();
									}
									else{
										$(this).hide();
										}
							});
						
						}
				});
			
			
			$(".prev").click(function(){
				if(currentPage == 1){//當前頁數==1，禁止上一頁
				     return false;
					}else{
						 $(".current_page").text(--currentPage);  //當前頁數先-1
						 var start=pageSize*(currentPage-1);
						 var end=pageSize*currentPage;
						 $.each($('table tbody>tr'),function(index,item){
							   if(index >=start && index < end){
									$(this).show();
									}
									else{
										$(this).hide();
										}
							 });
						}
				
				});
		-->		
		<!--分頁功能結束-->
		
		
	}

	function sortByPrice(){
		var checkBoxNum = $(":checkbox").length;
// 		 照價格排序
			var data = emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary;
			 data.sort(function(a,b){
				  return (a.AirItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].PassengerFare.TotalFare.Amount)-(b.AirItineraryPricingInfo[0].PTC_FareBreakdowns.PTC_FareBreakdown[0].PassengerFare.TotalFare.Amount)
				  })
			 
			 $("#ticketResult").empty();
			 list();
// 			 page();
				//取消篩選CHECKBOX
				for(var k=0;k<checkBoxNum;k++){
					$("#checkbox").find('input:checkbox:eq('+k+')').prop("checked",false);
					
				}
			
		}
		
// 	function sortAirline(){
// 		//出發航空公司排序
// 		    var data = emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary;
// 			 data.sort(function(a,b){	
// 				 return (a.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureAirport.LocationCode)-(b.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureAirport.LocationCode)
// 				  })
// 			 $("#ticketResult").empty();
// 			 list();
// // 			 page();

// 		}
	
	
	
	
	
	function sortByTime(){
		var checkBoxNum = $(":checkbox").length;
		//出發時間排序
		    var data = emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary;
			 data.sort(function(a,b){	
				 return (a.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime.replace(":",""))-(b.AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime.replace(":",""))
				  })
			 
			 $("#ticketResult").empty();
			 list();
// 			 page();
				//取消篩選CHECKBOX
				for(var k=0;k<checkBoxNum;k++){
					$("#checkbox").find('input:checkbox:eq('+k+')').prop("checked",false);
					
				}
		}
	
	
	 function show2(){
		 	var res=JSON.stringify(emp);
		 	var str = emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary[0].AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime;
		 	var str2 = emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary[0].AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].DepartureDateTime;
		 	var te=JSON.stringify(str);
		 	var te2=JSON.stringify(str2);
		 	var ss = str.substring(0, 11);
		 	var ss2 = str2.substring(0, 11);
		 	var xmlDoc
		 	 var xmlhttp;
				if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
					xmlhttp = new XMLHttpRequest();
				} else { // code for IE6, IE5
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				//等待
				// document.getElementById("myDiv").innerHTML="讀取中...";   
				//載入
				xmlhttp.open("GET", "/Traveler/xml/CITYcode2.xml", true);
				//處理
				xmlhttp.onload=function(){
					 xmlDoc = xmlhttp.responseXML;
						var totalNum=$(xmlDoc).find("T").find("D").length;
						for(var i=0;i<totalNum;i++){
						var	D = $(xmlDoc).find("T").find("C").eq(i).text();
						var	C = $(xmlDoc).find("T").find("D").eq(i).text();
			 				res=res.replace(new RegExp(C,"g"),D);
						}
						te=te.substring(te.length-4,te.length);
					 	res=res.replace(new RegExp(ss,"g"),"").replace(new RegExp(ss2,"g"),"").replace(new RegExp(te,"g"),"\"");
					 	emp=JSON.parse(res);
					 list();
//					 page();
				}
				//設定表頭
				xmlhttp.setRequestHeader("Content-Type",
						"application/x-www-form-urlencoded;charset=utf-8")
				//傳送
				xmlhttp.send();
				
	 }
	
	
	
			 function show(){
					changePrice();
	 			 	var res=JSON.stringify(emp);
				 	var str = emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary[0].AirItinerary.OriginDestinationOptions.OriginDestinationOption[0].FlightSegment[0].DepartureDateTime;
				 	var str2 = emp.OTA_AirLowFareSearchRS.PricedItineraries.PricedItinerary[0].AirItinerary.OriginDestinationOptions.OriginDestinationOption[1].FlightSegment[0].DepartureDateTime;
				 	var te=JSON.stringify(str);
				 	var te2=JSON.stringify(str2);
				 	var ss = str.substring(0, 11);
				 	var ss2 = str2.substring(0, 11);
				 	var xmlDoc
				 	 var xmlhttp;
						if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
							xmlhttp = new XMLHttpRequest();
						} else { // code for IE6, IE5
							xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
						}
						//等待
						// document.getElementById("myDiv").innerHTML="讀取中...";   
						//載入
						xmlhttp.open("GET", "/Traveler/xml/CITYcode2.xml", true);
						//處理
						xmlhttp.onload=function(){
							 xmlDoc = xmlhttp.responseXML;
	 							var totalNum=$(xmlDoc).find("T").find("D").length;
	 							for(var i=0;i<totalNum;i++){
	 							var	D = $(xmlDoc).find("T").find("D").eq(i).text();
	 							var	C = $(xmlDoc).find("T").find("C").eq(i).text();
	 				 				res=res.replace(new RegExp(C,"g"),D);
	 							}
								te=te.substring(te.length-4,te.length);
// 								te2=te2.substring(te2.length-4,te2.length);
							 	res=res.replace(new RegExp(ss,"g"),"").replace(new RegExp(ss2,"g"),"").replace(new RegExp(te,"g"),"\"").replace(new RegExp(te2,"g"),"\"");
							 	emp=JSON.parse(res);
							 	
							 	
							 	//動態轉換航空公司篩選
								
								var airLineList=emp.OTA_AirLowFareSearchRS.TPA_Extensions.AirlineOrderList.AirlineOrder;
								for(var x=0;x<airLineList.length;x++){
									//測試用console
// 									console.log(airLineList[x].Code);
									if((airLineList[x].Code!="7C")&&(airLineList[x].Code!="H1")&&(airLineList[x].Code!="SL")&&(airLineList[x].Code!="XW")&&(airLineList[x].Code!="PG")){
									 for(var y=0;y<extraPrice.length;y++){
										 if(airLineList[x].Code.match(extraPrice[y].airLine)){
										$("#checkbox").append("<input type='checkbox' name='a' value='"+airLineList[x].Code+"' onclick='CLOnly()'' >"+airLineList[x].Code+"<span>"+"(最低：NT."+extraPrice[y].cheap+")</span><br>");
										 }
											}
									}
									
								};
								
							 	
							 list();
// 							 page();
						}
						//設定表頭
						xmlhttp.setRequestHeader("Content-Type",
								"application/x-www-form-urlencoded;charset=utf-8")
						//傳送
						xmlhttp.send();
						
			 }
</script>
<script>



	$(document).ready(function(){
		//使用同步延遲
		var delay = function(s){
			  return new Promise(function(resolve,reject){
			   setTimeout(resolve,s); 
			  });
			};
			
			delay().then(function(){
				show();     // 顯示 1
				  return delay(100); // 延遲ㄧ秒
				}).then(function(){
					noShow();   // 顯示 2
				  return delay(10); // 延遲一秒
				});
		
		

		
		console.log(depCode+","+arrCode+","+depDateTemp+","+reDateTemp+","+personTemp);
	})
	
	<!-- 傳送選擇航班資料回SERVER 開始-->
		function sendDetails(){

				var k =event.target.id;

				var depT=$("#"+k).parents("tbody").find("tr:eq(0)").children("td:eq(0)").children("div:eq(0)").text(); //去程出發時間
				var depC=$("#"+k).parents("tbody").find("tr:eq(0)").children("td:eq(0)").children("div:eq(1)").text(); //去程出發地
				var arrT=$("#"+k).parents("tbody").find("tr:eq(0)").children("td:eq(2)").children("div:eq(0)").text(); //去程抵達時間
				var arrTnextDay=null;
				if(arrT.length>8){
					arrTnextDay=arrT.substring(10,0);
					arrT=arrT.substring(11)+" (隔日)";
				}
				var arrC=$("#"+k).parents("tbody").find("tr:eq(0)").children("td:eq(2)").children("div:eq(1)").text(); //去程目的地
				var price=$("#"+k).parents("tbody").find("tr:eq(0)").children("td:eq(4)").children("span:eq(0)").text(); //總價格
// 				var originprice=$("#"+k).parents("tbody").find("tr:eq(0)").children("td:eq(4)").children("span:eq(1)").text(); //原始價格;
				var person=${psg};//人數
				var returnDate=$("#"+k).parents("tbody").find("tr:eq(2)").children("td:eq(0)").children("div:eq(0)").text(); //回程出發日期
				var returnTime=$("#"+k).parents("tbody").find("tr:eq(2)").children("td:eq(0)").children("div:eq(0)").text(); //回程出發時間
				var returnArrTime=$("#"+k).parents("tbody").find("tr:eq(2)").children("td:eq(2)").children("div:eq(0)").text(); //回程抵達時間
				var returnArrTnextDay=null;
				if(returnArrTime.length>8){
					returnArrTnextDay =returnArrTime.substring(10,0);
					returnArrTime=returnArrTime.substring(11)+" (隔日)";
				}
				var airline=$("#"+k).parents("table").parent("div").prev("div").text();  //航空公司                              //航班
				var bonus;
				for(var x=0;x<extraPrice.length;x++){
					if(airline==extraPrice[x].airLine){
						bonus=parseInt(extraPrice[x].extraPrice);
					}
				}
// 				測試用alert
// 				alert(bonus);
				var depNum=$("#"+k).parents("tbody").find("tr:eq(0)").children("td:eq(2)").children("div:eq(2)").text(); //去程機型
				var returnNum=$("#"+k).parents("tbody").find("tr:eq(2)").children("td:eq(2)").children("div:eq(2)").text(); //回程機型
				
				var priceInt=parseInt(price);
				var personInt=parseInt(person);
				var priceTotal=priceInt*personInt;
				
// 				console.log(k);
// 				console.log("去程時間:"+depT);
// 				console.log("去程出發地:"+depC);
// 				console.log("去程抵達時間:"+arrT);
// 				console.log("去程目的地:"+arrC);
// 				console.log("總價格:"+price);
// 				console.log("航班:"+airline);
// 				console.log("去程機型:"+depNum);
// 				console.log("回程機型:"+returnNum);
				var depDate="${depDate}";
				var returnDate="${reDate}";			
				var sendDet =JSON.stringify({"depT":depT,"depDate":depDate,"depC":depC,"arrT":arrT,"returnDate":returnDate,"arrC":arrC,"returnTime":returnTime,"returnArrTime":returnArrTime,"price":priceTotal,"airline":airline,"depNum":depNum,"returnNum":returnNum,"person":person,"returnArrTnextDay":returnArrTnextDay,"arrTnextDay":arrTnextDay,"bonus":bonus});
				$.ajax({
				    type : "post",
				    url : "booking",
				    //data: "回傳出發地="+depT"&name=John", // 資料是用 & 做串接
				    data: sendDet,
				    contentType: "application/json; charset=UTF-8",
// 				    dataType:"json",
				    success : function(response) {
				    	var forword=response+"";
				    	//測試用ALERT
// 				    	alert(forword);
				        window.location.assign("show/"+forword);
				    },
				    error : function() {
				        alert('格式有誤');
				    }
				});
	  			 
	
			}
		<!-- 傳送選擇航班資料回SERVER 結束-->

</script>


<style type="text/css">
.main123 {
	width: 800px;
	zoom: 1;
	margin: 0 auto;
}

.item123 {
	width: 800px;
	overflow: hidden;
}

ul {
	padding: 0;
	width: 860px;
	zoom: 1;
}

.clear123 {
	zoom: 1;
}

.clear123:after {
	content: "";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden;
}
/*     table tbody>tr{list-style-type:none;float:left;background:#F69;font-size:60px;text-shadow:1px 1px 3px #555;width:380px;height:200px;margin:10px 40px 10px 0;line-height:200px;text-align:center;color:#fff;}  */
.page_btn {
	padding-top: 20px;
}

.page_btn a {
	cursor: pointer;
	padding: 5px;
	border: solid 1px #ccc;
	font-size: 12px;
}

.page_box {
	float: right;
}

.num {
	padding: 0 10px;
}

.btn_yell {
	background-color: #ffa64d;
	color: black
}
</style>



<!-- 測試側邊 -->
<style>
#mwt_mwt_slider_scroll
{
top: 100px;
left:-250px; 
width:250px;
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
$(function(){
var w = $("#mwt_slider_content").width();
$('#mwt_slider_content').css('height', ($(window).height() - 20) + 'px' ); //將區塊自動撐滿畫面高度

$("#mwt_fb_tab").mouseover(function(){ //滑鼠滑入時
if ($("#mwt_mwt_slider_scroll").css('left') == '-'+w+'px')
{
$("#mwt_mwt_slider_scroll").animate({ left:'0px' }, 600 ,'swing');
}
});


$("#mwt_slider_content").mouseleave(function(){　//滑鼠離開後
$("#mwt_mwt_slider_scroll").animate( { left:'-'+w+'px' }, 600 ,'swing');
});
});

</script>



</head>
<body  style="background-image: url(/Traveler/images/cover_bg_1.jpg);background-attachment: fixed; ">
	<div id="fh5co-wrapper">
		<div id="fh5co-page">

	<%@ include file="../frontStageHeader.jsp" %>
			<!-- end:header-top -->

			<div id="all" class="fh5co-hero" style="color:black;">

				<!-- 	背景暖色系樣式			<div class="fh5co-overlay"></div> -->
				<div class="fh5co-cover" data-stellar-background-ratio="0.5"
					>

					<div>
						<div class="page_btn clear">
<!-- 							<span class="page_box"> <a class="prev">上一頁</a> <span -->
<!-- 								class="num"><span class="current_page">1</span><span -->
<!-- 									style="padding: 0 3px;">/</span><span class="total"></span></span> <a -->
<!-- 								class="next">下一頁</a> -->
<!-- 							</span>  -->
							<span>
<!-- 								<button type='button' onclick='sortByPrice()'>依價格</button> -->
<!-- 								<button type='button' onclick='sortByTime()'>依出發時間</button> -->
							</span>


							<div class="main123">
								<div class="item123">

									<c:if test="${empty result}">
										<div style="margin: 5px;" align="center">
											<h2 style="color: red">查無航班，請重新搜尋</h2>
											<a style="font-size: 1em;" href="/Traveler/">回首頁</a>
										</div>
									</c:if>
								<div align="center">
								<span style="font-size:18px;"><strong>去：${depDate}，回：${reDate}，人數：${psg}</strong></span>
								</div>
								<div id=ticketResult>
								
								</div>
								</div>
								<div class="page_btn clear"></div>
							</div>

						</div>
						
<div id="mwt_mwt_slider_scroll">
 <div id="mwt_fb_tab">
    <span>排</span>
    <span>序</span>
    <span>查</span>
    <span>詢</span>
</div>
<div id="mwt_slider_content"   >
<!-- <div class="btn-group-vertical"> -->
  <button type="button" class="btn-primary " onclick='sortByPrice()'>找低價</button>
  <br><br>
  <button type="button" class="btn-primary" onclick='sortByTime()'>早出發</button>
  <br><br>
  <button type="button" class="btn-primary" onclick='reSearchAdvance()'>提早一天</button>
  <br><br>
  <button type="button" class="btn-primary" onclick='reSeatchPostpone()'>延後一天</button>
  <br><br>
<!--   <button type="button" class="btn-xs btn-primary" onclick='test()'>兩萬以下</button> -->
<!--   <button type="button" class="btn-xs btn-primary" onclick='CLOnly()'>華航限定</button> -->
<!--   <button type="button" class="btn-xs ">Sony</button> -->
<!-- </div> -->
<form id="checkbox" action="/action_page.php">
<!--   <input type="checkbox" name="a" value="中華航空" onclick="CLOnly()" > 中華航空<br> -->
<!--   <input type="checkbox" name="b" value="日本航空" onclick="CLOnly()">日本航空<br> -->
<!--   <input type="checkbox" name="b" value="國泰航空" onclick="CLOnly()">國泰航空<br> -->
<!--   <input type="checkbox" name="b" value="長榮航空" onclick="CLOnly()">長榮航空<br> -->
</form>
</div>
</div>




						<div class="row">
							<div class="col-md-6 col-md-offset-3 text-center">
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter2"></i></a> <a href="#"><i
										class="icon-facebook2"></i></a> <a href="#"><i
										class="icon-instagram"></i></a> <a href="#"><i
										class="icon-dribbble2"></i></a> <a href="#"><i
										class="icon-youtube"></i></a>
								</p>
								<p>
									Copyright 2016 Free Html5 <a href="#">Module</a>. All Rights
									Reserved. <br>Made with <i class="icon-heart3"></i> by <a
										href="http://freehtml5.co/" target="_blank">Freehtml5.co</a> /
									Demo Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				</footer>



			</div>
			<!-- END fh5co-page -->

		</div>
		<!-- END fh5co-wrapper -->

	</div>
	
		<div id="img1" style="display: none">
		<h1>
			<strong>重新搜尋中......</strang>
		</h1>
		<img alt="" src="/Traveler/images/airplain.gif" widtg=200px height=150px />
	</div>
</body>
</html>


