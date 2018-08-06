<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Traveler</title>

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

<script>

// 金流設定 參考https://developers.opay.tw/AioCreditCard/CreateOrder


function randomAll() {
	  var text = "";
	  var possible = "abcdefghijklmnopqrstuvwxyz0123456789";

	  for (var i = 0; i < 2; i++)
	    text += possible.charAt(Math.floor(Math.random() * possible.length));

	  return text;
	}
function randomNum() {
	  var text = "";
	  var possible = "0123456789";

	  for (var i = 0; i < 8; i++)
	    text += possible.charAt(Math.floor(Math.random() * possible.length));

	  return text;
	}


function showInfo(){
		$("#guestInfo").slideToggle() 
}
	



</script>

    <script>
        $(document).ready(function () {
			//產生待加密的訂單內容
            var today = new Date();
			
            var month=new Array(12)
            month[0]="01"
            month[1]="02"
            month[2]="03"
            month[3]="04"
            month[4]="05"
            month[5]="06"
            month[6]="07"
            month[7]="08"
            month[8]="09"
            month[9]="10"
            month[10]="11"
            month[11]="12"
            
            //將時間格式重製為  YYYY-MM-DD HH:mm:ss			
            var currentDateTimeTepm =today.getFullYear()+'/'+month[(today.getMonth())]+'/'+("0" + today.getDate()).slice(-2)+' '+("0" + today.getHours()).slice(-2)+':'+("0" + today.getMinutes()).slice(-2)+':'+("0" + today.getSeconds()).slice(-2)	;
			var currentDateTime = currentDateTimeTepm.toString();
			$("#MerchantTradeDate").val(currentDateTime);
// 			將MerchantTradeNo生成為特定格式的20位碼， EX:DXYYYYMMDD000000aaa
			var rando="DX"+today.getFullYear()+month[(today.getMonth())]+("0" + today.getDate()).slice(-2)+randomNum()+randomAll();
			
			$("#MerchantTradeNo").val(rando);
			console.log($("#MerchantTradeNo").val());
			
//              var priceTemp= ${orderList.price};
//               $("#TotalAmount").val(priceTemp);
//               var orderIdTemp="Traveler訂單"+${orderList.orderID};
//               $("#TradeDesc").val(orderIdTemp);
//               alert( $("#TradeDesc").val(orderIdTemp));
//               console.log($("#TradeDesc").val()+","+ $("#TotalAmount").val()+","+$("#MerchantTradeDate").val());
              var partOne="ChoosePayment=Credit&ClientBackURL=http://localhost:8080/Traveler/_Hotel/OrderFinish3&CreditInstallment=&EncryptType=1&InstallmentAmount=&ItemName=飯店房間&MerchantID=2000132&MerchantTradeDate="+currentDateTime;	  
              var  partTwo= "&MerchantTradeNo="+rando+"&PaymentType=aio&Redeem=&ReturnURL=http://localhost:8080/Traveler/_Hotel/OrderFinish3&StoreID=&TotalAmount=9500&TradeDesc=飯店訂單"
              
              //將查詢字串傳回後台進行加密
              var sendDet=partOne+partTwo;
            $.ajax({
                type : "post",
                url : "/Traveler/airTickets/opay",
                data: sendDet,
            	    contentType: "application/x-www-form-urlencoded",
                success : function(response) {
                	var forword=response;
//                 	alert(forword);
                	$("#CheckMacValue").val(forword);
                	console.log($("#CheckMacValue").val());
                },
                error : function() {
                    alert('fail');
                }
            });
            
        });
        
        
        function back(){
        	window.history.go(-1);
        }
    </script>


