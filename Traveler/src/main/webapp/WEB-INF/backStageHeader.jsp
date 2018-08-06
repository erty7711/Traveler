<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<header id="fh5co-header-section" class="sticky-banner"
		style="background-color: black;">
	<div class="container">
		<div class="nav-header">
			<a href="/Traveler/backStageForm/" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
			<h1 id="fh5co-logo" style="color:orange;">
				<a href="#"><i class="fas fa-dove "></i>Traveler</a>&nbsp;管理員
			</h1>
			<!-- START #fh5co-menu-wrap -->
			<nav id="fh5co-menu-wrap" role="navigation">
			<ul class="sf-menu" id="fh5co-primary-menu"
				style="background-color: black">
				<li><a href="/Traveler/airTickets/back/searchAll"><i class="fas fa-plane"></i><font
						color="orange">機票</font></a></li>
				<li><a href="/Traveler/_Hotel/End/ManagerAllHotels"><i class="fas fa-home"></i><font
						color="orange">飯店</font></a></li>
				<li><a href="/Traveler/theme/back"><i class="fas fa-globe"></i><font
						color="orange">旅遊</font></a></li>
				<li><a href="/Traveler/commlist"><i class="fas fa-cart-arrow-down"></i><font
						color="orange">紅利商品</font></a></li>
				<li><a href="/Traveler/contactus/selectopinion"><i class="fas fa-phone-square"></i><font
						color="orange">客服中心</font></a></li>
					<li><a href="/Traveler/member/members"><i class="far fa-user-circle"></i><font color="orange">管理會員專區</font></a></li>
<%-- 			<c:choose> --%>
<%-- 									<c:when test="${LoginOK!=null}"> --%>
<!-- 									登入後 -->
<!-- 								<li><a href="/Traveler/backStageForm"><i class="far fa-user-circle"></i><font color="orange">管理會員專區</font></a> -->
<!-- 									<ul class="fh5co-sub-menu"> -->
<!-- 											<li><a href='/Traveler/member/members'>查詢所有會員資料</a></li> -->
<!-- 											<li><a href='/Traveler/member/logout.do'>登出</a></li> -->
<!-- 									</ul> -->
<!-- 								</li> -->
<%-- 								</c:when> --%>
<%-- 									<c:otherwise> --%>
<!-- 										登入前 -->
<!-- 										<li><a href='/Traveler/backStageForm' style="color:orange"><i class="far fa-user-circle"></i>管理專區</a></li> -->
<!-- 										<ul class="fh5co-sub-menu"> -->
<!-- 											<li><a href='/Traveler/member/login'>登入</a></li> -->
<!-- 										</ul> -->
<%-- 									</c:otherwise> --%>
<%-- 								</c:choose> --%>
				<li id="logout" ><a href="/Traveler/backStageHome"><i class="fas fa-home"></i><font
						color="orange">登出</font></a></li>
			</ul>
			</nav>
		</div>
	</div>
	</header>