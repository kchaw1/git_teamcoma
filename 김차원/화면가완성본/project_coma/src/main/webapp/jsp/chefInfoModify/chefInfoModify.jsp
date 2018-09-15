<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
<link rel="stylesheet" href="<c:url value="/css/chefInfoModify.css" />" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>

<div class="cell">
  <div class="content">
    <div class="Add-photo">
      <h2>쉐프 정보 수정</h2>
      <div class="Main_picture">
        <div class="picture">
          <span>첨부파일 </span>
          <input type="file" />
        </div>
      </div>
    </div>
    <div class="Tell-us">
      <div class="Main_form">
        <div class="form">
          <form method="post" action="">
            <div class="form-group">
              <label>아이디</label>   
              <div class="group">
                <input type="text" name="id">
              </div>
            </div>
            <div class="form-group">
              <label>비밀번호</label>
              <div class="group">
                <input type="password" name="password">
              </div>
            </div>
            <div class="form-group">
              <label>비밀번호 확인</label>
              <div class="group">
                <input type="password" name="checkpass">
              </div>
            </div>
            <div class="form-group">
              <label>Email</label>
              <div class="group">
                <input type="email" name="email">
              </div>
            </div>
            <div class="form-group">
              <label>이름</label>
              <div class="group">
                <input type="text" name="name">
              </div>
             
              <div class="form-group">
              <label>주소</label>
              <div class="group">
                <input type="text" name="addr">
              </div>
              <div class="form-group">
              <label>나머지 주소</label>
              <div class="group">
                <input type="text" name="addrs">
              </div>
            </div>
            <div class="form-group">
              <label>휴대폰 번호</label>
              <div class="group">
                <input type="text" name="phone">
              </div>
            </div>
            <div class="form-group">
              <label>가입분류</label>
              <div class="group">
                <select name="check">
                  <option value="0"  selected >쉐프</option>
                  <option value="1"  >수강생</option>
                  
                </select>
              </div>
            </div>
            <div class="form-group">
              <label>생년월일</label>
              <div class="group date">
        
              </div>
            </div>
             <div class="form-group">
               <div class="submit">
                 <button><a href="<c:url value="/main/main.jsp"/>">수정하기</a></button>
                 <span><a href="<c:url value="/main/main.jsp"/>">메인으로 돌아가기</a></span>
               </div>
            </div>
            
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

</body>

</html>