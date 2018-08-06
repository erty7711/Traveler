
//讀取出發地地xml 
var xmlhttp;
	$(document).ready(loadXMLDoc);
	function loadXMLDoc() {
		//判斷瀏覽器
		if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else { // code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}

		//等待
		// document.getElementById("myDiv").innerHTML="讀取中...";   
		//載入
		xmlhttp.open("GET", "/Traveler/xml/CITYcode.xml", true);
		//處理
		xmlhttp.onreadystatechange = function() {
			handleStateChange();
		};
		//設定表頭
		xmlhttp.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded;charset=utf-8")
		//傳送
		xmlhttp.send();
	}

//	選擇出發地後生出目的地
	
	function handleStateChange() //處理動作--讀取XML
	{
		// readyState: 4 代表 request finished and response is ready
		// status: 200 代表 Ok
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			xmlDoc = xmlhttp.responseXML;
			txt = "";
			D = xmlDoc.getElementsByTagName("D");
			C = xmlDoc.getElementsByTagName("C");
			DEP = document.getElementById("sec");
			for (i = 0; i < C.length; i++) {
				opy = new Option(D[i].childNodes[0].nodeValue,
						C[i].childNodes[0].nodeValue);
				DEP.options.add(opy);

			}

		}

		{
			$("#sec")
					.click(
							function() {
								// 								if($('#sec').options[0])
								if ($('#sec :selected').text() == "選擇出發地") {
									$('#sec :selected').remove();
								}
								xmlhttp.open("GET", "/Traveler/xml/CITYcode.xml", true);
								xmlhttp.onreadystatechange = function() {
									RET = document.getElementById("ret");
									value = $('#sec :selected').text();
									while (RET.length > 0) {
										RET.remove(RET.length - 1);
									}

									if (xmlhttp.readyState == 4
											&& xmlhttp.status == 200) {
										xmlDoc = xmlhttp.responseXML;
										txt = "";
										D = xmlDoc.getElementsByTagName("D");
										C = xmlDoc.getElementsByTagName("C");

										for (i = 0; i < C.length; i++) {
											opy = new Option(
													D[i].childNodes[0].nodeValue,
													C[i].childNodes[0].nodeValue);
											if (D[i].childNodes[0].nodeValue == value) {
												continue;
											}
											RET.options.add(opy);
										}
									}
								};
								xmlhttp
										.setRequestHeader("Content-Type",
												"application/x-www-form-urlencoded;charset=utf-8")
								xmlhttp.send();

							});
		}
		;

	}
	
	

//	<!-- 		選擇日期 -->
	$(function() {
		$("#datepicker")
				.datepicker(
						{
							showOn : "button",
							buttonImage : "https://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
							buttonImageOnly : true,
							buttonText : "Select date",
							minDate : 0,
							maxDate : "+1M +10D",
							dateFormat : "yy-mm-dd"
						});
	});

	$(function() {
		$("#datepicker2")
				.datepicker(
						{
							showOn : "button",
							buttonImage : "https://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
							buttonImageOnly : true,
							buttonText : "Select date",
							minDate : 0,
							maxDate : "+1M +10D",
							dateFormat : "yy-mm-dd"
						});
	});

	$(document).ready(function() {
		$("div.input-text5,img").on("change", function() {
			setTimeout(function() {
				$("div.input-text6,img").click()
			}, 10);
			//   		  		$("div.input-text6,img").click()
		});
	});
	
//	單程雙程按鈕
	function re() {

		$("#reb").html("<label for='date-end'>回程日</label><div class='input-text6'><input type='text' class='form-control' name='reDate' id='datepicker2' readonly></div>");
			$("#datepicker2")
					.datepicker(
							{
								showOn : "button",
								buttonImage : "https://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
								buttonImageOnly : true,
								buttonText : "Select date",
								minDate : 0,
								maxDate : "+1M +10D",
								dateFormat : "yy-mm-dd"
							});
	}
	function reba() {
// 		$("#reb").attr("style", "display:none");
		$("#reb label").remove();
		$("#reb div").remove();

	}
	
	
//	讀取中畫面
	function slow() {
		$("#all").css("filter", "opacity(40%)");
		$("#img1").css("position", "absolute").css("left", "40%").css("top",
				"40%").css("display", "inline").css("filter", "opacity(100%)");
	}