<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello Movie</title>
<link rel="stylesheet" type="text/css" href="assets/css/screen.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic|Playfair+Display:400,700,400italic,700italic"/>
<style type="text/css">

h1{
   
}
#recent{
 border: thick; color: green;
}

body{
 width: 800px; margin-top: 200px; margin-left: 300px;
 background-color: white;
}
.btn{
 color: black; font-weight: bold;
}
.box1{
border: none;
}


</style>
</head>

<body>
<div id="wrap">
  <jsp:include page="../inc/top.jsp"/>
  
  <table id="notice">
  <h2>공지사항</h2> 	 
  <hr>
 <div id="recent"><strong>HelloMovie</strong> 최근 업데이트 소식을 알려드립니다</div> 
  
<%--   <tr>
   <th>글번호</th>
   <td>${dto.no_num }</td>
  </tr>
   
   <tr>
   <th>글쓴이</th>
   <td>${dto.mem_id }</td>
   </tr>
   
   <tr>
   <th>작성일</th>
   </tr> --%>
   
   <tr>
   <!--   <th>제목</th> -->
     <td colspan="3">${dto.no_title }</td>
   <td>${dto.no_date }</td>
    </tr>

   <tr>
  
   <td colspan="3">
   ${dto.no_content }</td>
   </tr>
  </table>
	 <hr>
</div>
     <input type="button" value="목록으로" class="btn"
            onclick="location.href='./NoticeListAction.no?pageNum=${pageNum}';">    
</body>
</html>