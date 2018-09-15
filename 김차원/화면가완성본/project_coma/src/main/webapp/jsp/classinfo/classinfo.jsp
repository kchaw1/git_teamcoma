<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-translate/2.7.2/angular-translate.js"></script>
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<link rel="stylesheet" href="<c:url value="/css/classinfo.css" />" />
<title>Insert title here</title>
</head>
<body>

<div class="grid-wrap">
<c:import url="/jsp/common/menu.jsp" />

<div id="classinfo">

<div id="slider">
  <a href="#" class="control_next">>></a>
  <a href="#" class="control_prev"><</a>
  <ul>
    <li><img src="food.jpg" /></li>
    <li><img src="japanesefood.jpg" /></li>
  </ul>  
</div>
<div id="studentlist">
<h1>한식클래스</h1>
<table>
<tr>
<th>학생번호</th>
<th>이름</th>
</tr>
<tr>
<td>1</td>
<td colspan="3">박태환</td>
<td><input type="button" value="상세" onClick="location.href='<c:url value="/jsp/detailstudent/detailstudent.jsp" />'" /></td>
</tr>
<tr>
<td>2</td>
<td colspan="3">김차원</td>
<td><button>상세</button></td>
</tr>
<tr>
<td>3</td>
<td colspan="3">오수진</td>
<td><button>상세</button></td>
</tr>
<tr>
<td>4</td>
<td colspan="3">임유신</td>
<td><button>상세</button></td>
</tr>
<tr>
<td>5</td>
<td colspan="3">김현수</td>
<td><button>상세</button></td>
</tr>

</table>
</div>
</div>
</div>

<script>
jQuery(document).ready(function ($) {

	  $('#checkbox').change(function(){
	    setInterval(function () {
	        moveRight();
	    }, 3000);
	  });
	  
		var slideCount = $('#slider ul li').length;
		var slideWidth = $('#slider ul li').width();
		var slideHeight = $('#slider ul li').height();
		var sliderUlWidth = slideCount * slideWidth;
		
		$('#slider').css({ width: slideWidth, height: slideHeight });
		
		$('#slider ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });
		
	    $('#slider ul li:last-child').prependTo('#slider ul');

	    function moveLeft() {
	        $('#slider ul').animate({
	            left: + slideWidth
	        }, 200, function () {
	            $('#slider ul li:last-child').prependTo('#slider ul');
	            $('#slider ul').css('left', '');
	        });
	    };

	    function moveRight() {
	        $('#slider ul').animate({
	            left: - slideWidth
	        }, 200, function () {
	            $('#slider ul li:first-child').appendTo('#slider ul');
	            $('#slider ul').css('left', '');
	        });
	    };

	    $('a.control_prev').click(function () {
	        moveLeft();
	    });

	    $('a.control_next').click(function () {
	        moveRight();
	    });

	});    


</script>

</body>
</html>