<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core"  %>
<html>
<body>
<nav>
	<ul id="studentmenu">
		<li><a href = "<c:url value ='/jsp/student/student.jsp'/>">MyPage</a></li>
		<li>
			<h3><a href ="<c:url value ='/jsp/studentboard/profile.jsp'/>">프로필</a></h3>
		<li>
			<h3><a href ="<c:url value ='/jsp/studentboard/record.jsp'/>">강의 이력</a></h3>
			<div>
				<h4><a href ="<c:url value ='/jsp/studentboard/ing.jsp'/>">수강중</a></h4>
				<h4><a href ="<c:url value ='/jsp/studentboard/want.jsp'/>">신청내역</a></h4>
			</div>
		</li>
		<li>
			<h3><a href ="<c:url value ='/jsp/studentboard/write.jsp'/>">내가 작성한 후기</a></h3>
			<div>
				<h4>Brands</h4>
			</div>
			<div>
				<h4><a href ="<c:url value ='/jsp/studentboard/comment.jsp'/>">내가 작성한 후기</a></h4>
				<h4><a href ="<c:url value ='/jsp/studentboard/answer.jsp'/>">내가 문의한 문의</a></h4>
				<h4><a href ="<c:url value ='/jsp/studentboard/answer1.jsp'/>">답변</a></h4>
			</div>
	
		</li>	
		</ul>
		
	<ul id="studenttemp">
		<li><a href="<c:url value ='/jsp/studentboard/profile.jsp'/>">프로필</a></li>
		<li><a href="<c:url value ='/jsp/studentboard/record.jsp'/>">수강이력</a></li>
		<li><a href="<c:url value ='/jsp/studentboard/comment.jsp'/>">작성한 후기</a></li>
		<li><a href="<c:url value ='/jsp/studentboard/question.jsp'/>">문의하기</a></li>
	</ul>

</nav>

</body>
</html>
