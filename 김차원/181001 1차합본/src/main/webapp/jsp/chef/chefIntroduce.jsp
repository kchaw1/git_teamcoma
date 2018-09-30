<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=vbaElWnX_USKRs1fbM30&submodules=geocoder"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<link rel="stylesheet" href="<c:url value="/css/chefIntroduce.css" />" />
</head>
<body>
<div class="grid-wrap">
<c:import url="/jsp/common/menu.jsp" />
<div class="chefIntroduceTitle">
<h1>쉐프 및 클래스 소개</h1>
</div>
<div class="profilePicture">
<img src="<c:url value="/common/file/download.do?name=${member.fileSysName}&path=${member.fileSysPath}"/>" style="width:100%; height:100%" />
</div>

<div class="classIntroduce">
${classInfo.classIntroduce}
</div>
<div class="classInfo">

클래스명: ${classInfo.className} <br>
수강료 : ${classInfo.classCost} <br>
기간 : ${classInfo.classStartDay} ~ ${classInfo.classEndDay} <br>
시간 : ${classInfo.classStartTime} ~${classInfo.classEndTime} <br>
위치 : ${classInfo.classLocation} <br>

</div>
<div class="personalHistory">
이력  <br>
${classInfo.classCareer}
</div>
<div class="youtubeLink">
<iframe width="560" height="315" src="${classInfo.classVideo}" frameborder="0" allowfullscreen></iframe>
</div>
<div id="classLocation" >
클래스위치

</div>
<div class="applybtn">
  <button type="button" id="applybtn">신청하기</button>
  </div>
</div>
<script>
var map = new naver.maps.Map("classLocation", {
    center: new naver.maps.LatLng(${classInfo.classLongtitude}, ${classInfo.classLatitude}), 
    zoom: 10,
    mapTypeControl: true
});

var marker = new naver.maps.Marker({
    position: new naver.maps.LatLng(${classInfo.classLongtitude}, ${classInfo.classLatitude}),	
    map: map
});		

$("#applybtn").click(function () {
	if(${user.signupClassify}=='1') {
		alert("학생만 신청할 수 있습니다.")
		return false;
	} else if(${user.signupClassify}=='2') {
		alert("신청되었습니다.")
		location.href="/project_coma/student/apply.do?classNo=${classInfo.classNo}"
		return true;
	} else {
		alert("비회원은 신청할 수 없습니다.")
		return false;
	}
	

})

      </script>


</body>
</html>