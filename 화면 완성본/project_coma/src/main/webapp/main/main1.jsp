<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
<link rel="stylesheet" href="<c:url value="/css/main.css" />" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type"text/css">
A:link {text-decoration:none; color:white;}
A:visited {text-decoration:none; color:white;}
A:active {text-decoration:none; color:white;}
A:hover {text-decoration:none; color:white;}
</style>


</head>
<body>
<div class="grid-wrap slide-1">
  <div class="logo"><p>CO:MA</p></div>
  <div class="menu">
    <nav>
      <ul>
        <li><a href="<c:url value="/jsp/login/login.jsp"  />">로그인</a></li>
        <li><a href="<c:url value="/jsp/login/singup.jsp" />">회원가입</a></li>
        <li>쉐프 소개</li>
        <li>클래스 찾기</li>
        <li>게시판</li>
        <li>개인 페이지</li>
      </ul>  
    </nav>
  </div>
  <div class="article">
    <p>MyBobtis</p>
    <div class="title">
      <p class="one">여러분도 <br/>쉐프가 되어보세요</p>
      <p class="two">당신만의 <br/>쉐프를 찾아드립니다.</p>
    </div>
  </div>
  <div class="section">
    <p class="title">Section</p>
    <div class="number">
      <p class="one">01</p>
      <p class="two">02</p>
    </div>
  </div>
  <div class="image-wrap">
    <div class="image one" style="background-image:url(https://source.unsplash.com/1Rm9GLHV0UA/1600x800);"></div>
    <div class="image two" style="background-image:url(https://source.unsplash.com/R3LcfTvcGWY/1600x800);"></div>
  </div>
  <div class="pagination">
    <span class="prev">Prev</span>
    <span>/</span>
    <span class="next">Next</span>
  </div>
  <div class="play">
    <i class="ion-android-arrow-dropright-circle"></i>
  </div>
</div>

<script>
$( ".prev" ).on( "click", function() {
	  $( ".grid-wrap" ).removeClass( "slide-2" ).addClass( "slide-1" );
	});

	$( ".next" ).on( "click", function() {
	  $( ".grid-wrap" ).removeClass( "slide-1" ).addClass( "slide-2" );
	});
</script>

</body>
</html>