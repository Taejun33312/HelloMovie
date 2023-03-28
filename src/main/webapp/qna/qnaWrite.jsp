<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Nectaria - Free HTML Template by WowThemes.net</title>
<style>
/* Form */

h2{
text-align: left !important;
color: black !important;
}

.site-wrapper{
 background-color: white !important;
}

#content{
padding: 10px !important;
}


.question{width:60%; border-top:5px solid #bdbdbd; border-bottom:5px solid #bdbdbd;font-family:"NanumGothic",sans-serif; margin: auto;}
.question .qtit{text-align:left; margin:100px 0 50px 0;}
.question tr{border-top:1px solid #cdcdcd;}
.question tr:first-child{border-top:0;}
.question th{background:#F6F6F6; width:20%;text-align:left; padding-left:3%}
.question td{text-align:left;background:#F6F6F6;padding-top:1%!important;padding-bottom:10;color:#5c5c5c;font-size:15px;line-height:20px;      linpadding-left:3%}
.question input[type="text"],
.question select{margin-right:1%;color:#5c5c5c;line-height:12px;font-size:14px;font-family:"NanumGothic",sans-serif;background: #white;vertical-align:middle;border:1px solid #cdcdcd;padding:1%;}
.question select{padding:0.9%;}
.question textarea{vertical-align:middle;border:1px solid #cdcdcd; width:94%; height:100px;background:#white;padding:1%}
.question label{margin-right:1%;}
.question .add{margin-top:1%;}
.question .wid10{width:20%;}
.question .wid20{width:50%;}
.question .wid30{width:80%;height: 300px;}

.btngreen{
    border-radius: 5px;
    margin-right: 20%;
    margin-top: 20px;
    color: black;
    line-height: 30px;
    border: 2px solid lightgrey !important;
    background: #f4f4f4;
    
    
}
.btngreen1{
    border-radius: 5px;
    color: black;
    line-height: 30px;
    border: 2px solid lightgrey !important;
    background: #f4f4f4;
 	 padding: 10px;
    
}

</style>
<meta name="description" content="Thoughts, reviews and ideas since 1999."/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="shortcut icon" href="#">
<link rel="stylesheet" type="text/css" href="assets/css/screen.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic|Playfair+Display:400,700,400italic,700italic"/>
</head>
<body class="home-template">
<div class="qWrapper">
	<header>
<jsp:include page="/inc/top.jsp"/>
	</header>
	<main id="content" class="content" role="main">
	<!-- Form -->
	
	<form action="./QnaWriteAction.qa" method="post" enctype="multipart/form-data" >
<input type="hidden" name="Mem_id" >
<table class="question">
    <caption class="qtit"><h2>1:1문의사항</h2></caption>
     <!--      <tr>
            <th class="th" scope="row">극장선택</th>
            <td><select class="wid10" title="카테고리 선택">
                <option value="극장선택">극장선택</option>
                <option value="서울">서울</option>
                <option value="대전">대전</option>
                <option value="대구">대구</option>
                <option value="부산">부산</option>
            </select>
        </tr>
      -->   <tr>
            <th class="th" scope="row">제목</th>
            <td><input type="text" title="제목" class="wid20"  name="Mem_subject" />
            </td>
        </tr>
        <tr>
            <th class="th" scope="row">공지사항</th>
            <td>
                <textarea title="공지사항" class="wid30"  placeholder="1000자 이내(2000byte)로 입력해 주세요" name="Mem_content"></textarea>
            </td>
        </tr>
        <hr>
        <tr>
            <th class="th" scope="row">첨부파일</th>
            <td>
			 <input type="file" title="첨부파일" class="wid10"  name="Q_img" />
            </td>
        </tr>
  </table>
      
         <p align="right"><input type="submit" class="btngreen" value="등록하기"></p>
     
         </form>  
		<p align="center"><a href="./QnaListAction.qa" class="btngreen1" >목록</a></p>
		
<!-- //Form -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="assets/js/masonry.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.fitvids.js"></script>
<script type="text/javascript" src="assets/js/index.js"></script>
</body>
</html>