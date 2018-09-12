<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="grid-wrap slide-1">
  <div class="logo"><p>CO:MA</p></div>
  <div class="menu">
    <nav>
      <ul>
        <li class="active">로그인</li>
        <li>회원가입</li>
        <li>클래스 찾기</li>
        <li>게시판</li>
        <li>쉐프 소개</li>
        <li>개인 페이지</li>
      </ul>  
    </nav>
  </div>

 
 
</div>

<script>
$( ".prev" ).on( "click", function() {
	  $( ".grid-wrap" ).removeClass( "slide-2" ).addClass( "slide-1" );
	});

	$( ".next" ).on( "click", function() {
	  $( ".grid-wrap" ).removeClass( "slide-1" ).addClass( "slide-2" );
	});
</script>
