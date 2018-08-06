
//目前不使用
function extraPrice(){
	$(".d2").empty();
	$(".d2").html("<div class='panel panel-info'><div class='panel-heading'><h3 class='panel-title'>調整EXTRA價格</h3></div><div class='panel-body'><div ><select  id='dept' name='dept' class='secDep' style='color: blue;''><option selected='selected'>選擇出發地</option><option>TPE</option><option>TSA</option></select></div><br><div ><select onchange='myFunction()' name='arrv'  id='arrv'><option selected='selected'>選擇目的地</option><option>HND</option><option>NRT</option><option>SEL</option><option>KIX</option><option>BKK</option><option>SIN</option></select></div><div id='show'><div></div></div>");
//	$(".d2").append("<div  ><h2></h2><select  id='dept' name='dept' class='secDep' style='color: blue;''><option selected='selected'>選擇出發地</option><option>TPE</option><option>TSA</option></select></div>");
	$(".d2").append("");
	$(".d2").append("");
	
}

function extraPriceShow(){
	window.location.assign("/Traveler/airTickets/back/extraShow")
}

//function modify(){
//	alert("修改");
//}	

var dept;
var arrv;
var id;
var extraPrice;
function myFunction(){
	dept=$("#dept").val();
	arrv=$("#arrv").val();
	
	var data= new FormData();
	data.append("dept",dept);
	data.append("arrv",arrv);
	
	$.ajax({
		url : '/Traveler/airTickets/back/extra',
		type : 'POST',
		data : data,
		enctype: "multipart/form-data",
		contentType : false,
		processData : false,
		success : function(responce) {
			$("#show").empty();		
			id=responce.pkId;
			$("#show").append("<div style='margin:10px; padding:10px;'><input id='update' type='text' value="+responce.extraPrice+" ><button type='button' class='btn-sm btn-warning' onclick='modify()'>修改</button></div>");
// 			window.location.assign(responce);
		},
		error:function(){
			alert("error");
		}

	});
}
	
function modify(){
	extraPrice =$("#update").val();
	var data2= new FormData();
	data2.append("id",id);
	data2.append("dept",dept);
	data2.append("arrv",arrv);
	data2.append("extraPrice",extraPrice);
//測試ALERT	
//	alert(dept+","+arrv+","+extraPrice);
	
	$.ajax({
		url : '/Traveler/airTickets/back/updateExtra',
		type : 'POST',
		data : data2,
		enctype: "multipart/form-data",
		contentType : false,
		processData : false,
		success : function(responce) {
			alert("修改完成");
		},
		error:function(){
			alert("error");
		}

	});
}	

function searchAll(){
	window.location.assign("/Traveler/airTickets/back/searchAll");
}
//導向統計畫面
function statistics(){
	window.location.assign("/Traveler/airTickets/back/statistics");
}
