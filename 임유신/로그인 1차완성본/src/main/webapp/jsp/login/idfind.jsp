<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

*,
*::before,
*::after {
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

.form input[type='email'],
.form input[type='text'] {
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

.login input[type='email'],
.login input[type='text'] {
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

.login input[type='submit']:focus,
.login input[type='submit']:hover {
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
<body>
		<body class="align">

  <div class="grid">

    <form action="/" method="post" class="form login">

      <header class="login__header">
        <h3 class="login__title">아이디 찾기</h3>
      </header>

      <div class="login__body">

        <div class="form__field">
          <input type="email" placeholder="이메일" required>
        </div>

        <div class="form__field">
          <input type="text" placeholder="이름" required>
        </div>

      </div>

      <footer class="login__footer">
        <input type="submit" value="찾기" onclick="alert('회원님의 이메일로 임시 비밀번호를 전송했습니다.')">

        <p><span class="icon icon--info">?</span><a href="<c:url value="/jsp/main/main.jsp"/>" >메인으로 돌아가기</a></p>
      </footer>

    </form>

  </div>

</body>
	
</body>
</html>