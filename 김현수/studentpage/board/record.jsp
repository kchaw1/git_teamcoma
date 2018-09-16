<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url = "/studentpage/student/basiccss.jsp" />
</head>
<body>
<c:import url = "/studentpage/student/menu.jsp" />
<main>
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
        <th>수료한 강의</th>
        <th>종료 시기</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>ㅇㅇㅇ의 요리교실</td>
        <td>2018-09-11</td>
   
      </tr>
      <tr>
        <td>2</td>
        <td>백종원 처럼 되고 싶나?</td>
        <td>2018-11-28</td>
      </tr></p>
</main>
</body>
</html>