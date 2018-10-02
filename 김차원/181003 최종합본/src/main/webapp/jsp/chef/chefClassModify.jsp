<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=vbaElWnX_USKRs1fbM30&submodules=geocoder"></script>
<script src="https://codepen.io/andrewatts85/pen/MpGVee?editors=0010"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-translate/2.7.2/angular-translate.js"></script>
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<link rel="stylesheet" href="<c:url value="/css/chefClassOpen.css" />" />
<title>Insert title here</title>
</head>
<body>

<div class="grid-wrap">
<c:import url="/jsp/common/menu.jsp" />

<div id="chefOpenClass"> 
<form action="<c:url value="/chef/class-modify2.do" />" method="post" enctype="multipart/form-data">
	 <input type="hidden" name="classNo" value="${classInfo.classNo}"/>

  <h2>클래스 정보 수정</h2>


	<table>
	<tr>
	<td>
	 <label for="classname">클래스 이름</label>
	 </td>
	 <td>
    <input type="text" name="classname" value="${classInfo.className}"/>
    </td>
    <td>
	 <label for="classteacher">강사명</label>
	 </td>
	 <td>
    <input type="text" name="classteacher" value="${classInfo.classTeacher}" />
    </td>
    </tr>

	<tr>
	<td><label for="startdate">시작일</label></td>
    <td><input type="date" name="startdate" value="${classInfo.classStartDay}"/></td>
    <td><label for="enddate">종료일</label></td>
  	<td><input type="date" name="enddate" value="${classInfo.classEndDay}" /></td>
   </tr>
  

	<tr>
    <td><label for="starttime">시작시간</label></td>
    <td><input type="time" name="starttime" value="${classInfo.classStartTime}" /></td>
    <td><label for="endtime">종료시간</label></td>
    <td><input type="time" name="endtime" value="${classInfo.classEndTime}" /></td>
    </tr>
 
	<tr>
    <td>종류</td>
    <td>
    <select name="classclassify">
      <option value="1">한식</option>
      <option value="2">일식</option>
      <option value="3">중식</option>
      <option value="4">양식</option>
    </select>
    </td>
    </tr>
  
    <tr>
    <td><label for="classcost">수강료</label></td>
    <td><input type="text" name="classcost" value="${classInfo.classCost}" /></td>
   </tr>

	<tr>
	 <td><label for="classvideo">영상 링크</label></td>
     <td><input type="text" name="classvideo" value="${classInfo.classVideo}" /></td>
	</tr>
	</table>
	<p> 
          이력첨부
    
    <input type="file" name="classattach1" value="1" />
         클래스 사진
    <input type="file" name="classattach2" value="2"/>
    </p>
 
 <p>
 	이력<br>
   <textarea name="career">${classInfo.classCareer}</textarea>
   </p>
   <p align="right">
   <input id="address" type="text" name="addr" value="${classInfo.classLocation}">
   <button class="cssButton" id="submit" type="button" ><strong>위치 수정</strong></button>
   </p>

	<p>  
    <label for="">클래스 소개</label><br>
    <textarea name="classintroduce">${classInfo.classIntroduce}</textarea>
    </p>
    
    <input type="hidden" name="mapx" value="${classInfo.classLatitude}" />
	<input type="hidden" name="mapy" value="${classInfo.classLongtitude}"/>
 
  	<p align="center">
    <button class="cssButton">
      <strong>수정</strong>
    </button>
    </p>
    
	



</form>


</div>
<div id="classLocation" >
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

$(".cssButton").click(function () {
		
	$.ajax({
		type: "POST",
		url: "/project_coma/chef/change-map.do",
		data: "query=" + $('#address').val(),
		dataType: "json",
		success: function (point) {
			
			var map = new naver.maps.Map("classLocation", {
			    center: new naver.maps.LatLng(point.y, point.x), 
			    zoom: 10,
			    mapTypeControl: true
			});

			var marker = new naver.maps.Marker({
			    position: new naver.maps.LatLng(point.y, point.x),	
			    map: map
			});		
			
			$("input[name=mapx]").val(point.x);
			$("input[name=mapy]").val(point.y);
			
		}
	});
	
	
});





</script>

</body>
</html>