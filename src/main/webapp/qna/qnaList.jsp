<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="assets/css/screen.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic|Playfair+Display:400,700,400italic,700italic"/>

<style type="text/css">

#menu{
    list-style: none;
    text-align: center;
}

.btn22{
    border-radius: 5px;
    margin-right: 10px;
    color: black;
    line-height: 40px;
    border: 1px solid lightgrey !important;
    background: #f4f4f4;
    padding: 10px;
}

#btn33{
    margin-left: 3px;
    /* color: #fff; */
    /* line-height: 30px; */
    border: 1px solid #c4c4c4;
    background: #f4f4f4;
    padding: 1px;
    border-radius: 4px;
    margin-top: 10px;
}

h2{
  text-align: left;
    margin-top: 200px;
    margin-left: auto;
    color: black;
}
#page_control{
justify-content: center;
}

    body{
    margin:auto 22%;
    width: 800px;
    background-color: white;
        line-height:2em;        
        font-family:"맑은 고딕";
}
    ul, li{ 
        list-style:none;
        text-align:center;
        float: left;
        padding:0;	
        margin:0;
         
}

    #mainWrapper{
        width: 1000px;
        margin: 0px auto; /*가운데 정렬*/
        display: flex;
        flex-direction: colume;
        
    }

     #mainWrapper > ul > li:first-child {
        text-align: center;
        font-size:14pt;
        height:40px;
        vertical-align:middle;
        line-height:30px;
} 

    #ulTable {margin-top:30px;}

    #ulTable > li:first-child > ul > li {
        background-color:#c9c9c9;
        font-weight:bold;
        text-align:center;
}
    #ulTable > li > ul {
        clear:both;
        padding:0px auto;
        position:relative;
        min-width:40px;
}
    #ulTable > li > ul > li { 
        float:left;
        font-size:10pt;
        border-bottom:1px solid silver;
        vertical-align:baseline;
}    

   li {
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

    #divPaging {
        clear:both; 
        margin:0 auto; 
        width:220px; 
        height:50px;
}
    
    #divPaging > div {
        float:left;
        width: 50px;
        margin: auto;
        text-align:left;
}
 .site-footer{
 	position: absolute;
 }

    #liSearchOption {clear:both;}
    #liSearchOption > div {
        margin:0 auto; 
        margin-top: 30px; 
        width:auto; 
        height:100px;

}

    .left {
        text-align : left;
        width: 60%;
        padding: 10px;
        
        
}
#table_search{
  margin-right: 100px;
}
#recent{
 border: thick; color: green;
}

.QnAlist{
padding: 10px;
width: 10%;

/* width:  */
}
a{
width: 5%;
text-decoration: none;
}

ul.qnaList_1{
 border-bottom: 1px solid silver;
}


</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
$(function() {

	$('#menu > li').mouseover(function() {
		var menu_i = $(this).index();
		console.log("@@@@@" + menu_i);

		if (menu_i == 2) {
			$('.menu_pan').css({
				display : 'none'
			}).eq($(this).index() - 3).css({
				display : 'block'
			});
		} else {
			// 추가된 코드
			$('.menu_pan').css({
				display : 'none'
			});
		}
	});

	$('#menu').mouseleave(function() {
		$('.menu_pan').css({
			display : 'none'
		});
	});

	$('.menu_pan').mouseover(function() {
		$('.menu_pan').eq($(this).index() - 3).css({
			display : 'block'
		});
	});

	$('.menu_pan').mouseleave(function() {
		$('.menu_pan').eq($(this).index() - 3).css({
			display : 'none'
		});
	});
});
</script>


</head>
<body>

<nav class="main-nav overlay clearfix">
	<a class="blog-logo" href="./Main.mm"><img style="width: 70px;" src="./img/logo.png" alt="Fashion Critiques"/></a>
	<ul id="menu" style="
    width: 95%;
