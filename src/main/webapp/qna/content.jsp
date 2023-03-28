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
  <h2>문의사항</h2> 	 
  <hr>
 <div id="recent"><strong>HelloMovie</strong> 문의사항을 남겨 주시면 궁금증을 빠르게 해결하실 수 있습니다. </div> 
  
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
     <td colspan="3">${dto.mem_subject }</td>
   <td>${dto.q_date }</td>
    </tr>

   <tr>
   <!-- <th>내용</th> -->
   <td colspan="3">
   ${dto.mem_content }</td>
   </tr>
  
  </table>
 	 <hr>
</div>
     <input type="button" value="목록으로" class="btn"
            onclick="location.href='./QnaListAction.qa?pageNum=${pageNum}';">    
</body>
</html>