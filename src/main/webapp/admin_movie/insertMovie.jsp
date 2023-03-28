<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Hello Movie</title>
<style>
/* Form */

.question{width:100%;border-top:2px solid #bdbdbd;border-bottom:2px solid #bdbdbd;font-family:"NanumGothic",sans-serif;}
.question .qtit{text-align:left; margin:50px 0 10px 0;}
.question tr{border-top:1px solid #cdcdcd;}
.question tr:first-child{border-top:0;}
.question th{background:#f6f6f6; width:20%;text-align:left; padding-left:3%}
.question td{text-align:left;background:#fff;padding-top:1%!important;padding-bottom:1%!important;color:#5c5c5c;font-size:15px;line-height:26px;padding-left:3%}
.question input[type="text"],
.question select{margin-right:1%;color:#5c5c5c;line-height:12px;font-size:14px;font-family:"NanumGothic",sans-serif;background:#f6f6f6;vertical-align:middle;border:1px solid #cdcdcd;padding:1%;}
.question select{padding:0.9%;}
.question textarea{vertical-align:middle;border:1px solid #cdcdcd; width:94%; height:100px;background:#f6f6f6;padding:1%}
.question label{margin-right:1%;}
.question .button{margin-right:1%;line-height:12px;font-size:14px;font-family:"NanumGothic",sans-serif;background:#5e5e5e;vertical-align:middle;border:1px solid #5e5e5e;padding:1%; cursor:pointer;}
.question .button a{color:#fff;}
.question .add{margin-top:1%;}
.question .wid10{width:10%;}
.question .wid20{width:20%;}
.question .wid30{width:30%;}
.question .wid53{width:49%;}

.btngreen{margin-top:30px;}
.btngreen a{width:8%;margin:0 auto;display:block;padding:0.7em 1.5em 0.8em 1.5em;font-size:16px;color:#fff;border:1px solid #008d2d;border-radius:2em;background:#008d2d; text-align:center;letter-spacing:-0.5px; font-weight:bold;}
.btngreen a:hover{background:#fff;color:#008d2d;}
</style>
<meta name="description" content="Thoughts, reviews and ideas since 1999."/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" type="text/css" href="assets/css/screen.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic|Playfair+Display:400,700,400italic,700italic"/>
</head>
<body class="home-template">
<div class="site-wrapper">
	<header>
<jsp:include page="/inc/top.jsp"/>
				<span></span><span></span><span></span>
	<a class="scroll-down icon-arrow-left" href="#content" data-offset="-45"><span class="hidden">Scroll Down</span></a>
	</header>
	<main id="content" class="content" role="main">
	<!-- Form -->
<table class="question">
    <caption class="qtit"><h2>영화 등록</h2></caption>
    
    <form action="./MovieAddAction.mm" method="post" enctype="multipart/form-data">
   
       <!--  <tr>
            <th class="th" scope="row">영화코드</th>
            <td><input type="text"  name="M_num" />
            </td>
        </tr> -->
        <tr>
            <th class="th" scope="row">제목</th>
            <td><input type="text"  name="M_name" />
            </td>
        </tr>
         <tr>
			<th class="th" scope="row">장르</th>
			<td class="left">
     <select name="M_type">
			  		<option value="Thriller">공포</option>
			  		<option value="Romance">로맨스</option>
			  		<option value="Comedy">코미디</option>
			  		<option value="RomCom">로맨틱코미디</option>
			  		<option value="Mystery">미스터리</option>
			  		<option value="Adventure">모험</option>
			  		<option value="Animation">애니메이션</option>
			  		<option value="Heist">범죄</option>
			  		<option value="Documentary">다큐</option>
			  		<option value="Fantasy">판타지</option>
			  		<option value="Action">액션</option>
			  		<option value="Noir">누와르</option>
			  		<option value="Drama">드라마</option>
			  </select>
			  </td>
	    </tr>
        <tr>
            <th class="th" scope="row">시간</th>
            <td><input type="text"  name="M_runTime" />
            </td>
        </tr>
        <tr>
            <th class="th" scope="row">감독</th>
            <td><input type="text"  class="wid20" name="M_director" />
            </td>
        </tr>
        <tr>
            <th class="th" scope="row">관람등급</th>
            <td><input type="text"  class="wid20" name="M_age" />
            </td>
        </tr>
        <tr>
            <th class="th" scope="row">배우</th>
            <td><input type="text"  class="wid20" name="M_actor" />
            </td>
        </tr>
        <tr>
            <th class="th" scope="row">메인이미지</th>
            <td><input type="file"  class="wid20" name="M_img"/>
            </td>
        </tr>
        <tr>
            <th class="th" scope="row">개봉일</th>
            <td><input type="date"  class="wid20" name="M_playDate" />
            </td>
        </tr>
        <tr>
            <th class="th" scope="row">설명</th>
            <td><input type="text"  class="wid20" name="M_explain" />
            </td>
        </tr>
        <tr>
            <th class="th" scope="row">평점</th>
            <td><input type="text"  class="wid20" name="M_grade" />
            </td>
        </tr>
        <tr>
            <th class="th" scope="row">예매율</th>
            <td><input type="text" class="wid20" name="M_reservationRate" />
            </td>
        </tr>
        
        
  </table>
           
      <div class="btngreen">
          <input type ="submit" class="btngreen" value="영화등록">
      </div>
      <div class="btngreen">
          <a href="/AdminMovieList.mm" class="Btn">취소</a>
      </div>
    </form>
<!-- //Form -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="assets/js/masonry.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.fitvids.js"></script>
<script type="text/javascript" src="assets/js/index.js"></script>
</body>
</html>