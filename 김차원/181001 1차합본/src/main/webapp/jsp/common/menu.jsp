<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>

A:link {text-decoration:none; color:white;}
A:visited {text-decoration:none; color:white;}
A:active {text-decoration:none; color:white;}
A:hover {text-decoration:none; color:white;}

</style>

  <div class="logo"><a href="<c:url value="/jsp/main/main.jsp" />">CO:MA</a></div>
  <div class="menu">
    <nav>
      <ul>
         <c:choose>
       		<c:when test="${empty user}">
        <li><a href="<c:url value="/jsp/login/loginForm.jsp" />">로그인</a></li>
        	</c:when>
        	<c:otherwise>
        	<li>"${user.id}" 님 환영합니다</li>
        	<li><a href="<c:url value="/login/logout.do" />">로그아웃</a></li>
        	</c:otherwise>
      	</c:choose>
        <li><a href="<c:url value="/signup/signup1.do" />">회원가입</a></li>
        <li><a id="findclass" href="<c:url value="/classfind/classfind.do" />">클래스 찾기</a></li>
        <li><a href="<c:url value="/jsp/board/boardList.jsp" />">게시판</a></li>
        <li><a id="cheflink" href="<c:url value="/chef/chef-main.do" />">쉐프 페이지</a></li>
        <li><a id="studentlink" href="<c:url value="/jsp/student/student.jsp" />">학생 페이지</a></li>
      </ul>  
    </nav>
 
</div>

<script>
	$("#cheflink").click(function() {
				
		
		if(${user.signupClassify}==1) {
			return true;
		} else {
			alert("쉐프만 접근할 수 있는 페이지 입니다.");
			return false;
		}
	});
	
	$("#studentlink").click(function() {
		if(${user.signupClassify}==2) {
			return true;
		}  else {
			alert("학생만 접근할 수 있는 페이지 입니다.");
			return false;
		}
	});
	

	
	
</script>