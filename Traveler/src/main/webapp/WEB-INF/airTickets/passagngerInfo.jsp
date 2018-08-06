<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


<style>
.lab{
width:100px;
 text-align: center;
}
#contactAddress{
 width:400px;
 }	
 .sub{
margin:20px
 }
</style>

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
//一鍵帶入旅客資訊
function entry(){
	alert("一鍵帶入");
$("#guestTwoName").val("王建明");
$("#guestTwoLastName").val("Wang");
$("#guestTwoFirstName").val("Chien-Ming");
$("#guestTwoBirth").val("1980-03-31");
$("#m1").prop("checked", true);
$("#m2").prop("checked", true);
}

</script>
<script >

$(document).ready(function(){
	var beanJSON=${bean};
	$("#depC").text(beanJSON.depC);
	if(beanJSON.arrTnextDay==null){
	$("#depDate").text(beanJSON.depDate+" "+beanJSON.depT+" ~ "+beanJSON.depDate+" "+beanJSON.arrT);
	}else{
		$("#depDate").text(beanJSON.depDate+" "+beanJSON.depT+" ~ "+beanJSON.arrTnextDay+" "+beanJSON.arrT);	
	}
	$("#arrC").text(beanJSON.arrC);
	$("#airline").text(beanJSON.airline);
	$("#depNum").text(beanJSON.depNum);
	
	$("#redepC").text(beanJSON.arrC);
	if(beanJSON.returnArrTnextDay==null){
	$("#returnDate").text(beanJSON.returnDate+" "+beanJSON.returnTime+" ~ "+beanJSON.returnDate+" "+beanJSON.returnArrTime);
	}else{
		$("#returnDate").text(beanJSON.returnDate+" "+beanJSON.returnTime+" ~ "+beanJSON.returnArrTnextDay+" "+beanJSON.returnArrTime);	
	}
	$("#rearrC").text(beanJSON.depC);
	$("#reairline").text(beanJSON.airline);
// 	$("#person").text(beanJSON.person);
	$("#price").text(parseInt(beanJSON.price)/parseInt(beanJSON.person));
	var te= $("#totalPrice").text("NT$"+parseInt(beanJSON.price));
	console.log(te);
	$("#returnNum").text(beanJSON.returnNum);
	

	
	
});


//將HTML的form包成form-data傳給JAVA的方法
//由JS new出一個FormData的物件，取得FORM的內容，由ajax傳送，contentType與processData要設定成false，
//不然會有錯誤，後端java的PARAMETER直接用 Bean型別去接即可，form裡面的name必須和Bean的屬性名稱相符合
function sendGuest(){
	
	
	if($("#contactName").val()==""){
        alert("你尚未填寫姓名");
        eval("document.form['contactName'].focus()");       
    }else if($("#contactIdCard").val()==""){
        alert("你尚未填寫身分證字號");
        eval("document.form['contactIdCard'].focus()");    
    }else if($("#contactPhone").val()==""){
        alert("你尚未填寫手機");
        eval("document.form['contactPhone'].focus()"); 
    }else if($("#contactAddress").val()==""){
        alert("你尚未填寫地址");
        eval("document.form['contactAddress'].focus()");  
    }else if($("#contactEmail").val()==""){
        alert("你尚未填寫E-MAIL");
        eval("document.form['contactEmail'].focus()");  
    }else if($("#guestOneName").val()==""){
        alert("你尚未填寫旅客名字");
        eval("document.form['guestOneName'].focus()");  
    }else if($("#guestOneLastName").val()==""){
        alert("你尚未填寫旅客英文名字");
        eval("document.form['guestOneLastName'].focus()");  
    }else if($("#guestOneFirstName").val()==""){
        alert("你尚未填寫旅客英文名字");
        eval("document.form['guestOneFirstName'].focus()");  
    }else if($("#guestOneBirth").val()==""){
        alert("你尚未填寫旅客生日");
        eval("document.form['guestOneBirth'].focus()");  
    }else if($("#contactPhone").val()==""){
        alert("你尚未填寫旅客名字");
        eval("document.form['guestTwoName'].focus()");  
    }else if($("#contactPhone").val()==""){
        alert("你尚未填寫旅客英文名字");
        eval("document.form['guestTwoLastName'].focus()");  
    }else if($("#contactPhone").val()==""){
        alert("你尚未填寫英文名字");
        eval("document.form['guestTwoFirstName'].focus()");  
    }else if($("#contactPhone").val()==""){
        alert("你尚未填寫旅客生日");
        eval("document.form['guestTwoBirth'].focus()");  
    }else{

	
	var data = new FormData(document.querySelector("form"));
// 	var data = new FormData(document.fform);
	console.log(data);
	$.ajax({
		url : 'guest',
		type : 'POST',
		data : data,
		//enctype: "multipart/form-data",
		contentType : false,
		processData : false,
		success : function(responce) {
			window.location.assign(responce);
		},
		error:function(){
			alert("資料格式有誤");
		}

	});
	
	
    }
}
function showInfo(){
	$("#waring").slideToggle();
}

