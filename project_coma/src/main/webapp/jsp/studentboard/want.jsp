<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url = "/jsp/student/basiccss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
</head>
<body>
<div class="grid-wrap">
<c:import url = "/jsp/student/menu.jsp" />
<c:import url="/jsp/common/menu.jsp" />

<main class="studentboard">
	<p>	<p>  <div class="table-wrapper">
    <div class="pagination">
    <button class="backward" id="first">first</button>
    <button class="backward" id="prev">previous</button>
    <button class="forward" id="next">next</button>
    <button class="forward" id="last">last</button>
    <div class="page-numbers" id="pageNumbers"></div>
  </div>
    <table id="paginatedTable">
    <thead>

      <tr>
        <th>글 번호</th>
        <th>신청한 강의</th>
        <th>모집인원</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>ㅇㅇㅇ의 참 쉽죠?</td>
        <td>20</td>
   
      </tr>
      <tr>
       	<td>2</td>
        <td>최현석의 허세</td>
        <td>25</td>
      </tr></p>
</div>
</body>
</html>