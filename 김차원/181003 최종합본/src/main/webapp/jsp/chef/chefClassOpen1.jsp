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
<form action="<c:url value="/chef/class-open.do" />" method="post" enctype="multipart/form-data" name="mForm" onsubmit="return doAction()">
	 

  <h2>클래스 개설</h2>


	<table>
	<tr>
	<td>
	 <label for="classname">클래스 이름</label>
	 </td>
	 <td>
    <input type="text" name="classname" />
    </td>
    </tr>

	<tr>
	<td><label for="startdate">시작일</label></td>
    <td><input type="date" name="startdate" /></td>
    <td><label for="enddate">종료일</label></td>
  	<td><input type="date" name="enddate" /></td>
   </tr>
  

	<tr>
    <td><label for="starttime">시작시간</label></td>
    <td><input type="time" name="starttime" /></td>
    <td><label for="endtime">종료시간</label></td>
    <td><input type="time" name="endtime" /></td>
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
    <td><input type="text" name="classcost" /></td>
   </tr>

	<tr>
	 <td><label for="classvideo">영상 링크</label></td>
     <td><input type="text" name="classvideo" /></td>
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
   <textarea name="career"></textarea>
   <span id="locationText">
   <input id="address" type="text" name="addr" placeholder="검색할 주소(도로명, 지번)">
   <button class="cssButton" id="submit" type="button" ><strong>위치 수정</strong></button>
   </span>
   </p>
 

	<p id="classintroduce">  
    <label for="">클래스 소개</label><br>
    <textarea name="classintroduce"></textarea>
    </p>
    
    <input type="hidden" name="mapx" value="" />
	<input type="hidden" name="mapy" value=""/>
 
  	<p align="center">
    <button class="cssButton">
      <strong>클래스 개설</strong>
    </button>
    </p>
    
	



</form>


</div>
<div id="classLocation" >
</div>
</div>

<script>

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

function doAction() {
    // alert("서브밋 호출됨..")
    // 폼에 있는 데이터 체크하여 올바르지 않은 경우 return false를 반환
    var f = document.mForm
    // f.id : input창 객체
    if (f.classname.value == "") {
        f.classname.focus()
        alert("클래스명을 입력하세요")
        return false
    }
    if (f.classteacher.value == "") {
        f.classteacher.focus()
        alert("강사명을 입력하세요")
        return false
    }
    if (f.startdate.value == "") {
        f.startdate.focus()
        alert("시작일을 입력하세요")
        return false
    }
    if (f.enddate.value == "") {
        f.enddate.focus()
        alert("종료일을 입력하세요")
        return false
    }
    if (f.starttime.value == "") {
        f.starttime.focus()
        alert("시작시간을 입력하세요")
        return false
    }
    if (f.endtime.value == "") {
        f.endtime.focus()
        alert("종료시간을 입력하세요")
        return false
    }
    if (f.classcost.value == "") {
        f.classcost.focus()
        alert("수강료를 입력하세요")
        return false
    }
    if (f.classvideo.value == "") {
        f.classvideo.focus()
        alert("영상링크를 입력하세요")
        return false
    }
    if (f.addr.value == "") {
        f.addr.focus()
        alert("클래스위치를 입력하세요")
        return false
    }
    if (f.classintroduce.value == "") {
        f.classintroduce.focus()
        alert("소개글을 입력하세요")
        return false
    }
  


    return true;
}





</script>

</body>
</html>