<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<link rel ="stylesheet" href="<c:url value='/css/studentpage.css' />" />
<link rel ="stylesheet" href="<c:url value='/css/studentprofile.css' />" />

<style>

</style>
</head>
<body>
<div class="grid-wrap">
<c:import url="/jsp/common/menu.jsp" />
<c:import url = "/jsp/student/menu.jsp" />
</div>
<div class="side_wrapper">
  <section class="about-dev">
    <header class="profile-card_header">
      <div class="profile-card_header-container">
        <div class="profile-card_header-imgbox">
          <img src="http://placekitten.com/600/900" alt="Mewy Pawpins" />
        </div>
        <h1>김현수 <span>성훈이</span></h1>
      </div>
    </header>
    <div class="profile-card_about">
      <h2></h2>
      <p></p>
      <footer class="profile-card_footer">
        <div class="social-row">
       

        </div>
        <p><a class="back-to-profile" href ="<c:url value ="/jsp/studentboard/editprofile.jsp"/>">프로필 수정하기</a></p>
        <p><a class="back-to-profile" href ="<c:url value ="/jsp/student/student.jsp"/>">메인으로 가기</a></p>
      </footer>
    </div>
  </section>
</div>
</body>
</html>