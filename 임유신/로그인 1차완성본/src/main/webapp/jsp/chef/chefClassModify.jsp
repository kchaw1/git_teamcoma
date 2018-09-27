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
<link rel="stylesheet" href="<c:url value="/css/chefClassOpen1.css" />" />
<title>Insert title here</title>
</head>
<body>

<div class="grid-wrap">
<c:import url="/jsp/common/menu.jsp" />
<div id="chefOpenClass"> 
<form action="#" method="post" id="apptForm">
 
<div class="header row">  
  <h2 class="">클래스 정보 수정</h2>
</div><!-- row -->

<div class="row">
	<div class="inputs date col-4">
	 <label for="className">클래스 이름</label><br>
    <input type="text" name="className" /><br>
	</div>
  
  <div class="inputs date col-4">
 
  
    <label for="">시작일</label><br>
    <input type="date" name="startdate" /><br>
    
    <label for="">종료일</label><br>
    <input type="date" name="enddate" /><br>
  </div>

  <div class="inputs time col-4">
    <label for="">시작시간</label><br>
    <input type="time" name="starttime" /><br>
    <label for="">종료시간</label><br>
    <input type="time" name="endtime" /><br>
  </div>

  <div class="inputs time-zone col-4">
    <label for="">종류</label><br>
    <select>
      <option>한식</option>
      <option>일식</option>
      <option>중식</option>
      <option>양식</option>
    </select>
  </div>
    
</div><!-- row -->

<div class="row">  
  
  <div class="inputs contact col-6">
    <label for="classPrice">수강료</label><br>
    <input type="text" name="classPrice" />
  </div>
  


</div><!-- row -->  
  
<div class="row">  
  
  <div class="inputs message col-12">
    <label for="">클래스 소개</label><br>
    <textarea name="classintroduce"></textarea>
  </div>
  
</div><!-- row --> 

<div class="row">  
  <div class="col-12">
    <button type="submit">
      <strong>수정</strong>
    </button>
  </div>
</div><!-- row -->  




</form>
</div>
<div id="classLocation" >
</div>
<div id="classLocationModify" >
<button>위치 수정</button>
</div>


</div>


<script>
//retrieve the form element, assuming it exists as "<div id="signup">

var apptForm = document.getElementById("apptForm");
var contactNumber = document.getElementById("contactNumber");

apptForm.addEventListener('submit', function (event) {
    if (validator.isPhoneNumber(contactNumber.value)) {
      contactNumber.className = "valid";
      contactNumber.style.borderColor = "lightgreen";
    } else {
      contactNumber.className = "invalid";
      contactNumber.style.borderColor = "red";
    }
    // stop the event from its default action: submitting the form (for our validation, submission is not desired)
    event.preventDefault();
});

var map = new naver.maps.Map('classLocation');
var myaddress = '서울특별시 강남구 테헤란로5길 11';// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
naver.maps.Service.geocode({address: myaddress}, function(status, response) {
    if (status !== naver.maps.Service.Status.OK) {
        return alert(myaddress + '의 검색 결과가 없거나 기타 네트워크 에러');
    }
    var result = response.result;
    // 검색 결과 갯수: result.total
    // 첫번째 결과 결과 주소: result.items[0].address
    // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
    var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
    map.setCenter(myaddr); // 검색된 좌표로 지도 이동
    // 마커 표시
    var marker = new naver.maps.Marker({
      position: myaddr,
      map: map
    });
    // 마커 클릭 이벤트 처리
    naver.maps.Event.addListener(marker, "click", function(e) {
      if (infowindow.getMap()) {
          infowindow.close();
      } else {
          infowindow.open(map, marker);
      }
    });
    // 마크 클릭시 인포윈도우 오픈
    var infowindow = new naver.maps.InfoWindow({
        content: '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
    });
});
</script>

</body>
</html>