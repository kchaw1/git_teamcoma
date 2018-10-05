<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/jsp/student/basiccss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
>

</head>
<body>
	<div class="grid-wrap">

		<c:import url="/jsp/student/menu.jsp" />
		<c:import url="/jsp/common/menu.jsp" />
			<main class="studentboard">
		<div class="boardList">
			<li class="tab">
				<div id="tab-content2" class="content">
					<h1 class="studentcomment">내가 작성한 댓글</h1>
					<br>
					<div class="table-wrapper">
						<div class="pagination">
							<button class="backward" id="first">first</button>
							<button class="backward" id="prev">previous</button>
							<button class="forward" id="next">next</button>
							<button class="forward" id="last">last</button>
							<div class="page-numbers" id="pageNumbers"></div>
						</div>
						<div class="1111">
						<table id="paginatedTable">
							<thead>
					
								<tr>
									<th>글 번호</th>
									<th>댓글 내용</th>
									<th>댓글 작성일</th>
								</tr>
							</thead>
							<c:forEach var="m" items="${list1}">
								<tr>
									<td>${m.cWriter}</td>
									<td>${m.cContent}</td>
									<td>${m.cRegDate}</td>
								</tr>
							</c:forEach>
						</table>
						</div>
					</div>
				</div>
			</li>
		</div>
		</div>
			</main>
</body>
</html>