<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel = "stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<c:url value="/css/chefMain.css" />" />
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
</head>
<body>


<div class="grid-wrap">
<c:import url="/jsp/common/menu.jsp" />
<div id = "chefMainTitle"><h1>쉐프페이지</h1></div>
<div class="chefMain">
<div class="chefMainDiv">

<nav class="chefMainNav">
  <ul>
    <li><a href="<c:url value="/chef/classinfo-select.do" />" id="about">클래스 정보</a></li> <!-- 파라미터값. 로긴한 쉐프의 회원번호를 넘기게끔 수정 -->
    <li><a href="<c:url value="/jsp/chef/chefClassOpen1.jsp" />" id="assess">클래스 개설</a></li>
    <li><a href="<c:url value="/chef/chefinfo-select.do" />" id="barriers">쉐프 개인 정보 수정</a></li>
    <li><a href="<c:url value="/chef/class-list.do" />" id="plan">클래스 개설 정보 수정</a></li>
  </ul>
</nav>
</div>
</div>
</div>
      
</body>

</html>