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
        <li>로그인</li>
        <li>회원가입</li>
        <li><a href="<c:url value="/jsp/chefIntroduce/chefIntroduce.jsp" />">쉐프 소개</a></li>
        <li><a href="<c:url value="/jsp/classfind/classfind.jsp" />">클래스 찾기</a></li>
        <li>게시판</li>
        <li><a href="<c:url value="/jsp/chefMain/chefMain.jsp" />">개인 페이지</a></li>
      </ul>  
    </nav>
 
</div>

