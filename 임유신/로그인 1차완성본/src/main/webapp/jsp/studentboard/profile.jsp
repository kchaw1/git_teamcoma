<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel ="stylesheet" href=https://yourwebsite.com/style.css/>
<link rel ="stylesheet" href=https://codepen.io/username/pen/aBcDef/>
<style>
* {
  box-sizing: border-box;
}

html {
  font-size: 100%;E
}

body {
  padding: 0;
  margin: 0;
  min-height: 100vh;
  background: linear-gradient(transparent, rgba( 110, 110, 110, .3)), linear-gradient(100deg, rgba(250, 214, 195, .8) 30%, #B0EAE8 120%);
}

.sidebar_wrapper {
  width: 100%;
  max-width: 26rem;
}

.about-dev {
  width: 100%;
  max-width: 26rem;
  margin: auto;
  box-shadow: 2px 4px 2px -2px rgba(0, 0, 0, .3), -2px -4px 15px -2px rgba(0, 0, 0, .2);
  -webkit-animation: profile_in 0.8s;
          animation: profile_in 0.8s;
}

@-webkit-keyframes profile_in {
  0% {
    opacity: 0;
    -webkit-transform: translateY(30%);
            transform: translateY(30%);
  }
  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
}

@keyframes profile_in {
  0% {
    opacity: 0;
    -webkit-transform: translateY(30%);
            transform: translateY(30%);
  }
  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
}


/* profile card header */

.profile-card_header-container {
  max-width: 15rem;
  margin: auto;
}

.profile-card_header {
  background: #272727;
  border-left: 0.625rem solid #97ece1;
  padding: 1.5em 1.5em 1em;
  text-align: center;
}


/* profile picture */

.profile-card_header-imgbox {
  display: block;
  width: 9.5rem;
  height: 9.5rem;
  overflow: hidden;
  border-radius: 50%;
  margin: auto;
  background: rgba(250, 214, 195, 1);
  border: 0.375rem solid rgba(250, 214, 195, 1);
}

.profile-card_header img {
  max-width: 100%;
  -webkit-filter: grayscale(100%);
          filter: grayscale(100%);
}


/* header heading */

.profile-card_header h1 {
  color: #f3f3f3;
  font-size: 1.5rem;
  margin-top: 0.8em;
  font-family: 'Oswald', sans-serif;
  font-weight: normal;
  position: relative;
}


/* header text span */

.profile-card_header h1 span {
  font-size: 1.2rem;
  font-weight: 300;
  display: block;
  color: rgba(220, 220, 220, .95);
  margin-top: 0.25em;
  padding-top: 0.25em;
  border-top: 0.075em solid rgba(250, 214, 195, 1);
}


/* about section */

.profile-card_about {
  line-height: 1.5;
  background: #ededed;
  padding: 1.5em 2rem;
  color: #222;
  font-family: 'Lato', sans-serif;
}

.profile-card_about h2 {
  margin: 0;
  display: inline-block;
  color: #333;
  font-weight: normal;
  text-transform: uppercase;
  font-size: 1.3rem;
  position: relative;
  z-index: 2;
  vertical-align: middle;
}

.profile-card_about h2::before {
  content: '';
  position: absolute;
  width: 110%;
  /*  max-width: 13.8rem;
*/
  height: 1rem;
  background: #c6f1eb;
  left: -5px;
  top: 50%;
  z-index: -1;
}

.profile-card_about p {
  font-weight: 300;
}

.profile-card_footer {
  margin-top: 1.5em;
  text-align: right;
}


/* social row */

.social-row {
  margin-right: 0.5em;
}

.paw-icon,
.heart-icon {
  display: inline-block;
  margin-left: 0.5em;
  transition: -webkit-transform 0.3s;
  transition: transform 0.3s;
  transition: transform 0.3s, -webkit-transform 0.3s;
}

#pawi,
#hearti {
  height: 1.8rem;
  width: 1.8rem;
  cursor: help;
  transition: fill 0.3s ease-in-out;
}

#pawi path,
#hearti path {
  fill: #272727;
}

.paw-icon:hover,
.heart-icon:hover {
  -webkit-transform: scale(1.2);
          transform: scale(1.2);
}


/* back to profile link */

.back-to-profile,
.back-to-profile:visited {
  display: inline-block;
  padding-left: 0.5em;
  padding-bottom: 0.1em;
  color: #222;
  text-decoration: none;
  font-weight: bold;
  border-top: 0.3125rem solid rgba(0, 0, 0, 0);
  border-bottom: 0.3125rem solid #97ece1;
  transition: border 0.3s ease-in-out;
}

.back-to-profile::after {
  content: "\25b6";
  margin: 0 0.75em;
  color: #222;
}

.back-to-profile:hover,
.back-to-profile:focus {
  border-top-color: #222;
  border-bottom-color: #fdc1a0;
}

@media screen and (max-width: 26em) {
  .side_wrapper {
    min-height: 100vh;
    background: #ededed;
  }
  .about-dev {
    box-shadow: none;
  }
}

@media screen and (min-width: 33em) {
  .side_wrapper {
    margin: 2rem auto;
  }
  .profile-card_header {
    padding: 1.5em 4em 1em;
  }
}

@media screen and (min-height: 46em) {
  .side_wrapper {
    width: 100%;
    max-width: 26rem;
    margin: 0;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
  }
  .about-dev {
    max-width: 26rem;
  }
}
</style>
</head>
<body>
<div class="side_wrapper">
  <section class="about-dev">
    <header class="profile-card_header">
      <div class="profile-card_header-container">
        <div class="profile-card_header-imgbox">
          <img src="http://placekitten.com/600/900" alt="Mewy Pawpins" />
        </div>
        <h1>김현수 <span>성훈이얌</span></h1>
      </div>
    </header>
    <div class="profile-card_about">
     
      <footer class="profile-card_footer">
        <div class="social-row">
          <div class="heart-icon" title="No Health Issues">
            <?xml version="1.0" encoding="utf-8"?>
            <!-- Generated by IcoMoon.io -->
          

        </div>
        <p><a class="back-to-profile" href ="<c:url value ="/jsp/studentboard/editprofile.jsp"/>">프로필 수정하기</a></p>
        <p><a class="back-to-profile" href ="<c:url value ="/jsp/student/student.jsp"/>">메인으로 가기</a></p>
      </footer>
    </div>
  </section>
</div>
</body>
</html>