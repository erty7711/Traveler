<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>login</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

/* style the container */
.container {
  position: relative;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 1px 0 0 0;
} 

/* style inputs and link buttons */
input,
.btn {
  width: 100%;
  padding: 12px;
  border: none;
  border-radius: 4px;
  margin: 5px 0;
  opacity: 0.85;
  display: inline-block;
  font-size: 17px;
  line-height: 20px;
  text-decoration: none; /* remove underline from anchors */
}

input:hover,
.btn:hover {
  opacity: 1;
}

/* add appropriate colors to fb, twitter and google buttons */
.fb {
  background-color: #3B5998;
  color: white;
}

.twitter {
  background-color: #55ACEE;
  color: white;
}

.google {
  background-color: #dd4b39;
  color: white;
}

/* style the submit button */
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

/* Two-column layout */
.col {

/*   float: left; */
  width: 50%;
  margin: auto;
/*   padding: 50px 50px; */
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* vertical line */
.vl {
  position: absolute;
  left: 50%;
  transform: translate(-50%);
  border: 2px solid #ddd;
  height: 175px;
}

/* text inside the vertical line */
.vl-innertext {
  position: absolute;
  top: 50%;
  transform: translate(-50%, -50%);
  background-color: #f1f1f1;
  border: 1px solid #ccc;
  border-radius: 50%;
  padding: 8px 10px;
}

/* hide some text on medium and large screens */
.hide-md-lg {
  display: none;
}

/* bottom container */
.bottom-container {
  text-align: center;
  background-color: #666;
  border-radius: 0px 0px 4px 4px;
}

/* Responsive layout - when the screen is less than 650px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 650px) {
  .col {
    width: 100%;
    margin-top: 0;
  }
  /* hide the vertical line */
  .vl {
    display: none;
  }
  /* show the hidden text on small screens */
  .hide-md-lg {
    display: block;
    text-align: center;
  }
}
</style>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="https://apis.google.com/js/platform.js" defer async="true"></script>
</head>
<body onLoad="setFocusToUserId()" style="margin-top: 20px">
<script>
  // This is called with the results from from FB.getLoginStatus().
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

  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
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

  // Load the SDK asynchronously
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
    	  document.getElementById("loginFormAuto").submit();
      }
      //console.log('Successful login for: ' + response.name);
      //document.getElementById('status').innerHTML =
        
    });
  }
</script>
<div style="margin:auto;width:30%" >
<div class="container" style="padding:center;" >
  <form id="loginForm" name="loginForm" action="<c:url value='/member/login.do'/>" method="POST" align="center">
  <div class="row">
  	<h2 >Login </h2>
  	<div class="col-md-4" >
        <input type="text" name="memberId" placeholder="身份證字號" required >
        <input type="password" name="password" placeholder="Password" required >
        <div id="errorMsgMap"  font-size =30%; display: inline;">${errorMsgMap.LoginError}</div>
        <div style="align=center;">
                <input type="checkbox"	name="rememberMe"
				<c:if test='${sessionScope.rememberMe==true}'>checked='checked'</c:if>
						value="true" style="width:10%">記住密碼
    	<TR height='10'>
             <TD align="CENTER" colspan='2'>&nbsp;<Font color='red' size="-1">${ErrorMsgMap.LoginError}&nbsp;</Font></TD>
         </TR>
    	<div class="g-recaptcha col" data-sitekey="6LecRlkUAAAAAAjw-yatNu-zJHfZhcqVmg10Ce9b" style="width:304px"></div>
    </div>
	
        <input type="submit" value="Login">
   <div class="col-md-8"></div>     

	</div>
  </div>
  <div class="row">
   	<div class="col-md-4" padding="0 0 1px 0">
<!--         <a href="#" class="fb btn"></a> -->
			<div class="fb btn">
<!--           	<i class="fa fa-facebook fa-fw" scope="public_profile,email" -->
<!--   onlogin="checkLoginState();"></i> Login with Facebook -->

        <div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" 
        data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false" onlogin="checkLoginState();" style="width:304px" >
        </div>
 	</div>       
<!--       <fb:login-button scope="public_profile,email" onlogin="checkLoginState();"> -->
<!-- 	  </fb:login-button> -->
        <a href="#" class="google btn" >
        	<i class="fa fa-google fa-fw"></i> Login with Google+
        </a>
    </div>
    </div>    
  </form>
  <form id="loginFormAuto" name="loginFormAuto" action="<c:url value='/member/login.do'/>" method="POST" align="center">
        <input type="hidden" id="thirdPartyType" name="thirdPartyType" value="">
        <input type="hidden" id="thirdPartyId" name="thirdPartyId" value="">
  </form>
  </div>
<div class="bottom-container" style="margin-top:-15px">
  <div class="row">
    <div class="col">
      <a href="<spring:url value='/member/register'/>" style="color:white" class="btn">Sign up</a>
    </div>
    <div class="col">
      <a href="<spring:url value='/member/queryPwd'/>" style="color:white" class="btn">Forgot password?</a>
    </div>

  </div>
</div>
</div>
<!-- </div>  -->
</body>
</html>