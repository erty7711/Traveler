<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
<title>Travel &mash; 100% Free Fully Responsive HTML5 Template
	by FREEHTML5.co</title>
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


<script>
	$(document).ready(
			function() {
				var beanJSON = ${bean};
				$("#depC").text(beanJSON.depC);
				$("#depDate").text(
						beanJSON.depDate + " " + beanJSON.depT + " ~ "
								+ beanJSON.depDate + " " + beanJSON.arrT);
				$("#arrC").text(beanJSON.arrC);
				$("#airline").text(beanJSON.airline);
				$("#depNum").text(beanJSON.depNum);

				$("#redepC").text(beanJSON.arrC);
				$("#returnDate").text(
						beanJSON.returnDate + " " + beanJSON.arrT + " ~ "
								+ beanJSON.returnDate + " "
								+ beanJSON.returnTime);
				$("#rearrC").text(beanJSON.depC);
				$("#reairline").text(beanJSON.airline);
				$("#person").text(beanJSON.person);
				$("#price").text(beanJSON.price);
				var te = $("#totalPrice").text(
						"NT$" + parseInt(beanJSON.price)
								* parseInt(beanJSON.person));
				console.log(te);
				$("#returnNum").text(beanJSON.returnNum);

			});

	function sendGuest() {
		var data = new FormData(document.querySelector("form"));
		console.log(data);
		$.ajax({
			url : '/guest',
			type : 'POST',
			data : data,
			//enctype: "multipart/form-data",
			contentType : false,
			processData : false,
			success : function(responce) {
				alert(responce);
				alert("ok");
				window.location.assign(responce);
			},
			error : function() {
				alert("error");
			}

		});

	}
</script>

<style>

.lab {
padding:5px;
width:100px;
}

</style>



</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
	<%@ include file="../frontStageHeader.jsp" %>
			<!-- end:header-top -->

			<div>

				<div class="text-center">
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th class="text-center" scope="col">去程</th>
								<th class="text-center" scope="col">出發</th>
								<th class="text-center" scope="col">目的</th>
								<th class="text-center" scope="col">日期</th>
								<th class="text-center" scope="col">航空公司</th>
								<th class="text-center" scope="col">機型</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row" scope="col"></th>
								<td id="depC" scope="col"></td>
								<td id="arrC" scope="col"></td>
								<td id="depDate" scope="col"></td>
								<td id="airline" scope="col"></td>
								<td id="depNum" scope="col"></td>
							</tr>

						</tbody>
					</table>

					<table class="table">
						<thead class="thead-light">
							<tr>
								<th class="text-center" scope="col">回程</th>
								<th class="text-center" scope="col"></th>
								<th class="text-center" scope="col"></th>
								<th class="text-center" scope="col"></th>
								<th class="text-center" scope="col"></th>
								<th class="text-center" scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row" scope="col"></th>
								<td id="redepC" scope="col"></td>
								<td id="rearrC" scope="col"></td>
								<td id="returnDate" scope="col"></td>
								<td id="reairline" scope="col"></td>
								<td id="returnNum" scope="col"></td>
							</tr>
						</tbody>
					</table>
					<div style="width: 50%; margin: 0px auto; border: 1px orange solid">
						<table class="table">
							<thead class="thead-light">
								<tr>
									<th class="text-center" scope="col">人數</th>
									<th class="text-center" scope="col">票價/人(含稅)</th>
									<th class="text-center" scope="col">總計(含稅)</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th id="person" class="text-center" scope="row" scope="col"></th>
									<td id="price" scope="col"></td>
									<td scope="col" style="color: red;"><strong
										id="totalPrice"></strong></td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="text-left" style="width: 50%;height:1000px; margin: 0px auto; border: 1px orange solid">


    <form id="myform"  enctype="multipart/form-data">
        <fieldset>
        	<legend>聯絡人資訊</legend>
            <div class="st1">
                <label for="contactName" class="lab">姓名</label>
                <input type="text" name="contactName" id="contactName" size="10" autofocus autocomplete="off">
            </div>
            <div class="st1">
                <label for="contactIdCard" class="lab">身分證字號</label>
                <input type="text" name="contactIdCard" id="contactIdCard" maxlength="10">
            </div>
             <div class="st1">
                <label for="contactPhone" class="lab">手機</label>
                <input type="text" name="contactPhone" id="contactPhone" maxlength="10">
            </div>
            <div class="st1">
                <label for="contactAddress" class="lab">地址</label>
                <input type="text" name="contactAddress" id="contactAddress">
            </div>
            <div class="st1">
                <label for="" class="lab">E-mail</label>
                <input type="email" name="mail" id="mail">
            </div>
        </fieldset>
        <fieldset>
        	<legend>旅客一資料</legend>
			            <div class="st1">
                <label for="guestOneName" class="lab">姓名</label>
                <input type="text" name="guestOneName" id="guestOneName" size="10" autofocus autocomplete="off">
            </div>
            <div class="st1">
                <label for="guestOneLastName" class="lab">英文姓</label>
                <input type="text" name="guestOneLastName" id="guestOneLastName" maxlength="10">
            </div>
             <div class="st1">
                <label for="guestOneFirstName" class="lab">英文名</label>
                <input type="text" name="guestOneFirstName" id="guestOneFirstName" maxlength="10">
            </div>
            <div class="st1">
                <label for="guestOnepassportNum" class="lab">護照號碼</label>
                <input type="text" name=guestOnepassportNum id="guestOnepassportNum">
            </div>
            <div class="st1">
                <label for="guestOneBirth" class="lab">生日</label>
                <input type="text" name="guestOneBirth" id="guestOneBirth">
            </div>
            <div class="st1">
                <label class="lab">性別</label>
                <input type="radio" name="guestOneGender" id="m1" value="male">
                <label for="m1">男</label>
                <input type="radio" name="guestOneGender" id="f1" value="female">
                <label for="f1">女</label>
            </div>


        </fieldset>

        <fieldset>
            <legend>旅客二資料 </legend>
           			            <div class="st1">
                <label for="guestTwoName" class="lab">姓名</label>
                <input type="text" name="guestTwoName" id="guestTwoName" size="10" autofocus autocomplete="off">
            </div>
            <div class="st1">
                <label for="guestTwoLastName" class="lab">英文姓</label>
                <input type="text" name="guestTwoLastName" id="guestTwoLastName" maxlength="10">
            </div>
             <div class="st1">
                <label for="guestTwoFirstName" class="lab">英文名</label>
                <input type="text" name="guestTwoFirstName" id="guestTwoFirstName" maxlength="10">
            </div>
            <div class="st1">
                <label for="guestTwopassportNum" class="lab">護照號碼</label>
                <input type="text" name=guestTwopassportNum id="guestTwopassportNum">
            </div>
            <div class="st1">
                <label for="guestTwoBirth" class="lab">生日</label>
                <input type="text" name="guestTwoBirth" id="guestTwoBirth">
            </div>
            <div class="st1">
                <label class="lab">性別</label>
                <input type="radio" name="guestTwoGender" id="m1" value="male">
                <label for="m1">男</label>
                <input type="radio" name="guestTwoGender" id="f1" value="female">
                <label for="f1">女</label>
            </div>
        </fieldset>
	          <div class="sub text-center">
	          <input type="hidden" name="_method" value="post" /> 
               <button type="button" onclick="sendGuest()">送出</button>
                <input type="reset" name="reset" value="清除">
            </div>
    </form>
					</div>
				</div>
			</div>






		</div>
	</div>





</body>
</html>