</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>

			<!-- end:header-top -->
				<br>
				<br>
			<div class="text-center" style="width:65%;margin:10px auto;">
				<div class="row ">
					<div class="col-lg-12 text-center">
						<div class="table-responsive">
						<div style="margin-top:20px;" ><h2><span class="label label-warning"></span></h2></div>
							<table class="table table-bordered table-condensed">
								<tr>
									<th class="text-center cor-lg-12" colspan="2">訂單編號 ：</th>
								</tr>
								<tr class="warning">
									<td  class="cor-lg">訂購狀態：</td>
									<td class="col-lg"><font color="orange"><b>未確認</b></font></td>
								</tr>
								<tr class="warning">
									<td>訂單時間：</td>
									<td><font color="orange"><b>06/03/2018</b></font></td>
								</tr>
								<tr class="warning">
									<td>房間類型：</td>
									<td><font color="orange"><b>雙人房</b></font></td>
								</tr>								
								<tr class="warning">
									<td>訂單價格：</td>
									<td style="color:red">NT$ 9,500</td>
								</tr>									
							</table>
						<br>
						<br>
						
						
							
							
							
<form id="formCreditCard" method="post" accept-charset="UTF-8"
 action="https://payment-stage.opay.tw/Cashier/AioCheckOut/V5">
 
 
 <input type="submit" class="btn-danger" value="信用卡付款" />
<div style="display:none">
<!--  MerchantID 商店代號:--> 
<input type="hidden" name="MerchantID" value="2000132" /><br />

<!--  MerchantTradeNo 商店交易編號: -->
<input type="hidden" name="MerchantTradeNo" id="MerchantTradeNo" value="" /><br />

<!--  MerchantTradeDate 商店交易時間: -->
<input type="hidden" name="MerchantTradeDate" id="MerchantTradeDate" value="" /><br />

<!--  PaymentType 交易類型: -->
<input type="hidden" name="PaymentType" value="aio" /><br />

<!--  TotalAmount 交易金額: -->
<input type="hidden" name="TotalAmount" id="TotalAmount" value="9500" /><br />

<!--  TradeDesc 交易描述: -->
<input type="hidden" name="TradeDesc" id="TradeDesc" value="飯店訂單" /><br />

<!--  ItemName 商品名稱: -->
<input type="hidden" name="ItemName" value="飯店房間" /><br />

<!--  ReturnURL 付款完成通知回傳網址: -->
<input type="hidden" name="ReturnURL" value="http://localhost:8080/Traveler/_Hotel/OrderFinish3" /><br />

<!--  ChoosePayment 預設付款方式: -->
<input type="hidden" name="ChoosePayment" value="Credit" /><br />

<!--  會員商店代碼: -->
<input type="hidden" name="StoreID" value="" /><br />

<!--  ClientBackURL Client端返回廠商網址: -->
<input type="hidden" name="ClientBackURL" value="http://localhost:8080/Traveler/_Hotel/OrderFinish3" /><br />

<!--  CreditInstallment 刷卡分期期數: -->
<input type="hidden" name="CreditInstallment" value="" /><br />

<!--  InstallmentAmount 使用刷卡分期的付款金額: -->
<input type="hidden" name="InstallmentAmount" value="" /><br />

<!--  Redeem 信用卡是否使用紅利折抵:--> 
<input type="hidden" name="Redeem" value="" /><br />

<!--  CheckMacValue 簽章類型: -->
<input type="hidden" name="EncryptType" value="1" /><br />

<!--  CheckMacValue 檢查碼: -->
<input type="hidden" name="CheckMacValue" id="CheckMacValue" value="" /><br />
</div>
</form>                                                        
							
							
							
							
						
						</div>
					</div>
				</div>
			</div>




		</div>
	</div>

	<div class="row">
		<div class="col-md-6 col-md-offset-3 text-center">
			<p class="fh5co-social-icons">
				<a href="#"><i class="icon-twitter2"></i></a> <a href="#"><i
					class="icon-facebook2"></i></a> <a href="#"><i
					class="icon-instagram"></i></a> <a href="#"><i
					class="icon-dribbble2"></i></a> <a href="#"><i class="icon-youtube"></i></a>
			</p>
			<p>
				Copyright 2016 Free Html5 <a href="#">Module</a>. All Rights
				Reserved. <br>Made with <i class="icon-heart3"></i> by <a
					href="http://freehtml5.co/" target="_blank">Freehtml5.co</a> / Demo
				Images: <a href="https://unsplash.com/" target="_blank">Unsplash</a>
			</p>
		</div>
	</div>
	</div>
	</div>
</body>
</html>