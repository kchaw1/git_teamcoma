<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url ="/studentpage/student/basiccss.jsp" />
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
        <th>제목</th>
        <th>글쓴이</th>
      </tr>
    </thead>
    <tbody>
       <tr>
        <th>1</th>
        <th>이 강의는 언제 수료되는건가요?</th>
        <th>김현수</th>
      </tr>
      
       <tr>
        <th>2</th>
        <th>저 내일부터 강의 듣는데 준비해야할것이 어떤것이 있나요?</th>
        <th>김현수</th>
      </tr>
</body>
</body>
</html>
