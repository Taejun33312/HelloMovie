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

.btn{
color: black; 
}

h2{
  text-align: left; margin-left: 50px; color: black;
}



    body{
    margin:auto;
    width: 800px;
    background-color: white;
        line-height:2em;        
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
        margin: 200px auto; /*가운데 정렬*/
        
        
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
  margin-right: 100px;
}
#recent{
 border: thick; color: green;
}

</style>

</head>
<body>
	<div class="main-nav overlay clearfix">
	<jsp:include page="../inc/top.jsp"/>
		</div>


<div id="mainWrapper">
<%-- <jsp:include page="../inc/adminCenter.jsp"/> --%>
 <ul>
 <h2>문의사항</h2> 	 
  <hr>
  
  
  <li>

	<ul id="ulTable">
		<li>
		  <ul>
		    <!-- <li>번호</li> -->
		  <!--   <li>제목</li> -->
		    <!-- <li>작성자</li> -->
		<!--     <li>등록일</li> -->
		  </ul> 
		</li>
		<c:forEach var="dto" items="${qnaList }">    
		<c:if test="${dto.mem_id eq sessionScope.mem_id }">
			<li>
			  <ul>
				<%-- <li>${dto.q_num }</li> --%>
				<li class="left" style=" width: 650px">
					<a href="./QnaContentAction.qa?Q_num=${dto.q_num }&pageNum=${pageNum}">${dto.mem_subject }</a>
				</li>				
			   
			   <%--  <li>${dto.mem_id }</li> --%>
			    <li style="padding-right: 10px" >${dto.mem_id }</li>
			    <li>${dto.q_date }</li>
	       <li><a href="./QnaUpdateAction.qa?Q_num=${dto.q_num }&pageNum=${pageNum}" style="text-decoration: none;" >수정</a>
	          <a href="./QnaDeleteAction.qa?Q_num=${dto.q_num }&pageNum=${pageNum}" style="text-decoration: none;" >삭제</a></li>
		
			 </ul>
			 </li> 
 		</c:if>
	    </c:forEach>
	    
		<c:forEach var="dto" items="${qnaList }">    
		<c:if test="${sessionScope.id eq 'admin' }">
			<li>
			  <ul>
				<%-- <li>${dto.q_num }</li> --%>
				<li class="left" style=" width: 650px">
					<a href="./QnaContentAction.qa?Q_num=${dto.q_num }&pageNum=${pageNum}">${dto.mem_subject }</a>
				</li>				
			   
			   <%--  <li>${dto.mem_id }</li> --%>
			    <li style="padding-right: 10px" >${dto.mem_id }</li>
			    <li>${dto.q_date }</li>
	       <li><a href="./QnaUpdateAction.qa?Q_num=${dto.q_num }&pageNum=${pageNum}" style="text-decoration: none;" >수정</a>
	          <a href="./QnaDeleteAction.qa?Q_num=${dto.q_num }&pageNum=${pageNum}" style="text-decoration: none;" >삭제</a></li>
		
			 </ul>
			 </li> 
 		</c:if>
	    </c:forEach>
 		
 		
	  <div align="right" class="btngreen">
          <a href="./QnaWrite.qa" class="btn" value="글쓰기">글쓰기</a>
      </div>
		
	<div id="page_control">
	
	    <c:if test="${startPage > pageBlock }">
			<a href="./QnaListAction.qa?pageNum=${startPage-pageBlock }">Prev</a>
		</c:if>
		
		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
			<a href="./QnaListAction.qa?pageNum=${i }">${i }</a>
		</c:forEach>
		
		<c:if test="${endPage < pageCount }">
			<a href="./QnaListAction.qa?pageNum=${startPage+pageBlock }">Next</a>
		</c:if>
	</div>
	</ul>
</article>

<!-- 푸터들어가는 곳 -->
<footer>
<hr>

<jsp:include page="../inc/footer.jsp"/>
</footer>
<!-- 푸터들어가는 곳 -->

</body>
</html>