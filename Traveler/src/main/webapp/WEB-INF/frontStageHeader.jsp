<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 連結旁邊的小ICON套件  -->	
<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/all.js" integrity="sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe" crossorigin="anonymous"></script>
		<header id="fh5co-header-section" class="sticky-banner">
				<div class="container">
					<div class="nav-header">
					<!-- 正式上線刪除 -->
<!-- 					<a class="btn btn-primary btn-lg" href="/Traveler/backStageHome">暫時後台傳送門</a> -->
					<!-- 正式上線刪除 -->
						<a href="/Traveler/" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="/Traveler/"><i class="icon-airplane"></i>Traveler</a>
						</h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a href="/Traveler"><i class="fas fa-plane"></i><font color="orange">機票</font></a></li>
							<li><a href="/Traveler/_Hotel/SelectHotel"><i class="fas fa-home"></i><font color="orange">飯店</font></a></li>
								<li><a href="/Traveler/theme/titles" class="fh5co-sub-ddown"><i class="fas fa-globe"></i><font color="orange">主題旅遊</font></a>
									<!-- 下面這塊ul以後會刪掉 -->
									<!--  <ul class="fh5co-sub-menu">
									    <li><a href="/Traveler/theme/titles">測試頁</a></li>
										<li><a href="/Traveler/theme/allProducts">顯示全產品</a></li>
										<li><a href="/Traveler/theme/allJourneys">顯示全行程</a></li>
										<li><a href="/Traveler/theme/applications">顯示全報名表</a></li>
									</ul>-->
									</li>
								
								<li><a href="/Traveler/commlistfront"><i class=	"fas fa-cart-arrow-down"></i><font color="orange">紅利商品</font></a></li>
								<li><a href="/Traveler/contactus/contactusopinion"><i class="fas fa-phone-square"></i><font color="orange">客服中心</font></a>
							<ul class="fh5co-sub-menu">
								<li><a href="/Traveler/contactus/InsertOpinionSuccess">查看回覆</a></li>
								<li><a href="mailto:asally1110@gmail.com">客服信箱</a></li>
<!-- 									<li><a href="/Traveler/contactus/Linechat">Line線上客服</a></li> -->
						</ul></li>
							<c:choose>
									<c:when test="${LoginOK!=null}">
									<!-- 登入後 -->
								<li><a href=''><i class="far fa-user-circle"></i><font color="orange">會員專區</font></a>
									<ul class="fh5co-sub-menu">
											<li><a href="<spring:url value='/member/member?memberId=${LoginOK.memberId}'/>">查詢會員資料</a></li>
											<li><a href='/Traveler/airTickets/memberOrderSearch'>查詢交易資料</a></li>
											<li><a href='/Traveler/member/updateMember'>修改會員資料</a></li>
											<li><a href='/Traveler/member/changePwd'>修改密碼</a></li>
											<li><a href='/Traveler/member/logout.do'>登出</a></li>
									</ul>
								</li>
								</c:when>
									<c:otherwise>
										<!-- 登入前 -->

										<li><a href='/Traveler/member/login' style="color:orange"><i class="far fa-user-circle"></i>註冊/登入</a></li>

									</c:otherwise>
								</c:choose>
							</ul>
						</nav>
					</div>
				</div>
			</header>