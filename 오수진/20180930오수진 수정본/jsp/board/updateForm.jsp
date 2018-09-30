<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/project_coma/board/update.do" method="POST" enctype="multipart/form-data" >
 <div class="grid-wrap"> 
 <c:import url="/jsp/common/menu.jsp" />
 <div class="writeBoard">
 <div>
		 <input type="hidden" name="no" value="${param.no}" />
		</div>
 <div class="title">
 	글제목 <input type="text" name="bTitle" />
 </div>

 <div class="writingHeading">
 	게시글쓰기
 	
 </div>
<textarea name="bContent" id="writingBoard" cols="28" rows="28"></textarea>

<button>글수정</button><button>글목록</button>
 <input name="image" type="file" id="upload" class="hidden" >
 </div>
 </div>
 </form>

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