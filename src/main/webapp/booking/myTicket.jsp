<%@page import="project.movie.booking.db.BookingDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Hello Movie</title>
<meta name="description" content="Thoughts, reviews and ideas since 1999."/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="shortcut icon" href="#">
<link rel="stylesheet" type="text/css" href="assets/css/myPage.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic|Playfair+Display:400,700,400italic,700italic"/>

<style type="text/css">

.membercard {
  box-shadow: rgba(0, 0, 0, 0.15) 0px 5px 15px 0px;
    padding: 30px;
    flex-direction: column;
    align-items: center;
    background: #fff;
	width: 40%;
    text-align: center; 
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 20px;
 

</style>
</head>

<body class="post-template page-template page">

<div class="main-nav overlay clearfix">
	<jsp:include page="../inc/top.jsp"/>
</div>

	<header class="main-header post-head " style="background-image: url(http://s3.amazonaws.com/caymandemo/wp-content/uploads/sites/10/2015/10/10174958/fas-compressor.jpg)">
		<div class="vertical">
			<div class="main-header-content inner">
			
				<h1 class="post-title">My page</h1>
					<div class="author-meta">
					<span class=""><a href="MemberUpdate.me">회원정보 수정</a></span>
					<span><a href="">예매내역</a></span> 
					<span class=""><a href="Bonus.me">등급확인</a></span>
					<span class=""><a href="">1:1 문의내역</a></span>
					<span class=""><a href="Delete.me">회원탈퇴</a> </span>
					</div>
			</div>
		</div>
	</header>
	
	<div class="site-wrapper">
	<main class="content" role="main">
	<article class="post tag-fashion tag-art page">
	<section class="post-content">
		
		
			<c:forEach var="s" items="${totalList}">
			
				<div class="membercard">
				<!--  해당 회원의 총 예매내역 출력 -->
					<img class="logo" src="assets/img/logo2.png" width="120px" >
				
					예매번호: ${s[0].b_booking_num} <br>
					<h4> ${s[1].m_name } </h4>
					${s[3].t_date } 
					${s[3].t_startTime } 
					${s[2].sc_name } <br>
					좌석 번호 : ${s[0].s_num} <br>
					청소년 : ${s[0].youth_num}명 /
					성인 : ${s[0].adult_num}명 <br>
					총금액 : ${s[0].total_price }원 <br>
					결제수단 : ${s[0].b_payment }
					
				</div>

			</c:forEach>
			
	</section>
	</article>
	</main>
	
	<jsp:include page="../inc/footer.jsp" />
	
</div>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="assets/js/masonry.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.fitvids.js"></script>
<script type="text/javascript" src="assets/js/index.js"></script>
</body>
</html>