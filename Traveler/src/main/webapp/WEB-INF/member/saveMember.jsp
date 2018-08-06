<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel='stylesheet' href='//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css' />
<title><c:choose>
		<c:when test="${memberBean.function == 'add'}">加入會員</c:when>
		<c:when test="${memberBean.function == 'update'}">${welcomeNm} 會員資料更新</c:when>
		<c:otherwise>麥來亂</c:otherwise>
	</c:choose></title>
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

<style>
table {
	padding: 1px 0 1px 0;
	border-collapse: collapse;
}
</style>
<script type="text/javascript" src='<c:url value="/js/utils/Traveler.Utils.js"/>'></script>
<script type="text/javascript" src='<c:url value="/js/member.js"/>'></script>

<script src="/Traveler/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="/Traveler/js/jquery.easing.1.3.js"></script>
<!-- 一鍵帶入 -->
<script>
//This is called with the results from from FB.getLoginStatus().
function statusChangeCallback(response) {
  console.log('statusChangeCallback');
  console.log(response);
  // The response object is returned with a status field that lets the
  // app know the current login status of the person.
  // Full docs on the response object can be found in the documentation
  // for FB.getLoginStatus().
  if (response.status === 'connected') {
    // Logged into your app and Facebook.
    testAPI();
  } else {
    // The person is not logged into your app or we are unable to tell.
    document.getElementById('status').innerHTML = 'Please log ' +
      'into this app.';
  }
}

function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }
  
window.fbAsyncInit = function() {
    FB.init({
      appId      : '343238696200370',
      cookie     : true,  // enable cookies to allow the server to access 
                          // the session
      xfbml      : true,  // parse social plugins on this page
      version    : 'v2.8' // use graph api version 2.8
    });
    
 // Now that we've initialized the JavaScript SDK, we call 
    // FB.getLoginStatus().  This function gets the state of the
    // person visiting this page and can return one of three states to
    // the callback you provide.  They can be:
    //
    // 1. Logged into your app ('connected')
    // 2. Logged into Facebook, but not your app ('not_authorized')
    // 3. Not logged into Facebook and can't tell if they are logged into
    //    your app or not.
    //
    // These three cases are handled in the callback function.

    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });

  };
//Load the SDK asynchronously
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      //alert('Thanks for logging in, ' + response.name + '!' + response.id);
      var thirdPartyId = document.getElementById("thirdPartyId").value;
      //if(response.id=='1672836152800044') {
      if (thirdPartyId=='') {
    	  document.getElementById("thirdPartyId").value=response.id;
    	  //document.getElementById("loginFormAuto").submit();
      } else {
    	  document.getElementById("thirdPartyId").value=response.id;
    	  document.getElementById("thirdPartyType").value='01';
    	  alert(response.id+ ','+response.birthday);
    	  document.getElementById("fbLogin").innerHTML="已綁定FB帳號";
//     	  document.getElementById("loginFormAuto").submit();
      }
      //console.log('Successful login for: ' + response.name);
      //document.getElementById('status').innerHTML =
        
    });
  }


function  keyin(){
$("#memberId").val("H222977822");
$("#gender").val("female");
$("#password").val("a123456");
$("#chkPassword").val("a123456");
$("#birthday").val("1999-06-06");
$("#chineseLastName").val("江");
$("#chineseFirstName").val("江江");
$("#email").val("asally1110@gmail.com");
$("#mobile").val("0989-768-666");
$("#address").val("新北市板橋區oo街oo巷oo號oo樓");
}
</script>
</head>
<body onload="javascript:document.insertMemberFormA.mId.focus();">
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>
	<center>
		<!-- <form name="insertMemberFormA" action="member.do" method="POST"> -->
		<form:form method="POST" name="insertMemberFormA" action="/Traveler/member/saveMember.do"
			modelAttribute="memberBean" enctype="multipart/form-data">
			<form:input type="hidden" name="function" value="${memberBean.function}" path="function"/>		
			<table border="0" >
				<thead>
					<tr bgcolor='#F5F5F5'>
						<th height="60" colspan="2" align="center">
							<c:choose>
								<c:when test="${memberBean.function == 'add'}"><h1 align="center" style="padding-top:15px">會員註冊</h1>
								
								</c:when>
								
								<c:when test="${memberBean.function == 'update'}"><h1 align="center"style="padding-top:15px">會員資料</h1></c:when>
								<c:otherwise><h1 align="center">會員註冊</h1></c:otherwise>
							</c:choose>
						</th>
					</tr>
				</thead>
				<tbody>
<!-- 				<c:if test="${memberBean.function == 'update'}"> -->
<!-- 					<tr bgcolor='#F5F5F5'> -->
<!-- 						<td width="120" height="40" align="right"></td> -->
<!-- 						<td width="600" height="40" align="left"> -->
<!--  							<div  id="errMsg" style="color: #ff0000; font-size =60%; display: inline;">${xxx}</div> -->
<!-- 						</td> -->
<!-- 					</tr> -->
<!--  				</c:if> -->
  
					<c:choose>
						<c:when test="${memberBean.function == 'add'}">
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right"></td>
						<td width="600" height="40" align="left">
							  <div class="fb-login-button" data-max-rows="1" data-size="medium" data-button-type="continue_with" 
        						data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false" 
        						onlogin="checkLoginState();" >
        					</div>
        					<div id="fbLogin">
        					</div>
					</tr>
						</c:when>
						<c:otherwise></c:otherwise>
					</c:choose>

					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*會員帳號：</td>
						<td width="600" height="40" align="left">
							<c:choose>
								<c:when test="${memberBean.function == 'update'}">${memberBean.memberId}</c:when>
								<c:otherwise>
									<form:input type="text" id='memberId' style="text-align: left" name="memberId" 
									value="${memberBean.memberId}"  size="14" placeholder="請輸入身份證字號" onblur="chkIdn()" path="memberId" />
									<div id="errMsgIdn" style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.memberId}</div>
								</c:otherwise>
							</c:choose>
					</tr>
