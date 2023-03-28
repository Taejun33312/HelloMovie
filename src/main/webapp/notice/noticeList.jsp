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

hr{
 border: 2px thin #BDBDBD !important;
}

.btn11{
    border-radius: 5px;
    margin-top:5%;
    margin-right: -150px;
    color: black;
    line-height: 30px;
    border: 1px solid lightgrey !important;
    background: #f4f4f4;
    
}
.btn22{
    border-radius: 5px;
    margin-right: 15px;
    color: black;
    line-height: 40px;
    border: 1px solid lightgrey !important;
    background: #f4f4f4;
    padding: 3px;
}

#btn33{
    margin-left: 3px;
    /* color: #fff; */
    /* line-height: 30px; */
    border: 1px solid #c4c4c4;
    background: #f4f4f4;
    padding: 2px;
    border-radius: 4px;
    margin-top: 10px;
}

.btngreen{
  margin-top: 20px;
}
h2{
  text-align: left; margin-left: 50px; color: black;
  margin-top: 12%;
}

 .site-footer {
 	position: absolute;
 }

    body{
    margin:auto;
    width: auto;
    background-color: white;
        line-height:3em;        
        font-family:"맑은 고딕";
}
    ul, li{ 
        list-style:none;
        text-align:center;
        padding:0;	
        margin:0;
        
}

    #mainWrapper{
        width: 1000px;
        margin-left:24%; /*가운데 정렬*/
        
        
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
        font-size:1.8rem;
        border-bottom:1px solid silver;
        vertical-align:baseline;
}    

   li {
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  padding-right: 5px;
  

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

    #liSearchOption {clear:both;}
    #liSearchOption > div {
        margin:0 auto; 
        margin-top: 30px; 
        width:auto; 
        height:100px;

}



    .left {
        text-align : left;
        
}
#table_search{
  margin-right:16%;
}
#recent{
 border: thick; color: green;
}
#page_control{
   margin-bottom: 30px;
}

html{
	    max-height: 0%;
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

<!-- header  -->
	<nav class="main-nav overlay clearfix">
	<a class="blog-logo" href="./Main.mm"><img style="width: 70px;" src="./img/logo.png" alt="Fashion Critiques"/></a>
	<ul id="menu">	
		<li class="nav-home nav-current"><a href="movieList.mv">영화</a></li>
		<li class="nav-article-example"><a href="Booking.bk">예매</a></li>
		<li class="nav-about-us" ><a href="#">극장</a></li>
		<li class="nav-author-page" role="presentation"><a href="Bonus.me">혜택</a></li>
		
	<span class="socialheader">
	<c:if test="${id == null }">
		<li><a href="Login.me">로그인</a></li>
		<li><a href="Join.me">회원가입</a></li>
	</c:if>

  	<c:if test="${id != null }">  
  		<%-- <li><a>	${dto.mem_name }님 </a></li> --%>
		<li><a href="MyPage.me">마이페이지</a></li>
		<li><a href="LogoutAction.me">로그아웃</a></li>
	</c:if>
	
	<c:if test="${id != null && id.equals('admin') }">
		<li><a href="./AdminPage.mm">관리자</a></li>
	</c:if>

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

<!-- header  -->


<div id="mainWrapper">
<%-- <jsp:include page="../inc/adminCenter.jsp"/> --%>

<ul>
 <h2>공지사항</h2>
  <li>
 	<div align= "right" id="table_search">
	  <form action="./NoticeSearchAction.no" method="post">
		<input type="text" name="search" class="input_box" >
		<input type="submit" value="검색" class="btn11">
	  </form>
	</div>
  </li>
  </ul>
	<ul id="ulTable">
		<li>
		  <ul>
		    <!-- <li>번호</li> -->
		  <!--   <li>제목</li> -->
		    <!-- <li>작성자</li> -->
		<!--     <li>등록일</li> -->
		  </ul> 
		</li>

		<c:forEach var="dto" items="${noticeList }">    
			<li>
			  <ul>
			<%-- 	<li>${dto.no_num }</li> --%>
				<li class="left"  style=" width: 750px">
					<a href="./NoticeContentAction.no?No_num=${dto.no_num }&pageNum=${pageNum}" style="text-decoration: none;">${dto.no_title }</a>
				</li>				
			   <%--  <li>${dto.mem_id }</li>   --%>
			    <li>${dto.no_date }</li>	
			  <%
			  String id = (String)session.getAttribute("id");

		  	  if(id != null){
		  	  if(id.equals("admin")){
  	%>
	       <li><a href="./NoticeUpdateAction.no?No_num=${dto.no_num }&pageNum=${pageNum} " style="text-decoration: none;" id="btn33">수정</a>
	          <a href="./NoticeDeleteAction.no?No_num=${dto.no_num }&pageNum=${pageNum}" style="text-decoration: none;" id="btn33">삭제</a></li>
  	<%
  	 		 	}
  			  }
  	%> 
			    </ul>
			  </li> 
	    </c:forEach>
 
  
  	  <%
			  String id = (String)session.getAttribute("id");

		  	  if(id != null){
		  	  if(id.equals("admin")){
  	%>
	  <div align="right" class="btngreen">
          <a href="./NoticeWrite.no" class="btn22" value="글쓰기">글쓰기</a>
      </div>
		<%
  	 		 	}
  			  }
  	%> 
	<div id="page_control">
	    <c:if test="${startPage > pageBlock }">
			<a href="./NoticeListAction.no?pageNum=${startPage-pageBlock }&search=${search}">이전</a>
		</c:if>
	<c:choose>
	<c:when test="${search eq null }">
		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
			<a href="./NoticeListAction.no?pageNum=${i }&search=${search}">${i }</a>
		</c:forEach>
	</c:when>
	<c:otherwise>
		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
			<a href="./NoticeListAction.no?pageNum=${i }&search=${search}">${i }</a>
		</c:forEach>
	</c:otherwise>
	</c:choose>
		<c:if test="${endPage < pageCount }">
			<a href="./NoticeListAction.no?pageNum=${startPage+pageBlock }&search=${search}">다음</a>
		</c:if>
	</div>
	</ul>
</div>
</body>

<jsp:include page="../inc/footer.jsp"/>
</html>