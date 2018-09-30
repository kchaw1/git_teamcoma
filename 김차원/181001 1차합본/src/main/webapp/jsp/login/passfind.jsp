<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style>
/* helpers/align.css */
.align {
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
}

/* helpers/grid.css */
.grid {
	margin-left: auto;
	margin-right: auto;
	max-width: 24em;
	width: 90%;
}

/* helpers/icon.css */
.icon {
	display: inline-block;
	height: 1.25em;
	line-height: 1.25em;
	margin-right: 0.625em;
	text-align: center;
	vertical-align: middle;
	width: 1.25em;
}

.icon--info {
	background-color: #e5e5e5;
	border-radius: 50%;
}

/* layout/base.css */
*, *::before, *::after {
	-webkit-box-sizing: inherit;
	box-sizing: inherit;
}

html {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	height: 100%;
}

body {
	background-image: url(https://source.unsplash.com/R3LcfTvcGWY/1600x800);
	background-color: #eaeaea;
	font-family: 'Helvetica', 'Arial', sans-serif;
	font-size: 14px;
	font-size: 0.875rem;
	font-weight: 400;
	line-height: 1.5;
	margin: 0;
	min-height: 100%;
}

/* modules/anchor.css */
a {
	color: inherit;
	text-decoration: none;
	-webkit-transition: color 0.3s;
	transition: color 0.3s;
}

a:hover {
	color: #1dabb8;
}

/* modules/form.css */
fieldset {
	border: none;
	margin: 0;
}

input {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border: none;
	font: inherit;
	margin: 0;
	outline: none;
	padding: 0;
}

input[type='submit'] {
	cursor: pointer;
}

.form input[type='email'], .form input[type='text'] {
	width: 100%;
}

/* modules/login.css */
.login__header {
	background-color: #282830;
	border-top-left-radius: 0.25em;
	border-top-right-radius: 0.25em;
	color: #fff;
	padding: 1.5em;
	text-align: center;
	text-transform: uppercase;
}

.login__title {
	font-size: 16px;
	font-size: 1rem;
	margin: 0;
}

.login__body {
	background-color: #fff;
	padding: 1.5em;
	position: relative;
}

.login__body::before {
	background-color: #fff;
	content: '';
	height: 0.5em;
	left: 50%;
	margin-left: -0.25em;
	margin-top: -0.25em;
	position: absolute;
	top: 0;
	-webkit-transform: rotate(45deg);
	transform: rotate(45deg);
	width: 0.5em;
}

.login input[type='email'], .login input[type='text'] {
	border: 0.0625em solid #e5e5e5;
	padding: 1em 1.25em;
}

.login input[type='email'] {
	border-top-left-radius: 0.25em;
	border-top-right-radius: 0.25em;
}

.login input[type='text'] {
	border-bottom-left-radius: 0.25em;
	border-bottom-right-radius: 0.25em;
	border-top: 0;
}

.login input[type='submit'] {
	background-color: #1dabb8;
	border-radius: 0.25em;
	color: #fff;
	font-weight: 700;
	-webkit-box-ordinal-group: 2;
	-ms-flex-order: 1;
	order: 1;
	padding: 0.75em 1.25em;
	-webkit-transition: background-color 0.3s;
	transition: background-color 0.3s;
}

.login input[type='submit']:focus, .login input[type='submit']:hover {
	background-color: #198d98;
}

.login__footer {
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	background-color: #fff;
	border-bottom-left-radius: 0.25em;
	border-bottom-right-radius: 0.25em;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-pack: justify;
	-ms-flex-pack: justify;
	justify-content: space-between;
	padding-bottom: 1.5em;
	padding-left: 1.5em;
	padding-right: 1.5em;
}

.login__footer p {
	margin: 0;
}
</style>
</head>
<body class="align">

	<div class="grid">

	
			<header class="login__header">
			<h3 class="login__title">패스워드 찾기</h3>
			</header>

			<div class="login__body"> 						

				<div class="form__field">
					<label>ID</label> <input class="w3-input" type="text" id="id"
						name="id" required>
				</div>
				<div class="form__field">
					<label>EMAIL</label> <input class="w3-input" type="text" id="email"
						name="email" required>
				</div>

				<p class="w3-center">
					<button type="button" id=findBtn
						class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round" ><a href="<c:url value="/jsp/login/loginForm.jsp"/>">find</a></button>
					<button type="button" onclick="history.go(-1);"
						class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">Cancel</button>
				</p>

			</div>
			<p>
				<span class="icon icon--info">?</span><a
					href="<c:url value="/jsp/main/main.jsp"/>">메인으로 돌아가기</a>
			</p>
			</footer>

	</div>
<script>
$("#findBtn").click(function () {
    
	   $.ajax({
	      type: "POST",
	      url: "/project_coma/login/passfind.do",
	      data: "id=" + $('#id').val() +"&email=" + $('#email').val(),
	      dataType: "json",
	      success: function (password) {
	    	  	if(password==null) {
	    	  		alert("입력한 정보와 일치하는 회원정보가 없습니다.")
	    	  		return false;
	    	  	}
	    	  
	       		alert("당신의 비밀번호는 [ "+password+" ] 입니다."+"\n"+"다시 로그인 해주세요.")
	       		
	      }
	   });
	});


	/*
	function passFind() {
	 alert("당신의 비밀번호는 ["+${password}+"] 입니다. 다시 로그인 하세요.");
	}
    var btn = document.querySelector("#findBtn")    
    btn.onclick = passFind
    */
</script>
</body>

</html>