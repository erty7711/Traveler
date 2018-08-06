<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

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
	$(document).ready(function() {
		//alert("ok");

		$('#myform').submit(function() {
			var data = new FormData($("#myform"));
			alert("submit");
			console.log(data);
			$.ajax({
				url : 'guest',
				type : 'POST',
				data : data,
				//enctype: "multipart/form-data",
				contentType : false,
				processData : false,
				success : function() {
					alert("ok");
					window.location.href = "http://tw.yahoo.com"
				}

			});

		});
	});

	// $("myform").on("submit", function(e) {
	//     e.preventDefault();
	//     $.post(this.action, $(this).serialize());
	// });
</script>
<body>
	<div>
		<form:form id="myform" action="guest" modelAttribute="abc"
			method="post">
			<p>旅客一</p>
			<label>中文姓</label>
			<form:input type="text" path="chineseFirstpath_1" />

			<input type="submit" id="submit" />送出
		</form:form>
	</div>
</body>
</html>