<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
<link rel="stylesheet" href="<c:url value="/css/main.css" />" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />



<title>Insert title here</title>
<style>

.grid-wrap{
  display: grid;
  height: 100vh;
  grid-template-rows: 90px repeat(18, 1fr) 90px;
  grid-template-columns: 90px repeat(18, 1fr) 90px;
  overflow: hidden;
  background-image:url(https://source.unsplash.com/R3LcfTvcGWY/1600x800);
}



/* helpers/align.css */


/* helpers/grid.css */
.grid {
	grid-area : 7 / 7 / 20 / 20;
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
	background-image:url(https://source.unsplash.com/R3LcfTvcGWY/1600x800);
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

.form input[type='text'], .form input[type='password'] {
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

.login input[type='text'], .login input[type='password'] {
	border: 0.0625em solid #e5e5e5;
	padding: 1em 1.25em;
}

.login input[type='text'] {
	border-top-left-radius: 0.25em;
	border-top-right-radius: 0.25em;
}

.login input[type='password'] {
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

.loginBtn loginBtn--facebook {center;
	
}

/* Shared */
.loginBtn {
	box-sizing: border-box;
	position: relative;
	width: 21em;  - apply for fixed size 
	margin: 0.2em;
	padding: 0 53px 0 46px;
	border: none;
	text-align: left;
	line-height: 34px;
	white-space: nowrap;
	border-radius: 0.2em;
	font-size: 16px;
	color: #FFF;
}

.loginBtn:before {
	content: "";
	box-sizing: border-box;
	position: absolute;
	top: 0;
	left: 0;
	width: 34px;
	height: 100%;
}

.loginBtn:focus {
	outline: none;
}

.loginBtn:active {
	box-shadow: inset 0 0 0 32px rgba(0, 0, 0, 0.1);
}

/* Facebook */
.loginBtn--facebook {
	background-color: #4C69BA;
	background-image: linear-gradient(#4C69BA, #3B55A0);
	/*font-family: "Helvetica neue", Helvetica Neue, Helvetica, Arial, sans-serif;*/
	text-shadow: 0 -1px 0 #354C8C;
}

.loginBtn--facebook:before {
	border-right: #364e92 1px solid;
	background:
		url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_facebook.png')
		6px 6px no-repeat;
}

.loginBtn--facebook:hover, .loginBtn--facebook:focus {
	background-color: #5B7BD5;
	background-image: linear-gradient(#5B7BD5, #4864B1);
}

/* Google */
.loginBtn--google {
	/*font-family: "Roboto", Roboto, arial, sans-serif;*/
	background: #DD4B39;
}

.loginBtn--google:before {
	border-right: #BB3F30 1px solid;
	background:
		url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_google.png')
		6px 6px no-repeat;
}

.loginBtn--google:hover, .loginBtn--google:focus {
	background: #E74B37;
}

.loginBtn loginBtn--google {
	padding: 0 95px 0 46px;
}
</style>
</head>
<body>



<div class="grid-wrap">
<c:import url="/jsp/common/menu.jsp" />

  <div class="grid">

    <form action="/" method="post" class="form login">

      <header class="login__header">
        <h3 class="login__title">Login</h3>
      </header>

      <div class="login__body">

        <div class="form__field">
          <input type="text" placeholder="아이디" >
        </div>

        <div class="form__field">
          <input type="password" placeholder="비밀번호" >
        </div>

      </div>

      <footer class="login__footer">
        <input type="submit" value="Login" >

        <p><span class="icon icon--info">?</span><a style="color: black"" href="<c:url value="/jsp/login/checkPass.jsp"/>">Forgot Password</a></p>
      </footer>
      
		<button class="loginBtn loginBtn--facebook">
  			페이스북 아이디 로그인
		</button>

		<button class="loginBtn loginBtn--google"><a href="<c:url value="/jsp/login/google.jsp"/>">구글아이디 로그인</a>
  			
		</button>
		
		

    </form>

  </div>
  
  </div>
  
	

</body>
</html>