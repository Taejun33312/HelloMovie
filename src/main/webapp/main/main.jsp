<%@page import="movie.main.db.MovieDTO"%>
<%@page import="member.db.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="ab">
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Hello Movie</title>
<style type="text/css">
.notice1 {
	font-size: 20px;
}
.aa{
	margin-left: 62px;
	text-align: center;
	margin-top: 30px;
}
.ab{
	background-color: #1D1D1D;
}
.mainVideo{
	margin-top: 50px;
}
/* .abc{
	color: white;
	float: left;
	margin-left: 50px;
} */
</style>
<meta name="description" content="Thoughts, reviews and ideas since 1999."/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" type="text/css" href="assets/css/screen.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic%7CPlayfair+Display:400,700,400italic,700italic"/>
</head>
<body class="home-template">
<div class="site-wrapper">
	<jsp:include page="../inc/top.jsp"/>
	<header class="main-header">
	<div class="vertical">
		<div class="main-header-content inner">
			<iframe class="mainVideo"  width="750px" height="440px" src="https://www.youtube.com/embed/pqiZwIq6Vlo?mute=1&autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>			
			</div>
	
	
	<table>
	
 	<div>
	<h3>
		<a href="#" class="btn-gradient red " style="text-decoration: none;"> 무비차트 </a>
		<a href="./movieList.mv" id="abc" class="btn-gradient green mini" > 전체보기 </a>
	</h3>
		
	</div>
	
		
		<c:if test="${not empty dailyList}">
		
		<c:set var="size" value="${dailyList.size() }"/>
		<c:set var="num" value="0"/>
		
		<c:if test="${num<size }">
		<c:set var="list" value="${dailyList[num] }"/>
		<c:set var="img" value="${imgList[num] }"/>
			<c:forEach var="dto" items="${movieList }">
				<a href="./movieDetail.mv?movieNm=${dto.getM_name() }&movieSalesRate=${dto.getM_reservationRate() }&movieCd=${dto.getM_num() }">	
					<div style="float:left" >
						<img src="./upload/${dto.m_img }" onerror="this.style.display='none';"
						    class="aa"   width="245px" height="340px" alt=""></a>
						       <br>
						<a href="#none"  class="btn-gradient yellow mini"  >
						<span style="color: black;"> 예매율${dto.m_reservationRate }%</span></a>					
							 <a href="./Booking.bk" class="btn-gradient red mini" > 예매하기 </a>
					</div>
	    </c:forEach>
	</c:if>
	</c:if>
	</table>
		</div>
	</div>
	</header>
	<footer class="site-footer clearfix" style="position: relative;">
	<a href="#top" id="back-to-top" class="back-top"></a>
	<div class="text-center">
		 	<a>안영화세요</a><br>
		 	<a href="./NoticeListAction.no"><span class="notice1">공지사항</span></a>
			 <a href="./QnaListAction.qa"><span class="notice1">고객센터</span></a><br>
			 Copyright &copy;<script>document.write(new Date().getFullYear());</script>
			All rights reserved
	</div>
	</footer>
</body>
</html>