<!-- 					<tr bgcolor='#F5F5F5'> -->
<!-- 						<td width="120" height="40" align="right">會員紅利：</td> -->
<!-- 						<td width="600" height="40" align="left">			 -->
<!-- 								${member.point} --!>
									
<!-- 					</tr> -->
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*性別：</td>
						<td width="600" height="40" align="left">
						<select id="gender" name="gender" style="text-align: left" onchange="chkGender()">
								<option value="" ${(memberBean.function == 'add')?"selected":""}>請選擇</option>
								<option value="male" ${(memberBean.gender == 'male')?"selected":""}>男</option>
								<option value="female" ${(memberBean.gender == 'female')?"selected":""}>女</option>
						</select>
							<div  id="errMsgGender" style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.gender}</div>
						</td>
					</tr>
					<c:if test="${memberBean.function == 'add'}">
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*密碼：</td>
						<td width="600" height="40" align="left">
						<form:input id='password' style="text-align: left" name="password" value="${memberBean.password}" 
									type="password" size="30" placeholder="至少6個字須含英文、數字" onblur="chkPwd()" path="password" />
						<div id="errMsgPwd" style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.password}</div>
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*確認密碼：</td>
						<td width="600" height="40" align="left">
						<form:input id='chkPassword' style="text-align: left" name="chkPassword"
							value="${memberBean.chkPassword}" type="password" size="30" placeholder="需和密碼欄一致" onblur="chkChkPwd()" path="chkPassword" />
							<div  id="errMsgChkPwd" style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.chkPassword}</div>
						</td>
					</tr>
					</c:if>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*出生年月日：</td>
						<td width="600" height="40" align="left">
						<form:input id="birthday" name="birthday" value="${(memberBean.function == 'add')?memberBean.birthday:member.birthday}" type="text" size="14"
							placeholder="格式為yyyy/MM/dd" onblur="chkBirthday()" path="birthday"/>
							<div  id="errMsgBirthday" style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.birthday}</div>
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">護照姓名：</td>
						<td width="600" height="40" align="left">*中文
						<form:input id="chineseLastName" name="chineseLastName" 
							value="${(memberBean.function == 'add')?memberBean.chineseLastName:member.chineseLastName}"	
							type="text" size="10" placeholder="姓" onblur="chkName(value)" path="chineseLastName"/>
						<form:input id="chineseFirstName" name="chineseFirstName" 
							value="${(memberBean.function == 'add')?memberBean.chineseFirstName:member.chineseFirstName}"
							type="text" size="10" placeholder="名" onblur="chkName(value)" path="chineseFirstName"/>
							<div  id="errMsgName" style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.name}</div>
							<p></p>&nbsp&nbsp英文
						<form:input id="englishLastName" name="englishLastName" 
							value="${(memberBean.function == 'add')?memberBean.englishLastName:member.englishLastName}"
							type="text" size="20" placeholder="姓Last Name" path="englishLastName"/>
						<form:input name="englishFirstName" value="${(memberBean.function == 'add')?memberBean.englishFirstName:member.englishFirstName}"
							type="text" size="20" placeholder="名First Name" path="englishFirstName" />
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*聯絡Email：</td>
						<td width="600" height="40" align="left">
						<form:input  id="email" name="email" value="${(memberBean.function == 'add')?memberBean.email:member.email}" type="text" size="30" onblur="chkEmail()" path="email"/>
							<div  id="errMsgEmail" style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.email}</div>
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">*手機：</td>
						<td width="600" height="40" align="left">
							<form:input type="text" id="mobile" name="mobile" 
							value="${(memberBean.function == 'add')?memberBean.mobile:member.mobile}"  
							size="30" onblur="chkMobile()" path="mobile"/>
							<div  id="errMsgMobile" style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.mobile}</div>
						</td>
					</tr>				
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">市話：</td>
						<td width="600" height="40" align="left">
							<form:input type="text"
							name="phoneNumber" value="${(memberBean.function == 'add')?memberBean.phoneNumber:member.phoneNumber}" 
							size="30" path="phoneNumber"/>
							<div  id="errMsgPhoneNumber" style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.phoneNumber}</div>
						</td>
					</tr>				
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">地址：</td>
						<td width="600" height="40" align="left">
							<form:input type="text" id="address"
							name="address" value="${(memberBean.function == 'add')?memberBean.address:member.address}" 
							size="50" path="address"/>
							<div  id="errMsgAddress" style="color: #ff0000; font-size =60%; display: inline;">${errorMsg.address}</div>
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
						<td width="120" height="40" align="right">圖片：</td>
						<td width="600" height="40" align="left">
							<form:input type='file' id="memberPicture" path="memberPicture" />
						</td>
					</tr>
					<tr bgcolor='#F5F5F5'>
							<td height="50" colspan="2" align="center">					
							<input type="button" value="上一頁" onclick="goBack()" />
							<input
							type="submit" value="送出">
						</td>
					</tr>
				</tbody>
			</table>
			<input type="hidden" id="thirdPartyType" name="thirdPartyType" value="">
       		<input type="hidden" id="thirdPartyId" name="thirdPartyId" value="">
		</form:form>
		    <c:if test="${memberBean.function == 'add'}">
				<button class="btn-info" onclick="keyin()">key in</button>
			</c:if>
	</center>
	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>

</html>