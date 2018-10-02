<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Summernote</title>


<script src="lang/summernote-ko-KR.js"></script>
<c:import url="/css/writing.css" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<script type="text/javascript">
	function sendFile(file, el) {
		var form_data = new FormData();
		form_data.append('uploadFile', file);
		$.ajax({
			data : form_data,
			type : "POST",
			url : '/project_coma/board/img.do',
			cache : false,
			contentType : false,
			enctype : 'multipart/form-data',
			processData : false,
			success : function(form_data) {
				alert(form_data);
				$("#imgtag").val(form_data)
				$(el).summernote('editor.insertImage', form_data);
			}
		});
	}
</script>
</head>
<body>
	<div id="write">
		<form action="/project_coma/board/write.do" method="POST">
			<div class="grid-wrap">
				<c:import url="/jsp/common/menu.jsp" />
				<div class="writeBoard">
					<input type="hidden" name="nickName" value="${user.nickName}">
					<div class="title">
						글제목 <input type="text" name="bTitle" class="titleArea" /> <label
							class="selectcates"> 카테고리 <select name="bCategory"
							class="select">
								<option>선택</option>
								<option>------------</option>
								<option value="1">후기</option>
								<option>------------</option>
								<option value="2">AllAboutCook</option>
								<option>------------</option>
								<option value="3">입금확인*</option>

						</select>
						</label>
					</div>
					<textarea id="summernote" name="bContent" p><p>글을 입력해 주세요 </p></textarea>
					<button class="but">글작성</button>
					<button class="but">글목록</button>
					<input type="hidden" id="imgtag" name="imgtag">
				</div>
			</div>
		</form>
	</div>
	<script>
		$(document).ready(function() {
			$('#summernote').summernote({
				width : 900,
				height : 500, // set editor height
				minHeight : null, // set minimum height of editor
				maxHeight : null, // set maximum height of editor
				focus : true, // set focus to editable area after initializing summernote
				callbacks : {
					onImageUpload : function(files, editor, welEditable) {
						for (var i = files.length - 1; i >= 0; i--) {
							sendFile(files[i], this);
						}
					}
				}

			});

		})
	</script>
</body>
</html>