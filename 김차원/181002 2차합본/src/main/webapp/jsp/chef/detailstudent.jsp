<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-translate/2.7.2/angular-translate.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous"></script> 
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
<img src="<c:url value="/common/file/download.do?name=${classStudent.mFileName}&path=${classStudent.mFilePath}"/>" style="width:100%; height:100%" />
</div>

<div id="studentprofile">
<table>
<tr>
<th>이름:</th>
<td>${classStudent.mName}</td>
</tr>
<tr>
<th>생년월일:</th>
<td>${classStudent.mYear}년${classStudent.mMonth}월${classStudent.mDay}일</td>
</tr>
<tr>
<th>주소:</th>
<td>${classStudent.mMainAddr} ${classStudent.mDetailAddr}</td>
</tr>
<tr>
<th>이메일:</th>
<td>${classStudent.mEmail}</td>
</tr>
</table>
</div>
<div id="atendance">
출석정보
</div>
<div id="assessment">
학생평가<br>
${classStudent.mAssesment}
</div>
<div id="assessbtn">
  <button type="button" id="btn">수정</button>&nbsp 
  <button type="button" id="btn2">완료</button>
  </div>
</div>
<script>
	$('#btn').click(function() {
		/*location.href="notice/List.jsp";*/
		$('#assessment').html("<textarea id='assessinput' name='assesment' rows='5' style='width:100%;'></textarea>")
		$('#assessinput').val(classStudent.mAssesment)
		
	})
	
	$('#btn2').click(function() {
		/*document.location.href="/project_coma/chef/student-assesment.do?mNo=${classStudent.mNo}&mAssesment=" + $('#assessinput').val()*/
		
	      $.ajax({
				type: "GET",
				url: "/project_coma/chef/student-assesment.do?mNo=${classStudent.mNo}&mAssesment=" + $('#assessinput').val(),
				dataType: "json",
				success: function(classStudent) {
					
					$('#assessment').html("학생평가<br>" + $('#assessinput').val())
					
				    $('#assessinput').remove()
				
				}
				
			});	
		
	})
</script>

</body>
</html>