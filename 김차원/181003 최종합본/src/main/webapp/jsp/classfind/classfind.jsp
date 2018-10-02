<%@page import="teamcoma.repository.domain.ClassInfo"%>
<%@page import="teamcoma.common.db.MyAppSqlConfig"%>
<%@page import="teamcoma.repository.mapper.ClassInfoMapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.grid-wrap {
	display: grid;
	height: 100vh;
	grid-template-rows: 90px repeat(18, 1fr) 90px;
	/* 화면을 18칸의 행으로 쪼갠다. 맨위와 맨 아래 90px의 트랙을 준다 */
	grid-template-columns: 90px repeat(18, 1fr) 90px;
	/* 화면을 18칸의 열로 쪼갠다. 양옆에 90px의 트랙을 준다 */
	overflow: hidden;
	background-image: url(https://source.unsplash.com/R3LcfTvcGWY/1600x800);
	/* 배경은 원하는 이미지 주소 */
}

body {
	margin: 0px;
	background: #f2f2f2;
	font-family: 'proxima-nova-soft', sans-serif;
	font-size: 14px;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

#classListTitle {
	grid-area : 2/6/2/11;
	color:white;
}

.post-module {
	position: relative;
	z-index: 1;
	display: block;
	background: #FFFFFF;
	min-width: 100px;
	height: 470px;
	-webkit-box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.15);
	box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.15);
	-webkit-transition: all 0.3s linear 0s;
	-moz-transition: all 0.3s linear 0s;
	-ms-transition: all 0.3s linear 0s;
	-o-transition: all 0.3s linear 0s;
	transition: all 0.3s linear 0s;
}

.post-module:hover, .hover {
	-webkit-box-shadow: 0px 1px 35px 0px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0px 1px 35px 0px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 1px 35px 0px rgba(0, 0, 0, 0.3);
}

.post-module:hover .thumbnail img, .hover .thumbnail img {
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	transform: scale(1.1);
	opacity: 0.6;
}

.post-module .thumbnail {
	background: #000000;
	height: 210px;
	overflow: hidden;
}

.post-module .thumbnail img {
	display: block;
	width: 130%;
	-webkit-transition: all 0.3s linear 0s;
	-moz-transition: all 0.3s linear 0s;
	-ms-transition: all 0.3s linear 0s;
	-o-transition: all 0.3s linear 0s;
	transition: all 0.3s linear 0s;
}

.post-module .post-content {
	position: absolute;
	top: 50%;
	bottom: 0;
	background: #FFFFFF;
	width: 100%;
	padding: 30px;
	-webkti-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all 0.3s cubic-bezier(0.37, 0.75, 0.61, 1.05) 0s;
	-moz-transition: all 0.3s cubic-bezier(0.37, 0.75, 0.61, 1.05) 0s;
	-ms-transition: all 0.3s cubic-bezier(0.37, 0.75, 0.61, 1.05) 0s;
	-o-transition: all 0.3s cubic-bezier(0.37, 0.75, 0.61, 1.05) 0s;
	transition: all 0.3s cubic-bezier(0.37, 0.75, 0.61, 1.05) 0s;
}

.post-module .post-content .category {
	position: absolute;
	top: -34px;
	left: 0;
	background: #e74c3c;
	padding: 10px 15px;
	color: #FFFFFF;
	font-size: 14px;
	font-weight: 600;
	text-transform: uppercase;
}

.post-module .post-content .title {
	margin: 0;
	padding: 0 0 10px;
	color: #333333;
	font-size: 26px;
	font-weight: 700;
}

.post-module .post-content .sub_title {
	margin: 0;
	padding: 0 0 20px;
	color: #e74c3c;
	font-size: 20px;
	font-weight: 400;
}

.post-module .post-content .description {
	display: none;
	color: #666666;
	font-size: 14px;
	line-height: 1.8em;
}

.post-module .post-content .post-meta {
	margin: 30px 0 0;
	color: #999999;
}

.post-module .post-content .post-meta .timestamp {
	margin: 0 16px 0 0;
}

.post-module .post-content .post-meta a {
	color: #999999;
	text-decoration: none;
}

.hover .post-content .description {
	display: block !important;
	height: auto !important;
	opacity: 1 !important;
}

.container {
	grid-area: 1/1/15/21;
	display: flex;
}

.container:before, .container:after {
	content: '';
	display: block;
	clear: both;
}

.container .column {
	width: 19%;
	padding: 165px 38px;
	-webkti-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	float: left;
}

.container .column .demo-title {
	margin: 0 0 15px;
	color: #666666;
	font-size: 18px;
	font-weight: bold;
	text-transform: uppercase;
	color: white;
}

.container .info {
	width: 300px;
	margin: auto;
	text-align: center;
	color: white;
}

.container .info h1 {
	color: white;
	margin: 0 0 15px;
	padding: 0;
	font-size: 24px;
	font-weight: bold;
}

.container .info span {
	color: #666666;
	font-size: 12px;
}

.container .info span a {
	color: #000000;
	text-decoration: none;
}

.container .info span .fa {
	color: #e74c3c;
}
</style>
</head>
<body>
	<div class="grid-wrap">
		<c:import url="/jsp/common/menu.jsp" />
		<div id="classListTitle">
			<h1>개설중인 클래스</h1>
		</div>
		<div class="container">
		
			<div class="info">
				
			</div>
			<c:forEach var="classInfo" items="${classInfo}" varStatus="status">
				<!-- Normal -->
				<div class="column">
					<div class="demo-title">
					<c:choose>
					<c:when test="${classInfo.classClassify=='1'}">한식</c:when>
					<c:when test="${classInfo.classClassify=='2'}">일식</c:when>
					<c:when test="${classInfo.classClassify=='3'}">중식</c:when>
					<c:when test="${classInfo.classClassify=='4'}">양식</c:when>
					</c:choose>
					</div>
					<!-- Post-->
					<div class="post-module">
						<!-- Post Content-->
						<div class="post-content">
							<h1 class="title">${classInfo.classTeacher}</h1>
							<div class="category">${classInfo.classStartDay}~${classInfo.classEndDay}</div>
							<h1 class="title"></h1>
							<h2 class="sub_title">${classInfo.classIntroduce}</h2>
						</div>
						<!-- Thumbnail-->
						<div class="thumbnail">
							<a href="<c:url value='/chef/chef-introduce.do?classNo=${classInfo.classNo}' />">
							<img src="<c:url value="/common/file/download.do?name=${member[status.index].fileSysName}&path=${member[status.index].fileSysPath}"/>" style="width:100%; height:100%" />
							</a>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>

	<script>
$(window).load(function() {
	  $('.post-module').hover(function() {
	    $(this).find('.description').stop().animate({
	      height: "toggle",
	      opacity: "toggle"
	    }, 300);
	  });
	});
</script>
</body>
</html>