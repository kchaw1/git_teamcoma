<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
button {
	font-size: inherit;
	margin: 7px 0.25em;
	padding: 0.25em 0.5em;
	background-color: #555;
	color: #fff;
	border: 0;
	transition: background-color 0.4s, color 0.4s; &: hover {
	background-color : #bbb;
	color: #000;
}

}
.grid-wrap {
	display: grid;
	height: 100vh;
	grid-template-rows: 90px repeat(18, 1fr) 90px;
	/* 화면을 18칸의 행으로 쪼갠다. 맨위와 맨 아래 90px의 트랙을 준다 */
	grid-template-columns: 90px repeat(18, 1fr) 90px;
	/* 화면을 18칸의 열로 쪼갠다. 양옆에 90px의 트랙을 준다 */
	overflow: hidden;
	background-image: url(https://source.unsplash.com/1Rm9GLHV0UA/1600x800);
	/* 배경은 원하는 이미지 주소 */
}

.detailBoardByNo {
	grid-area: 1/6/20/10;
	overflow: auto;
	width: 950px;
	height:;
	background: #232330ab;
	padding: 7px;
}

.post {
	    width: 900px;
    background: #f2f2f2d4;
    overflow: auto;
    height: auto;
}

.boardAticleWrtier {
	padding: 2px;
	background: #f2f2f2d4;
	color: black;
}

.boardAticleTitle {
	background: #f2f2f2d4;
	color: black;
}

form {
	position: relative;
	top: 4px;
	border-radius: 4px;
	width: 400px;
	height: 180px;
	margin: 0 auto;
}

form textarea {
	border-radius: 2px;
	box-shadow: 0px 2px 11px 0px rgba(0, 0, 0, 0.3);
	border: 1px solid #e2e6e6;
	margin: 10px 0 10px 0;
	font-family: 'Open Sans', sans-serif;
	outline: none;
	width: 395px;
	height: 100px;
}

form span.counter {
	float: right;
	color: #f2f2f2;
}

form p.info {
	font-size: 11px;
	color: #999;
}

form p.info>span {
	color: #fff;
}

form input[type=submit] {
	cursor: pointer;
	box-shadow: 0px 2px 11px 0px rgba(0, 0, 0, 0.3);
	border: 1px solid #A8F1FF;
	border-radius: 2px;
	background-color: #0093B0;
	color: #fff;
	float: right;
	padding: 10px;
}

​






@import
	url(https://fonts.googleapis.com/css?family=Merriweather:400,700,400italic,700italic)
	;

body {
	color: #222;
	font: 18px/1.555555555 Merriweather, serif;
	margin: 2em auto;
	width: 90%;
	max-width: 40em;
}

img {
	border: 0;
	max-width: 100%;
}

a {
	color: #19A3FF;
	text-decoration: none;
	&:
	hover
	{
	color
	:
	#47B5FF;
}

}
h1, h2, h3, h4 {
	text-rendering: optimizeLegibility;
}

.post-title {
	font-size: 3.157em;
	margin: 1em 0 0;
}

.post-subtitle {
	font-size: 1.777em;
	font-style: italic;
	margin: 0;
}

.post-meta {
	font-size: 0.777em;
	margin: 2em 0 3.5em;
}

.post-intro {
	font-size: 1.222em;
}

.post-footer {
	font-size: 0.75em;
	padding: 2em 0;
}

.post-category {
	float: left;
}

.comments-link {
	float: right;
	margin: 0;
}

.post-tags, .post-tags li {
	display: inline;
	list-style: none;
	margin: 0;
	padding: 0;
}

.post-tags li:after {
	content: ",";
}

.post-tags li:last-child:after {
	content: "";
}

figure {
	margin: 0;
}

figcaption {
	font-size: 0.75em;
	font-style: italic;
	line-height: 2em;
	text-align: center;
}
#insertComment{
	border :  2px solid black; 
	background-color: gray;
}
</style>
</head>
<body>
	<div class="grid-wrap">
		<c:import url="/jsp/common/menu.jsp" />

		<div class="detailBoardByNo">

			<article itemscope itemtype="http://schema.org/BlogPosting"
				class="post"> <header class="post-header">
			<h2 align="center">
				<c:if test="${board.bCategory== '1'}">
			  후기
			</c:if>
				<c:if test="${board.bCategory== '2'}">
			  AllAboutCook
			</c:if>
				<c:if test="${board.bCategory== '3'}">
			  입금확인*
			</c:if>

			</h2>
			<hr>
			<h2 itemprop="headline" class="post-title">글제목 :${board.bTitle}</h2>

			<hr>
			<p class="post-subtitle" itemprop="alternativeHeadline">글쓴이
				:${board.bWriter}</p>
			<hr>
			<p class="post-date" itemprop="alternativeHeadline">글쓴일시:
				${board.bRegDate}</p>
			<hr>

			</header>

			<p itemprop="description" class="post-intro"></p>

			<div itemprop="articleBody" class="post-body">
				${board.bContent}
				<figure itemscope itemtype="http://schema.org/ImageObject">
			</div>
			<hr>
			<button>
				<a href='delete.do?no=${board.bNo}'>삭제</a>
			</button>
			<button>
				<a href='updateForm.do?no=${board.bNo}'>수정</a>
			</button>
			</article>


			<!-- 댓글달기  -->	
	<div id="insertComment">
		<form method="post" action="registcomment.do">
			<input type="hidden" name="no" value="${board.bNo}" />	
			<table width="70%">
			<tr>
				<td><input type="text" name="cWriter" value="${user.nickName}" /></td>
				<td><textarea name="cContent"  rows="2" cols="60"></textarea></td>
				<td><input type="submit" value="등록" /></td>
			</tr>	
			</table>
		</form>
	</div>
	<form action="updatecomment.do" method="post">
		<input type="hidden" name="no" value="${board.bNo}" />
		<input type="hidden" name="cNo" value="${cNo}" />
	<div id="commentList">	
	  <table width='80%' border='1'>
	  <tr>
		<c:forEach var="comment" items="${commentList}">
		<c:choose>
	  		<c:when test="${cNo eq comment.cNo}">	
				<tr>
				  <td><c:out value="${comment.cWriter}" /></td>
				  <td>
				  	<textarea name="cContent" rows="2" cols="60"><c:out value="${comment.cContent}" /></textarea>
				  </td>
				  <td colspan="2">
				  	  <input type="submit" value="수정" />	
				  	  <a href="detail.do?no=${board.bNo}">취소</a>	
				  </td>
				 </tr>
		 	</c:when>
		 	<c:otherwise>
				<tr>
				  <td><c:out value="${comment.cWriter}" /></td>
				  <td>
				  		<c:out value="${comment.cContent}" /></td>
				  <td><fmt:formatDate var="regDate" value="${comment.cRegDate}" 
				                      pattern="yyyy-MM-dd HH:mm:ss" />
				      <c:out value="${cRegDate}" />
				  </td>
				  <td>
				  	<a >삭제</a>	
				  	<a href="detail.do?cNo=${comment.cNo}&no=${comment.no}">수정</a>	
				  	 
				  </td>
				 </tr>
		 	</c:otherwise>
		 </c:choose>	
		 </c:forEach>
		 <c:if test="${empty commentList}">
		 <tr>
		    <td colspan='4'>댓글이 존재하지 않습니다.</td>
		 </tr>
	 	</c:if>
	 </table>
	</div>
	</form>
</body>	
</html>