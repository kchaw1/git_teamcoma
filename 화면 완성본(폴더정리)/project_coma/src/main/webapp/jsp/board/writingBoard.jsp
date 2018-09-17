<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:import url="/jsp/common/writingBoardIncludeScript.jsp" />
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<c:import url="/css/writing.css" />

<title>Insert title here</title>

</head>
<body>
 <div class="grid-wrap"> 
 <c:import url="/jsp/common/menu.jsp" />
 <div class="writeBoard">
 <div class="writingHeading">
 	게시글쓰기
 	<label class="selectcates">
 	<select name="selectCa">
 		<option>선택</option>
 		<option>------------</option>
 		<option>후기</option>
 		<option>------------</option>
 		<option>AllAbout도구</option>
 		<option>AllAboutCook</option>
 		<option>------------</option>
 		<option>입금확인*</option>
 		<option>취소/변경</option>
 		<option>기타문의</option>
 	</select>
 	</label>
 </div>
<textarea name="writingBoard" id="writingBoard" cols="28" rows="28"></textarea>

<button>글작성</button><button>글목록</button>
 <input name="image" type="file" id="upload" class="hidden" onchange="">
 </div>
 </div>
 <script type="text/javascript">
 
 $(document).ready(function() {
	  tinymce.init({
	    selector: "textarea",
	    theme: "modern",
	    paste_data_images: true,
	    plugins: [
	      "advlist autolink lists link image charmap print preview hr anchor pagebreak",
	      "searchreplace wordcount visualblocks visualchars code fullscreen",
	      "insertdatetime media nonbreaking save table contextmenu directionality",
	      "emoticons template paste textcolor colorpicker textpattern"
	    ],
	    toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
	    toolbar2: "print preview media | forecolor backcolor emoticons",
	    image_advtab: true,
	    file_picker_callback: function(callback, value, meta) {
	      if (meta.filetype == 'image') {
	        $('#upload').trigger('click');
	        $('#upload').on('change', function() {
	          var file = this.files[0];
	          var reader = new FileReader();
	          reader.onload = function(e) {
	            callback(e.target.result, {
	              alt: ''
	            });
	          };
	          reader.readAsDataURL(file);
	        });
	      }
	    },
	    templates: [{
	      title: 'Test template 1',
	      content: 'Test 1'
	    }, {
	      title: 'Test template 2',
	      content: 'Test 2'
	    }]
	  });
	});
 
 </script>
</body>
</html>