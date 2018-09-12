<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header id="header">
  <a class="site-logo" href="#">
           Logo
        </a>

  <nav role="navigation" id="nav-main" class="okayNav">
    <ul>
      <li><a href="<c:url value="/main.do" />">Home</a></li>
      <li><a href="<c:url value="/board/list.do" />" />자유게시판</a></li>
      <li><a href="#">Blog</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="<c:url value="/jsp/signup/signup.jsp" />">Sign-Up</a></li>
      <c:choose>
      <c:when test="${empty user}"> 
      <li><a href="<c:url value="/login/login-form.do" />">로그인</a></li>
      </c:when>
      <c:otherwise>
      <li><a href="<c:url value="/login/logout.do" />">로그아웃</a></li>
      </c:otherwise>
      </c:choose>
    </ul>
  </nav>
</header>
<script>
	var navigation = $('#nav-main').okayNav();
</script>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



</body>
</html>