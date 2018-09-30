<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core"  %>
<html>

<body>
<section class="webdesigntuts-workshop">	    
	<ul class="hsmenu">	    
		<li class="khsmenu"><a class="studentmenu" href="<c:url value ='/jsp/student/student.jsp'/>">메인으로가기</a></li>
		<li class="khsmenu"><a class="studentmenu" href="<c:url value ='/jsp/studentboard/profile.jsp'/>">프로필</a></li>
		<li class="khsmenu"><a class="studentmenu" href="<c:url value ='/jsp/studentboard/record.jsp'/>">수강한 강의</a></li>
		<li class="khsmenu"><a class="studentmenu" href="<c:url value ='/jsp/studentboard/ing.jsp'/>">수강중</a></li>
		<li class="khsmenu"><a class="studentmenu" href="<c:url value ='/jsp/studentboard/want.jsp'/>">신청내역</a></li>
		<li class="khsmenu"><a class="studentmenu" href="<c:url value ='/jsp/studentboard/comment.jsp'/>">내가 작성한 후기</a></li>	
  	</ul>
</section>

</body>
</html>
