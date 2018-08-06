<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
<title>意見反應表</title>
</head>
<style>
table{
padding:5px;
  border-collapse: separate;
  border-spacing: 0;
  border-radius: 10px;
}
p{
color:black;
}
td{
border:1px solid #ccc;
color:black;
padding:5px;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/frontStageHeader.jsp"%>
	


	
			</header>

			<!-- end:header-top -->

			<div class="container" style="padding-top:80px;padding-left:100px;width:45em">
	<c:forEach var='con' items='${contactus}'>	
<form action="/Traveler/contactus/selectfeedbackopinion/${con.pkid}" modelAttribute="contactusBean"  enctype='multipart/form-data'>
						 <fieldest>
						<table>
									
						<tr>		
						<td><label for='name'>姓名:</label>
						<td id='name' path='name' type='text' value='${con.name}'/>${con.name}</td>
						</tr>
						<tr>
						<td><label for='sex'>性別: </label>
						<td id='sex' path='sex' type='text' value='${con.sex}'/>${con.sex}</td>
						</tr>
						<tr>
						<td><label for='age'>年齡: </label>
						<td id='age' path='age' type='text' value='${con.age}'/>${con.age}</td>
						</tr>
						<tr>
						<td><label for='phone'>連絡電話: </label>
						<td id='phone' path='phone' type='text' value='${con.phone}'/>${con.phone}</td>
						</tr>
						<tr>
						<td><label for='email'>電子信箱: </label>
						<td id='email' path='email' type='text' value='${con.email}'/>${con.email}</td>
						</tr>
						<tr>
						<td><label for='address'>所在地: </label>
						<td id='address' path='address' type='text' value='${con.address}'/>${con.address}</td>
						</tr>
						<tr>
						<td><label for='opinion'>意見類別: </label>
						<td id='opinion' path='opinion' type='text' value='${con.opinion}'/>${con.opinion}</td>
						</tr>
						<tr>
						<td>
					    <label for='comment'>意見欄: </label> 
					    <td cols="40" rows="5"  id="comment" path='comment' value='${con.comment}'>${con.comment}
					    </td>
					    </tr>
<!-- 					    <tr> -->
<!-- 						<td> -->
<!-- 					    <label for='feedbackmessagetime'>回覆時間: </label>  -->
<%-- 					    <td cols="40" rows="5"  id="feedbackmessagetime" path='feedbackmessagetime' value='${con.feedbackmessagetime}'>${con.feedbackmessagetime} --%>
<!-- 					    </td> -->
<!-- 					    </tr> -->
					    <tr>
					    <td>
					    <label for='feedback'>回覆欄:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
					    <td cols="40" rows="5"  id="feedback" path='feedback' value='${con.feedback}'>${con.feedback}
					    </td>
					    </tr>
					   
						</table>
					    
<!--                <div class='form-group'> -->
<!--                	<input type="submit" id='btnAdd' class="btn btn-primary" value="回覆"></input> -->
<!--                	</div> -->
		</fieldest>
		</form>
		 </c:forEach>
               	
						
						
				</div>

<!-- 	fh5co-blog-section -->

	
	</div>
	</div>
	</footer>

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	<script src="../js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="../js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="../js/jquery.waypoints.min.js"></script>
	<script src="../js/sticky.js"></script>

	<!-- Stellar -->
	<script src="../js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="../js/hoverIntent.js"></script>
	<script src="../js/superfish.js"></script>
	<!-- Magnific Popup -->
	<script src="../js/jquery.magnific-popup.min.js"></script>
	<script src="../js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="../js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="../js/classie.js"></script>
	<script src="../js/selectFx.js"></script>

	<!-- Main JS -->
	<script src="../js/main.js"></script>
	<%@ include file="/WEB-INF/frontStageFooter.jsp"%>
</body>
</html>