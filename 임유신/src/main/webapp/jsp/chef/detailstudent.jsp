<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-translate/2.7.2/angular-translate.js"></script>
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<link rel="stylesheet" href="<c:url value="/css/detailstudent.css" />" />
<title>Insert title here</title>
</head>
<body>

<div class="grid-wrap">
<c:import url="/jsp/common/menu.jsp" />

<div id="studentProfileTitle">
<h1>학생 상세 페이지</h1>
</div>
<div id="profilePicture">
<img src="KakaoTalk_20180906_141659362.jpg" />
</div>

<div id="studentprofile">
<table>
<tr>
<th>이름:</th>
<td>박태환</td>
</tr>
<tr>
<th>나이:</th>
<td>19</td>
</tr>
<tr>
<th>주소:</th>
<td>이수 옹기종기</td>
</tr>
<tr>
<th>이메일:</th>
<td>a@aaa.com</td>
</tr>
</table>
</div>
<div id="assessment">
학생 평가
</div>
<div id="atendance">
출석정보
</div>


</div>


</body>
</html>