</script>

<script>
var birthday="<fmt:formatDate value="${memberBean.birthday}" pattern="yyyy-MM-dd" />";
 $(document).ready(function(){
	  $("#guestOneBirth").val(birthday); 
    $("#button").click(function(){
     
    })
 })
</script>


</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
	<%@ include file="../frontStageHeader.jsp" %>
			<!-- end:header-top -->

			<div>

				<div class="text-center" >
					<table class="table" >
						<thead class="thead-dark">
							<tr >
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
					<div  style="width:50%;margin:0px auto;border:1px orange solid 	"  >
					<table class="table">
						<thead class="thead-light">
							<tr>
								<th class="text-center" scope="col">人數</th>
								<th class="text-center" scope="col">票價/人(含稅)</th>
								<th class="text-center" scope="col">總計(含稅)</th>
							</tr>
						</thead>
						<tbody >
							<tr >
								<th  id="person" class="text-center"scope="row" scope="col">${personNum}</th>
								<td id="price" scope="col"></td>
								<td  scope="col" style="color:red;"><strong id="totalPrice"></strong></td>
							</tr>
						</tbody>
					</table>
					</div>
					  
	<div class="text-left" style="width: 50%;height:auto; margin: 0px auto; border: 1px orange solid">
		<form id="myform"  name="fform" enctype="multipart/form-data" >

			<fieldset>
        	<h2><legend class="label label-warning">聯絡人資訊</legend></h2>
            <div class="st1">
                <label onclick="return false" for="contactName" class="lab">姓名</label>
                <input type="text" name="contactName" id="contactName" size="10" value="${memberBean.chineseLastName}${memberBean.chineseFirstName}" autofocus autocomplete="off">
            </div>
            <div class="st1">
                <label for="contactIdCard" class="lab" >身分證字號</label>
                <input  type="text" name="contactIdCard" id="contactIdCard" maxlength="10" value="${memberBean.memberId}">
            </div>
             <div class="st1">
                <label for="contactPhone" class="lab">手機</label>
                <input type="text" name="contactPhone" id="contactPhone" maxlength="10" value="${memberBean.mobile}">
            </div>
            <div class="st1">
                <label for="contactAddress"  class="lab">地址</label>
                <input   type="text" name="contactAddress" id="contactAddress" value="${memberBean.address}">
            </div>
            <div class="st1">
                <label for="" class="lab">E-mail</label>
                <input type="text" name="contactEmail" id="contactEmail" value="${memberBean.email}">
            </div>
        </fieldset>
                <fieldset>
                  <h2><legend class="label label-warning">旅客一資料</legend></h2>
			      <div class="st1">
                <label for="guestOneName" class="lab">姓名</label>
                <input type="text" name="guestOneName" id="guestOneName" size="10" autofocus autocomplete="off" value="${memberBean.chineseLastName}${memberBean.chineseFirstName}" >
            </div>
            <div class="st1">
                <label for="guestOneLastName" class="lab">英文姓</label>
                <input type="text" name="guestOneLastName" id="guestOneLastName" maxlength="10" value="${memberBean.englishLastName}">
            </div>
             <div class="st1">
                <label for="guestOneFirstName" class="lab">英文名</label>
                <input type="text" name="guestOneFirstName" id="guestOneFirstName" maxlength="10" value="${memberBean.englishFirstName}" >
            </div>
            <div class="st1">
                <label for="guestOneBirth" class="lab">生日</label>
                <input type="text" name="guestOneBirth" id="guestOneBirth" placeholder="YYYY-MM-DD"  pattern="yyyy-MM-dd" />
            </div>
            <div class="st1">
                <label class="lab">性別</label>
                <input type="radio" name="guestOneGender" id="m1" value="male">
                <label for="m1">男</label>
                <input type="radio" name="guestOneGender" id="f1" value="female">
                <label for="f1">女</label>
            </div>
        </fieldset>
        
        <c:if test="${personNum==2}">
        <fieldset>
          <h2><legend class="label label-warning">旅客二資料</legend></h2>
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
                <label for="guestTwoBirth" class="lab">生日</label>
                <input type="text" name="guestTwoBirth" id="guestTwoBirth" placeholder="YYYY-MM-DD">
            </div>
            <div class="st1">
                <label class="lab">性別</label>
                <input type="radio" name="guestTwoGender" id="m2" value="male">
                <label for="m2">男</label>
                <input type="radio" name="guestTwoGender" id="f2" value="female">
                <label for="f2">女</label>
            </div>
        </fieldset>
        </c:if>
        <button style="margin:10px;padding:10px;" class="btn-sm btn-info" onclick="entry()">一鍵帶入</button>
        <br>
        <button  style="margin:10px;" type="button" class="btn btn-info" onclick="showInfo()" >注意事項</button>
        <div class="tr_note  scrollbar2" id="waring" style="display:none">
                    <ul>
                        <li>出發前可更改皆須改票，每次收取『航空公司罰金』+『價差』+『稅差』+本公司服務費，所有更改須符合原購票之相關規定及限制（機票若有NO SHOW *記錄須另查）；出發後欲更改，須另洽詢，亦有可能不可更改。</li>
                        <li>不可退票。</li>

                        <li>
                            如更改必須於原搭乘日前２個工作日完成(國定假日無法提供更改服務)。
                        </li>
                        <li>
                            務必於原班機出發前２天更改行程並完成改票或取消紀錄，如造成NO SHOW (未照原訂航班搭乘) 將不接受任何更改或退票。
                        </li>
                        <li>
                            上述航班時間如有變動，以航空公司確認的時間為準。
                        </li>
                        <li>
                            機票開立後，不可轉讓其他公司航空、不可轉讓他人使用。
                        </li>
                        <li>
                            機票開出後,取消預訂，相關退票規定請見<a href="/Travel4u_BFM/%e9%80%80%e7%a5%a8%e9%a0%88%e7%9f%a5.pdf" target="_blank">退票須知</a>。
                        </li>
                        <li>
                            可能有額外支付費用。
                        </li>
                    </ul>
                </div>
                <div class="form-check">
    				<input type="checkbox" class="filled-in form-check-input" id="checkbox101" >
    				<label class="form-check-label" for="checkbox101">我已閱讀注意事項並同意其內容</label>
				</div>
			          <div class="sub text-center">
	          <input type="hidden" name="_method" value="post" /> 
	          <button type="button" class="btn btn-warning"    onclick="sendGuest()">送出</button>
                <input type="reset" class="btn  btn-danger" name="reset" value="清除">
            </div>

			
		</form>
	</div>
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


<script>

</script>


</body>
</html>

