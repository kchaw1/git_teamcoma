<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url ="/jsp/student/basiccss.jsp" />
<body>
<c:import url = "/jsp/student/menu.jsp" />
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
        <th>제목</th>
        <th>글쓴이</th>
      </tr>
    </thead>
    <tbody>
       <tr>
       <th>답변입니다</th>
        <th>운영자</th>
      </tr>
      
       <tr>
       <th>답변입니다</th>
        <th>운영자</th>
      </tr>
</body>
</body>
</html>
