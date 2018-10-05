<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/jsp/common/boardListIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,300italic,700" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body>
 <div class="grid-wrap">
<c:import url="/jsp/common/menu.jsp" />
<div class="boardList">
<main>
<ul class="tabs">
    
    <li class="tab">
        <input type="radio" name="tabs" checked="checked" id="tab1" />
        <label for="tab1"><a href="<c:url value='/board/list.do?bCategory=1' />">후기 게시판</a></label>
        <div id="tab-content1" class="content">
          <h1>후기게시판</h1>
          <hr/>
          <h3>당신의 후기를 들려주세요 :)</h3>
          <br/>
  <div class="table-wrapper">
    <div class="pagination">
    <button class="backward" id="first">first</button>
    <button class="backward" id="prev">previous</button>
    <button class="forward" id="next">next</button>
    <button class="forward" id="last">last</button>
    <div class="page-numbers" id="pageNumbers"></div>
  </div>
    <table id="paginatedTable">
    <thead>
    
      <tr>
        <th>글 번호</th>
        <th>글 쓴이</th>
        <th>글 제목</th>
        <th>category</th>
        <th>글작성 일시</th>
      </tr>
    </thead>
	
	<c:forEach var="b" items="${list}" varStatus="status">
		<tr>
			 
			<td>${b.bNo}</td>
			<td>${b.bWriter} </td>
			<td><a href='detail.do?no=${b.bNo}'>${b.bTitle}</a></td>
			<td>
			<c:if test="${b.bCategory== '1'}">
			  후기
			</c:if>
			<c:if test="${b.bCategory== '2'}">
			  AllAboutCook
			</c:if>
			<c:if test="${b.bCategory== '3'}">
			  입금확인*
			</c:if>
			</td>
			<td><fmt:formatDate value='${b.bRegDate}' pattern='yyyy년MM월dd일HH:mm:ss'/></td>
		</tr>
	</c:forEach>
	
  </table>
  <a href="<c:url value='/jsp/board/writingBoard.jsp' />"><button >글쓰기</button></a>
  <select class="comSB">
  	<option>목록선택</option>
  	<option>글제목</option>
  	<option>글쓴이</option>
  	<option>글번호</option>
  </select>

  <input class="searchBoard" type="text" name="seachBoard"><button>글검색</button>
      </div>
    </li>
    
    
    <!-- 쉐프와의 소통 -->
    <li class="tab">
      <input type="radio" name="tabs" id="tab2" />
      <label for="tab2"><a href="<c:url value='/board/list.do?bCategory=2' />">쉐프와의 소통</a></label>   
      <div id="tab-content2" class="content">
          <h1>쉐프와의 소통</h1>
          <hr/>
          <h3>요리에 관한 궁금증들을 해결해보세요 :)</h3>
          <br/>
            <div class="table-wrapper">
    <div class="pagination">
    <button class="backward" id="first">first</button>
    <button class="backward" id="prev">previous</button>
    <button class="forward" id="next">next</button>
    <button class="forward" id="last">last</button>
    <div class="page-numbers" id="pageNumbers"></div>
  </div>
    <table id="paginatedTable">
     <thead>
    
      <tr>
        <th>글 번호</th>
        <th>글 쓴이</th>
        <th>글 제목</th>
        <th>category</th>
        <th>글작성 일시</th>
      </tr>
    </thead>
     <c:forEach var="b" items="${list}" >
		<tr>
			<td> ${b.bNo} </td>
			<td>${b.bWriter} </td>
			<td><a href='detail.do?no=${b.bNo}'>${b.bTitle}</a></td>
			<td>
				<c:if test="${b.bCategory== '1'}">
			  후기
			</c:if>
			<c:if test="${b.bCategory== '2'}">
			  AllAboutCook
			</c:if>
			<c:if test="${b.bCategory== '3'}">
			  입금확인*
			</c:if>
			</td>
			<td>${b.bRegDate}</td>
		</tr>
	</c:forEach>
  </table>
  <a href="<c:url value='/jsp/board/writingBoard.jsp' />"><button >글쓰기</button></a>
  <select class="comSB">
  	<option>목록선택</option>
  	<option>글제목</option>
  	<option>글쓴이</option>
  	<option>글번호</option>
  </select>

	
  <input class="searchBoard" type="text" name="seachBoard"><button>글검색</button>
      </div>
       </div>
    </li>
    
    <!-- 문의&입금 게시판 -->
     <li class="tab">
      <input type="radio" name="tabs" id="tab3" />
      <label for="tab3"><a href="<c:url value='/board/list.do?bCategory=3' />">문의&입금 게시판</label>   
      <div id="tab-content3" class="content">
          <h1>문의&입금게시판</h1>
          <hr/>
          <h3>기타문의 사항과 입금은 이곳에 글을 남겨주세요 :)</h3>
          <br/>
            <div class="table-wrapper">
    <div class="pagination">
    <button class="backward" id="first">first</button>
    <button class="backward" id="prev">previous</button>
    <button class="forward" id="next">next</button>
    <button class="forward" id="last">last</button>
    <div class="page-numbers" id="pageNumbers"></div>
  </div>
    <table id="paginatedTable">
        <thead>
    
      <tr>
        <th>글 번호</th>
        <th>글 쓴이</th>
        <th>글 제목</th>
        <th>category</th>
        <th>글작성 일시</th>
      </tr>
    </thead>
     <c:forEach var="b" items="${list}" >
		<tr>
			<td> ${b.bNo} </td>
			<td>${ b.bWriter} </td>
			<td><a href='detail.do?no=${b.bNo}'>${b.bTitle}</a></td>
			<td>
			 	<c:if test="${b.bCategory== '1'}">
			  후기
			</c:if>
			<c:if test="${b.bCategory== '2'}">
			  AllAboutCook
			</c:if>
			<c:if test="${b.bCategory== '3'}">
			  입금확인*
			</c:if>
			</td>
			<td>${ b.bRegDate}</td>
		</tr>
	</c:forEach>
    
  </table>
  <a href="<c:url value='/jsp/board/writingBoard.jsp' />"><button >글쓰기</button></a>
  <select class="comSB">
  	<option>목록선택</option>
  	<option>글제목</option>
  	<option>글쓴이</option>
  	<option>글번호</option>
  </select>
 
  <input class="searchBoard" type="text" name="seachBoard"><button>글검색</button>
      </div>
       </div>
    </li>
    <!-- 게시글 -->
  </div>
  </div>
  
