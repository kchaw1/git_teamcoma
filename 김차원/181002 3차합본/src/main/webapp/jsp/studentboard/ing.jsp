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

</head>
<body>
<div class="grid-wrap">

	<c:import url="/jsp/student/menu.jsp" />
	<c:import url="/jsp/common/menu.jsp" />
	<main class="studentboard">
	<div class="boardList">
		<li class="tab">
			<div id="tab-content2" class="content">
				<h1 class="studentcomment">수강중인 강의</h1>
				<br>
				<div class="table-wrapper">
					<div class="pagination">
					</div>
					<div class="1111">
						<table id="paginatedTable">
							<thead>

								<tr>
									<th>클래스이름</th>
									<th>클래스셰프</th>
									<th>시작일</th>
									<th>종료일</th>
									<th>시작시간</th>
									<th>종료시간</th>
									<th>비용</th>
									<th>위치</th>
								</tr>
							</thead>
							<c:forEach var="m" items="${list}">
								<tr>
									<th>${m.className}</th>
									<th>${m.classTeacher}</th>
									<th>${m.classStartDay}</th>
									<th>${m.classEndDay}</th>
									<th>${m.classStartTime}</th>
									<th>${m.classEndTime}</th>
									<th>${m.classCost}</th>
									<th>${m.classLocation}</th>
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