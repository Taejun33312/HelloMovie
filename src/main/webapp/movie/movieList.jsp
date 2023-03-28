

<%@page import="movie.movie.db.NaverAPIDTO"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService"%>
<%@page import="org.codehaus.jackson.map.ObjectMapper"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Collection"%>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Nectaria - Free HTML Template by WowThemes.net</title>
<meta name="description" content="Thoughts, reviews and ideas since 1999."/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" type="text/css" href="./assets/css/screen.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic|Playfair+Display:400,700,400italic,700italic"/>

<%
	LocalDate beforOnDate = LocalDate.now().minusDays(1);
	String yesterday = beforOnDate.format(DateTimeFormatter.ofPattern("yyyyMMdd"));
%>

</head>
<body class="author-template">
<div class="site-wrapper" style="height:100%">
	<jsp:include page="../inc/top.jsp"/>
	<header class="main-header author-head " style="background-image: url(http://s3.amazonaws.com/caymandemo/wp-content/uploads/sites/10/2015/09/30162427/sep2.jpg)">
	
	<div class="datetype1">
	
		<h2 style="color:white; margin-top:100px"><%=yesterday %> 기준</h2>
		<h2 style="color:white;">일간 박스오피스</h2>
		
	</div>
	
	</header>
	<main class="content1" role="main">
	
	<c:if test="${not empty dailyList}">
	
	<c:set var="size" value="${dailyList.size() }"/>
	<c:set var="num" value="0"/>
	<c:forEach begin="1" end="${dailyList.size() }" step="1">
	
	<c:forEach begin="1" end="${dailyList.size() }" step="1" var="i">
	<c:if test="${num<size }">
	<c:set var="list" value="${dailyList[num] }"/>
	<c:set var="img" value="${imgList[num] }"/>
	
	 	<div class="grid-item1" style="height:550px; float:left"> 
			<article class="post" style="float:left; width: 90%; margin:10px">
			<div class="wrapgriditem" style=" height:430px;">
				<header class="post-header">
				<h2 class="post-title" style="font-size: 2rem;">${list.getM_rank() }.
				<a href="./movieDetail.mv?movieNm=${list.getM_name() }&movieSalesRate=${list.getM_reservationRate() }&movieCd=${list.getM_num() }">
				
				<c:choose>
					<c:when test="${fn:length(list.m_name) gt 12}">
						<c:out value="${fn:substring(list.m_name,0,11) }"/>...
					</c:when>
					<c:otherwise>
						<c:out value="${list.getM_name() }"/>
					</c:otherwise>
				</c:choose>
				
				</a></h2>
				</header>
				<section class="post-excerpt">
				<p>
				<a href="./movieDetail.mv?movieNm=${list.getM_name() }&movieSalesRate=${list.getM_reservationRate() }&movieCd=${list.getM_num() }">
					<img src="${img }" style="width:200px; height:300px">
				</a>
				</p>
				</section>
				<footer class="post-meta" style="font-size:1.5rem; color: black;">
				<c:out value="예매율 ${list.getM_reservationRate() }"/>%
				<time class="post-date" datetime="2015-12-17"><c:out value="${list.getM_playDate() } 개봉"/></time><br>
				
				</footer>
			</div>
			</article>
		</div> 

	<c:set var="num" value="${num+1 }"/>
	</c:if>
	
	</c:forEach>

	</c:forEach>
	
	</c:if>
	</main>
	<jsp:include page="../inc/footer.jsp"/>
</div>
</body>
</html>