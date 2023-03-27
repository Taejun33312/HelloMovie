<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>My Page</title>
<meta name="description" content="Thoughts, reviews and ideas since 1999."/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="shortcut icon" href="#">
<link rel="stylesheet" type="text/css" href="assets/css/screen.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic|Playfair+Display:400,700,400italic,700italic"/>
</head>

<body class="post-template page-template page">
<div class="site-wrapper">
<jsp:include page="../inc/top.jsp"/>
	<header class="main-header post-head " style="background-image: url(http://s3.amazonaws.com/caymandemo/wp-content/uploads/sites/10/2015/10/10174958/fas-compressor.jpg)">
		<div class="vertical">
			<div class="main-header-content inner">
				<h1 class="post-title">My page</h1>
					<div class="author-meta">
					<span class=""><a href="MemberUpdate.me">회원정보 수정</a></span>
					<span><a href="">예매확인</a></span> 
					<span class=""><a href="Bonus.me">등급확인</a></span>
					<span class=""><a href="">결제내역</a></span>
					<span class=""><a href="">1:1 문의내역</a></span>
					<span class=""><a href="Delete.me">회원탈퇴</a> </span>
					</div>
			</div>
		</div>
	</header>
	
	<main class="content" role="main">
	<article class="post tag-fashion tag-art page">
	<section class="post-content">
		
		<!--  해당 회원의 총 예매내역 출력 -->
			<c:forEach var="s" items="${ticketList }}">

					${s }
		

			</c:forEach>
	</section>
	</article>
	</main>
	
	<!-- <footer class="site-footer clearfix">
	<a href="#top" id="back-to-top" class="back-top"></a>
	<div class="text-center">
		Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>

	</div>
	</footer> -->
	
</div>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="assets/js/masonry.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.fitvids.js"></script>
<script type="text/javascript" src="assets/js/index.js"></script>
</body>
</html>