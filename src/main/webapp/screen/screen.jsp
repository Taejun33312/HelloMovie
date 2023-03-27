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
<link rel="stylesheet" type="text/css" href="./css/screen.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic|Playfair+Display:400,700,400italic,700italic"/>
	
</head>
<body class="post-template page-template page">
<div class="site-wrapper">
	<div class="main-nav overlay clearfix">
	<jsp:include page="../inc/top.jsp"/>
		</div>
	</div>
	
	<header class="main-header post-head " style="background-image: url(http://s3.amazonaws.com/caymandemo/wp-content/uploads/sites/10/2015/10/10174958/fas-compressor.jpg)">
	<div class="vertical">
		<div class="main-header-content inner" style="max-width: 80%;">
			<h1 class="post-title"> <img src="./img/${dto.sc_img }" width="100%" > </h1>
		</div>
		<!-- <input type="button" value="예매하기"> -->
	</div>
	</header>
	<main class="content" role="main" style="margin-top: 0px;">
	<article class="post tag-fashion tag-art page">
	<section class="post-content">
	<%-- <c:set var="screenList" value="${screenList }"/> --%>
		<ul>
			<li>${dto.sc_addr }</li>		
			<li>${dto.sc_phonenumber }</li>		
			<!-- <li>강남의 중심! 강남 소비문화의 중심지인 지하철 2호선 , 신분당선 - 강남역과 연결
로맨틱 멀티플렉스! 젊은 도시 강남이 한 눈에 보이는 최상의 View를 제공</li>	 -->	
		</ul>
		<input class="btn-gradient red mini" style="margin-bottom: 30px;" type="button" value="예매하기" onclick="location.href='./Booking.bk'"><!-- ./예매 페이지 이동(Sc_num 받아야 됨) -->
		
	</section>
	</article>
	
	<!-- 지도를 표시할 div 입니다 -->
<div id="map" style="width:100%;height:450px;"></div>

<!-- 지도 API -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=41dad76885761be1ceaf36fb619ec23b"></script>
<script>
var latitude = "<c:out value='${dto.sc_latitude}'/>";
var longitude = "<c:out value='${dto.sc_longitude}'/>";
console.log(latitude);
console.log(longitude);
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표(위도, 경도)
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(latitude, longitude); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
<!-- 지도 API -->
	</main>
	<jsp:include page="../inc/footer.jsp" />
	
</body>
</html>