">	
	    <ul style="margin-left: 41%;">
		<li class="nav-home nav-current"><a href="movieList.mv">영화</a></li>
		<li class="nav-article-example"><a href="Booking.bk">예매</a></li>
		<li class="nav-about-us" style="margin-bottom: 20px;"><a href="#">극장</a></li>
		<li class="nav-author-page" role="presentation"><a href="Bonus.me">혜택</a></li>
		</ul>
	<span class="socialheader">
	

  	  
  		
		<li><a href="MyPage.me">마이페이지</a></li>
		<li><a href="LogoutAction.me">로그아웃</a></li>
	
	
	
		<li><a href="./AdminPage.mm">관리자</a></li>
	

	</span>
	</ul>
	
	<div class="menu_pan">
		<div class="sub_menu">
			<div class="screen_zone">
				<a>서울</a>
				<div>
					<a href="./Screen.sc?Sc_num=02_1" title="강남">강남점</a>
				</div>
				<div>
					<a href="./Screen.sc?Sc_num=02_2" title="명동">명동점</a>
				</div>
			</div>
		</div>

		<div class="sub_menu">
			<div class="screen_zone">
				<a>대구</a>
				<div>
					<a href="./Screen.sc?Sc_num=053_1" title="대구수성">수성점</a>
				</div>
				<div>
					<a href="./Screen.sc?Sc_num=053_2" title="대구현대">현대점</a>
				</div>
			</div>
		</div>

		<div class="sub_menu">
			<div class="screen_zone">
				<a>대전</a>
				<div>
					<a href="./Screen.sc?Sc_num=042_1" title="대전탄방">탄방점</a>
				</div>
				<div>
					<a href="./Screen.sc?Sc_num=042_2" title="대전가오">가오점</a>
				</div>
			</div>
		</div>
		<div class="sub_menu">
			<div class="screen_zone">
				<a>부산</a>
				<div>
					<a href="./Screen.sc?Sc_num=051_1" title="부산서면">서면점</a>
				</div>
				<div>
					<a href="./Screen.sc?Sc_num=051_2" title="부산해운대">해운대점</a>
				</div>
			</div>
		</div>

		<div class="sub_menu">
			<div class="screen_zone">
				<a>광주</a>
				<div>
					<a href="./Screen.sc?Sc_num=062_1" title="대구수성">광주점</a>
				</div>
				<div>
					<a href="./Screen.sc?Sc_num=062_2" title="대구현대">용봉점</a>
				</div>
			</div>
		</div>

	</div>
	
</nav>



<div id="mainWrapper">

<%-- <jsp:include page="../inc/adminCenter.jsp"/> --%>
  <div>
 <h2>문의사항</h2> 	 
 
  <hr>

		    <!-- <li>번호</li> -->
		  <!--   <li>제목</li> -->
		    <!-- <li>작성자</li> -->
		<!--     <li>등록일</li> -->
		<div class="qnaContent" style="height: 340px;">
		<c:forEach var="dto" items="${qnaList }">    
		<c:if test="${dto.mem_id eq sessionScope.mem_id }">
			  <ul class="qnaList_1" style="width: 1100px">
				<%-- <li>${dto.q_num }</li> --%>
				<li class="left" >
					<a href="./QnaContentAction.qa?Q_num=${dto.q_num }&pageNum=${pageNum}">${dto.mem_subject }</a>
				</li>				
			   
			   <%--  <li>${dto.mem_id }</li> --%>
			    <li class="QnAlist" >${dto.mem_id }</li>
			    <li style="padding: 10px; width: 20%;">${dto.q_date }</li>
	       <li class="QnAlist"><a href="./QnaUpdateAction.qa?Q_num=${dto.q_num }&pageNum=${pageNum}" style="text-decoration: none;" id="btn33">수정</a>
	          <a href="./QnaDeleteAction.qa?Q_num=${dto.q_num }&pageNum=${pageNum}" style="text-decoration: none;" id="btn33">삭제</a></li>
		
			 </ul>
 		</c:if>
	    </c:forEach>
	    
	    <c:forEach var="dto" items="${qnaList }">    
		<c:if test="${sessionScope.id eq 'admin' }">
			  <ul class="qnaList_1" style="width: 1100px">
				<%-- <li>${dto.q_num }</li> --%>
				<li class="left" >
					<a href="./QnaContentAction.qa?Q_num=${dto.q_num }&pageNum=${pageNum}">${dto.mem_subject }</a>
				</li>				
			   
			   <%--  <li>${dto.mem_id }</li> --%>
			    <li class="QnAlist" >${dto.mem_id }</li>
			    <li style="padding: 10px; width: 20%;">${dto.q_date }</li>
	       <li class="QnAlist"><a href="./QnaUpdateAction.qa?Q_num=${dto.q_num }&pageNum=${pageNum}" style="text-decoration: none;" id="btn33">수정</a>
	          <a href="./QnaDeleteAction.qa?Q_num=${dto.q_num }&pageNum=${pageNum}" style="text-decoration: none;" id="btn33">삭제</a></li>
		
			 </ul>
 		</c:if>
	    </c:forEach>
	    </div>
	    <br>
	 <div align="right"  class="btngreen">
          <a href="./QnaWrite.qa" class="btn22">글쓰기</a>
      </div>
	
	<div id="page_control" align="center">
	
	    <c:if test="${startPage > pageBlock }">
			<a href="./QnaListAction.qa?pageNum=${startPage-pageBlock }">이전</a>
		</c:if>
		
		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
			<a href="./QnaListAction.qa?pageNum=${i }">${i }</a>
		</c:forEach>
		
		<c:if test="${endPage < pageCount }">
			<a href="./QnaListAction.qa?pageNum=${startPage+pageBlock }">다음</a>
		</c:if>
	</div>
	</div>


  </body>

<footer class="site-footer clearfix">
	<a href="#top" id="back-to-top" class="back-top"></a>
	<div class="text-center">
		 	<a>안영화세요</a><br>
		 	<a href="./NoticeListAction.no"><span class="notice1">공지사항</span></a>
			 <a href="./QnaListAction.qa"><span class="notice1">고객센터</span></a><br>
			 Copyright &copy;<script>document.write(new Date().getFullYear());</script>
			All rights reserved
	</div>
	</footer>

</html>