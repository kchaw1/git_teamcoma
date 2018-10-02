<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core"  %>
<html>

<body>
<section class="webdesigntuts-workshop">	    
	<ul class="hsmenu">	    
		<li class="khsmenu"><a class="studentmenu" href="<c:url value ='/jsp/student/student.jsp'/>">마이 페이지</a></li>
		<li class="khsmenu"><a class="studentmenu" href="<c:url value ='/studentboard/editprofile.do'/>">개인정보 수정하기</a></li>
		<li class="khsmenu"><a class="studentmenu" href="<c:url value ='/studentboard/ing.do'/>">수강중</a></li>
		<li class="khsmenu"><a class="studentmenu" href="<c:url value ='/studentboard/mypost.do'/>">내가 작성한 글</a></li>	
		<li class="khsmenu"><a class="studentmenu" href="<c:url value ='/studentboard/comment.do'/>">내가 작성한 댓글</a></li>
  	</ul>
</section>

</body>
</html>
