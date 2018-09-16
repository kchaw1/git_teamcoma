<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <th>후기 내용</th>
        <th>추천도</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>ㅇㅇㅇ의 요리교실</td>
        <td>이 강의는 정말 좋았어요 근데 한가지 아쉬운게 재료 준비가 덜하다는점?</td>
        <td>★★★★</td>
   
      </tr>
      <tr>
       	<td>2</td>
        <td>백종원이 되어보자</td>
        <td>음...장소 준비도 그렇고 그냥 그저 그랬던거같아요</td>
        <td>★★</td>
      </tr></p>
</main>
</body>
</html>