</main>
</div>
<script>
var pageList = new Array();
var currentPage = 1;
var numberPerPage = 12;
var rows = Array.prototype.slice.call(document.querySelectorAll('tbody tr'));
var firstBtn = document.getElementById('first');
var lastBtn = document.getElementById('last');
var prevBtn = document.getElementById('prev');
var nextBtn = document.getElementById('next');
var numberOfPages = getNumberOfPages();
var pageNumbers = document.getElementById('pageNumbers');

firstBtn.addEventListener('click', firstPage, false);
lastBtn.addEventListener('click', lastPage, false);
prevBtn.addEventListener('click', prevPage, false);
nextBtn.addEventListener('click', nextPage, false);

window.onload = load(numberOfPages);

function getNumberOfPages() {
  return Math.ceil(rows.length / numberPerPage);
}

function generatePageNumbers(pageCount) {
  for (var j = 1; j <= pageCount; j++) {if (window.CP.shouldStopExecution(0)) break;
    var pageNumber = document.createElement('span');
    pageNumber.innerHTML = j;
    pageNumber.classList.add('page-number');
    pageNumbers.appendChild(pageNumber);
    if (j === currentPage) {
      pageNumber.classList.add('active');
    }
  }window.CP.exitedLoop(0);
}

function activePageNum(activePage) {
  var pageNumbers = Array.prototype.slice.call(document.querySelectorAll('.page-number'));
  pageNumbers.forEach(function (pageNumber) {
    if (parseInt(pageNumber.innerHTML) === activePage) {
      pageNumber.classList.add('active');
    } else {
      pageNumber.classList.remove('active');
    }
  });
}

function nextPage() {
  currentPage += 1;
  loadRows();
  activePageNum(currentPage);
}

function prevPage() {
  currentPage -= 1;
  loadRows();
  activePageNum(currentPage);
}

function firstPage() {
  currentPage = 1;
  loadRows();
  activePageNum(currentPage);
}

function lastPage() {
  currentPage = numberOfPages;
  loadRows();
  activePageNum(currentPage);
}

function loadRows() {
  var start = (currentPage - 1) * numberPerPage;
  var end = start + numberPerPage;
  for (var i = 0; i < pageList.length; i++) {if (window.CP.shouldStopExecution(1)) break;
    pageList[i].classList.add('hidden');
  }window.CP.exitedLoop(1);
  pageList = rows.slice(start, end);
  drawRows();
  buttonStates();
}

function drawRows() {
  for (var i = 0; i < pageList.length; i++) {if (window.CP.shouldStopExecution(2)) break;
    pageList[i].classList.remove('hidden');
  }window.CP.exitedLoop(2);
}

function buttonStates() {
  document.getElementById('next').disabled = currentPage == numberOfPages ? true : false;
  document.getElementById('prev').disabled = currentPage == 1 ? true : false;
  document.getElementById('first').disabled = currentPage == 1 ? true : false;
  document.getElementById('last').disabled = currentPage == numberOfPages ? true : false;
}

function load(pageCount) {
  generatePageNumbers(numberOfPages);
  loadRows();
}
</script>
</body>
</html>