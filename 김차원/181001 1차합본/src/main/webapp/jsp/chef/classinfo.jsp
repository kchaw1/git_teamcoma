<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0/angular.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-translate/2.7.2/angular-translate.js"></script>
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<link rel="stylesheet" href="<c:url value="/css/classinfo.css" />" />
<title>Insert title here</title>
</head>
<body>
<% int no = 0; %>
<div class="grid-wrap">
<c:import url="/jsp/common/menu.jsp" />

<div id="classinfo">

<div id="slider">
  <a href="#" class="control_next">></a> 
  <a href="#" class="control_prev"><</a>
    <div id="studentlist">

</div>
</div>

</div>
</div>

<script>
$(function () {
	getStudentList()
})

 function getStudentList() {
	        
	        $.ajax({
				type: "GET",
				url: "/project_coma/chef/studentlist?classNo=${list1[0].classNo}",
				dataType: "json",
				success: function(stuList) {
					
					
					var html = "<h1>${list1[0].className}</h1>"
	 	        		+ `<img src="<c:url value="/common/file/download.do?name=${list[0].chefFileName}&path=${list[0].chefFilePath}"/>" style="width:300px; height:300px;" />`
	 	        		+ "<table>"
	 	        		+ "<tr>"
	 					+ "<th>학생번호</th>"
	 					+ "<th>이름</th>"
	 					+ "</tr>"
					for(let s of stuList) {
						html += "<tr>"
						html += "<td>" + s.mNo + "</td>"
				    	html += "<td>" + s.mName + "</td>"
				    	html += "<td>"
				    	html += "<input type='button' value='상세' onClick=location.href='/project_coma/chef/detail-student.do?mNo=" + s.mNo +  "'>"
				    	html += "</td>"
				    	html += "</tr>"
					}
	 					html += "</table>"
						$("#studentlist").html(html)
				}
				
			});	
	    };

jQuery(document).ready(function ($) {

	  
		var slideCount = $('#slider ul li').length;
		var slideWidth = $('#slider ul li').width();
		var slideHeight = $('#slider ul li').height();
		var sliderUlWidth = slideCount * slideWidth;
		
		$('#slider').css({ width: slideWidth, height: slideHeight });
		
		/*$('#slider ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });*/
		
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
	  
	        $.ajax({
				type: "GET",
				url: "/project_coma/chef/studentlist?classNo=${list1[0].classNo}",
				dataType: "json",
				success: function(stuList) {
					
					
					var html = "<h1>${list1[0].className}</h1>"
	 	        		+ `<img src="<c:url value="/common/file/download.do?name=${list[0].chefFileName}&path=${list[0].chefFilePath}"/>" style="width:300px; height:300px;" />`
	 	        		+ "<table>"
	 	        		+ "<tr>"
	 					+ "<th>학생번호</th>"
	 					+ "<th>이름</th>"
	 					+ "</tr>"
					for(let s of stuList) {
						html += "<tr>"
						html += "<td>" + s.mNo + "</td>"
				    	html += "<td>" + s.mName + "</td>"
				    	html += "<td>" + "<input type='button' value='상세' onClick=location.href='/project_coma/chef/detail-student.do?mNo=" + s.mNo +  "'>" + "<td>" 
				    	html += "</tr>"
					}
	 					html += "</table>"
						$("#studentlist").html(html)
				}
				
			});	
	     
	    });

	    $('a.control_next').click(function () {
	        moveRight();
	       
	        $.ajax({
				type: "GET",
				url: "/project_coma/chef/studentlist?classNo=${list1[1].classNo}",
				dataType: "json",
				success: function(stuList) {
					var html = "<h1>${list1[1].className}</h1>"
	 	        		+ `<img src="<c:url value="/common/file/download.do?name=${list[1].chefFileName}&path=${list[1].chefFilePath}"/>" style="width:300px; height:300px;" />`
	 	        		+ "<table>"
	 	        		+ "<tr>"
	 					+ "<th>학생번호</th>"
	 					+ "<th>이름</th>"
	 					+ "</tr>"
					for(let s of stuList) {
						html += "<tr>"
						html += "<td>" + s.mNo + "</td>"
				    	html += "<td>" + s.mName + "</td>"
				    	html += "<td>" + "<input type='button' value='상세' onClick=location.href='/project_coma/chef/detail-student.do?mNo=" + s.mNo +  "'>" + "<td>" 
				    	html += "</tr>"
					}
	 					html += "</table>"
						$("#studentlist").html(html)
					
				}
			});	
	  
	});    
});

</script>

</body>
</html>