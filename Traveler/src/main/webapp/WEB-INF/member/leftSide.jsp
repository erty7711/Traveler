<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--  <div><h2 style="text-align: center">機票管理</h2></div> -->
<!--  <div><button style="margin:10px; color:black" type="button" class="btn" onclick="searchAll()">查詢訂單</button></div> -->
<!--  <div><button style="margin:10px;" type="button" class="btn" onclick="extraPriceShow()">調整extra價格</button></div> -->
<!--  <div><button  type="button" class="btn" onclick="statistics()">搜尋次數統計</button></div> -->
		<div id="nav" style="maring:0px auto;">			 
			 <ul  style="list-style-type:none;">
		 		 <li>
					<a class="btn btn-primary" onclick="searchAllPoto()"><h3><font color="white">會員管理</font></h3></a>
				 </li>
				  <li >
				   	<a class="btn btn-primary" onclick="searchAllPoto()"><h3><font color="white">會員圖像資料</font></h3></a>			   
				  </li>
				   <li >
				   	<a class="btn btn-primary" onclick="searchAllList()"><h3><font color="white">會員清單</font></h3></a>			   
				  </li>
			 </ul>
		</div>
<script>
function searchAllPoto(){
	window.location.assign("/Traveler/member/members");
}

function searchAllList(){
	window.location.assign("/Traveler/member/members2")
}
</script>