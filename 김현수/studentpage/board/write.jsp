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
	<p>  <div class="table-wrapper">
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
        <th>글 쓴이</th>
        <th>글 제목</th>
        <th>category</th>
        <th>글작성 일시</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>8</td>
        <td>오수진</td>
        <td>***선생님 클래스 너무 좋아요 ** </td>
        <td>후기</td>
        <td>2018-09-11</td>
   
      </tr>
      <tr>
        <td>7</td>
        <td>임유</td>
        <td>신당동 제빵 클래스 후기 올려욥 </td>
        <td>후기</td>
        <td>2018-09-11</td>
  
      </tr>
      <tr>
        <td>6</td>
        <td>백선생</td>
        <td>나도 백종원처럼 될수있다-특강후기 올려요 !</td>
        <td>후기</td>
        <td>2018-09-11</td>

      </tr>
      <tr>
        <td>5</td>
        <td>갓챠</td>
        <td>$$$선생님 수업 너무하네요...별로에요.</td>
        <td>후기</td>
        <td>2018-09-11</td>
 
      </tr>
      <tr>
        <td>4</td>
        <td>성훈여라</td>
        <td>정말 감사합니다. 요리치에서 탈출했어요.</td>
        <td>후기</td>
        <td>2018-07-11</td>
      </tr>
            <tr>
        <td>3</td>
        <td>파리지앵</td>
        <td>강쉐프님 집에서 느끼는 파리&&후기^^*</td>
        <td>후기</td>
        <td>2018-07-09</td>
      </tr>
            <tr>
        <td>2</td>
        <td>제빵왕킴탁구</td>
        <td>여자친구가 진짜 좋아해요(마카롱 원데이클래스 후기)</td>
        <td>후기</td>
        <td>2018-07-08</td>
      </tr>    
           <tr>
        <td>1</td>
        <td>피카츄</td>
        <td>**아버지랑 같이 수업받은 후기**강서구**</td>
        <td>후기</td>
        <td>2018-07-05</td>
      </tr></p>
</main>
</body>
</html>