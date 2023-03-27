<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello Movie</title>
<style type="text/css">
input {
font-size: 12px;
    font-weight: bold;
    text-align: left;
}    
</style>    
</head>
	
 	<c:forEach var="dateList" items="${dateList }">
			<input type="radio" name="T_date" value="${dateList.t_date }"> ${dateList.t_date }  <br>
	</c:forEach>
	</html>
