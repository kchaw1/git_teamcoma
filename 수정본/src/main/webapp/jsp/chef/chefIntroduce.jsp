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
<img src="<c:url value="/jsp/chef/profileimage.jpg"/>" />
</div>

<div class="classIntroduce">
클래스소개
</div>
<div class="classInfo">
클래스정보
</div>
<div class="personalHistory">
이력 <br>
</div>
<div class="youtubeLink">
<iframe width="560" height="315" src="https://www.youtube.com/embed/D4Z2nEdzkdc" frameborder="0" allowfullscreen></iframe>
</div>
<div id="classLocation" >
클래스위치

</div>
<div class="applybtn">
  <button>신청하기</button>
  </div>
</div>
<script>
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