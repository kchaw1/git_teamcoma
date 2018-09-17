<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

A:link {text-decoration:none; color:white;}
A:visited {text-decoration:none; color:white;}
A:active {text-decoration:none; color:white;}
A:hover {text-decoration:none; color:white;}

</style>

  <div class="logo"><a href="<c:url value="/main/main.jsp" />">CO:MA</a></div>
  <div class="menu">
    <nav>
      <ul>
        <li><a href="<c:url value="/jsp/login/login.jsp" />">로그인</a></li>
        <li><a href="<c:url value="/jsp/login/signup.jsp" />">회원가입</a></li>
        <li><a href="<c:url value="/jsp/chef/chefIntroduce.jsp" />">쉐프 소개</a></li>
        <li><a href="<c:url value="/jsp/classfind/classfind.jsp" />">클래스 찾기</a></li>
        <li><a href="<c:url value="/jsp/board/boardList.jsp" />">게시판</a></li>
        <li><a href="<c:url value="/jsp/chef/chefMain.jsp" />">쉐프 페이지</a></li>
        <li><a href="<c:url value="/jsp/student/student.jsp" />">학생 페이지</a></li>
      </ul>  
    </nav>
 
</div>

