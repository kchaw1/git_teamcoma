<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<c:import url="/jsp/common/commentIncludeScript.jsp" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.grid-wrap {
  display: grid;
  height: 100vh;
  grid-template-rows: 90px repeat(18, 1fr) 90px; /* 화면을 18칸의 행으로 쪼갠다. 맨위와 맨 아래 90px의 트랙을 준다 */
  grid-template-columns: 90px repeat(18, 1fr) 90px; /* 화면을 18칸의 열로 쪼갠다. 양옆에 90px의 트랙을 준다 */
  overflow: hidden;
  background-image:url(https://source.unsplash.com/1Rm9GLHV0UA/1600x800); /* 배경은 원하는 이미지 주소 */
}
.detailBoardByNo{
    grid-area: 2 /	6/ 20 / 10;
    width: 900px;
    height: 700px;
    background: #232330ab;
    padding: 7px; 
}
.post{
	width: 900px;
	height: 400px;
	background: #f2f2f2d4;
	overflow: scroll;
}
.boardAticleWrtier{
	padding:2px;
	background: #f2f2f2d4;
	color: black;
}
.boardAticleTitle{
	background: #f2f2f2d4;
		color: black;
}
form {
 position: relative;
 top:  4px;
 border-radius: 4px;
 width: 400px;
 height: 180px;
 margin: 0 auto;
}

form textarea {
 border-radius: 2px;
 box-shadow:  0px 2px 11px 0px rgba(0, 0, 0, 0.3);
 border: 1px solid #e2e6e6;
 margin: 10px 0 10px 0;
 font-family: 'Open Sans', sans-serif;
 outline: none;
 width: 395px;
 height: 100px;
}

form span.counter {
 float: right;
 color: #f2f2f2;
}

form p.info {
 font-size: 11px;
 color: #999;
}
form p.info > span {
 color: #fff; 
}

form input[type=submit] {
 cursor: pointer;
 box-shadow:  0px 2px 11px 0px rgba(0, 0, 0, 0.3);
 border: 1px solid #A8F1FF;
 border-radius: 2px;
 background-color:#0093B0;
 color: #fff;
 float: right;
 padding: 10px;
}
​@import url(https://fonts.googleapis.com/css?family=Merriweather:400,700,400italic,700italic);

body {
  color: #222;
  font: 18px/1.555555555 Merriweather, serif;
  margin: 2em auto;
  width: 90%;
  max-width: 40em;
}

img {
  border: 0;
  max-width: 100%;
}

a {
  color: #19A3FF;
  text-decoration: none;
  
  &:hover {
    color: #47B5FF;
  }
}

h1,
h2,
h3,
h4 {
  text-rendering: optimizeLegibility;
}

.post-title {
  font-size: 3.157em;
  margin: 1em 0 0;
}

.post-subtitle {
  font-size: 1.777em;
  font-style: italic;
  margin: 0;
}

.post-meta {
  font-size: 0.777em;
  margin: 2em 0 3.5em;
}

.post-intro {
  font-size: 1.222em;
}

.post-footer {
  font-size: 0.75em;
  padding: 2em 0;
}

.post-category {
  float: left;
}

.comments-link {
  float: right;
  margin: 0;
}

.post-tags,
.post-tags li {
  display: inline;
  list-style: none;
  margin: 0;
  padding: 0;
}

.post-tags li:after {
  content: ",";
}

.post-tags li:last-child:after {
  content: "";
}

figure {
  margin: 0;
}

figcaption {
  font-size: 0.75em;
  font-style: italic;
  line-height: 2em;
  text-align: center;
}
</style>
</head>
<body>
 <div class="grid-wrap"> 
 <c:import url="/jsp/common/menu.jsp" />

<div class="detailBoardByNo">

<article itemscope itemtype="http://schema.org/BlogPosting" class="post">
  <header class="post-header">
  	  <button><a href='delete.do?no=${board.bNo}'>삭제</a></button>
  	  <button><a href='update.do?no=${board.bNo}'>수정</a></button>
      <h2 itemprop="headline" class="post-title">${board.bTitle} </h2>
      <p class="post-subtitle" itemprop="alternativeHeadline">${board.bWriter}</p>
    
      <p class="post-meta">Posted on <time datetime="2018-0-05T17:44-07:00" itemprop="datePublished"><fmt:formatDate value="${board.bRegDate}" pattern="yyyy-MM-dd HH:mm:ss"/></time> by <span itemprop="author"><a rel="author" href="#googleplusURL">Author</a></span></p>
  </header>

   <p itemprop="description" class="post-intro"></p>
  
  <div itemprop="articleBody" class="post-body">
    ${board.bContent}
    <figure itemscope itemtype="http://schema.org/ImageObject">
      
      <figcaption itemprop="caption">An image caption by <span itemprop="author"><a href="#" rel="author">Photographer</a></span></figcaption>
    </figure>
    
 
  </div>
<!-- 
  <footer class="post-footer">
    <div class="post-category">Posted in <span itemprop="articleSection"><a href="#">Category</a></span> with the tags 
      <ul class="post-tags">
        <li itemprop="keywords"><a href="#" rel="tag">Tag 1</a></li>
        <li itemprop="keywords"><a href="#" rel="tag">Tag 2</a></li>
        <li itemprop="keywords"><a href="#" rel="tag">Tag 3</a></li>
      </ul>
    </div>
    
    <p class="comments-link"><a href="#" itemprop="discussionUrl">Leave a Comment</a> (<a href="#" itemprop="discussionUrl"><span itemprop="commentCount">3</span></a>)</p>
  </footer>
   -->

</article>


<!-- comment -->
	<form id="enquiry" action="">
	<input type="text" placeholder="아이디" />
	<input type="password" placeholder="비밀번호" />
	  <input type="submit" value="Add Comment">
  <textarea maxlength="140" name="message" id="message" placeholder="Add your comment!"></textarea>
</form>
</div>
</div>
<script>
$(document).ready(function () {
    var comment = $('form#enquiry textarea'),
        counter = '',
        counterValue = 140, //change this to set the max character count
        minCommentLength = 10, //set minimum comment length
        $commentValue = comment.val(),
        $commentLength = $commentValue.length,
        submitButton = $('form#enquiry input[type=submit]').hide();
  
    $('form').prepend('<span class="counter"></span>').append('<p class="info">Min length: <span></span></p>');
    counter = $('span.counter');
    counter.html(counterValue); //display your set max length
    comment.attr('maxlength', counterValue); //apply max length to textarea
    $('form').find('p.info > span').html(minCommentLength);
    // everytime a key is pressed inside the textarea, update counter
    comment.keyup(function () {
      var $this = $(this);
      $commentLength = $this.val().length; //get number of characters
      counter.html(counterValue - $commentLength); //update counter
      if ($commentLength > minCommentLength - 1) {
        submitButton.fadeIn(200);
      } else {
        submitButton.fadeOut(200);
      }
    });
  });

</script>
</body>
</html>