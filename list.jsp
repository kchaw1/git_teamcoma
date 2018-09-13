<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,300italic,700" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

main {
  
  display: flex;
  flex-direction: column;
  padding: 2px;
  align-items: center;
}

.table-wrapper {
  overflow: auto;
	max-width: 100%;
	background:
		linear-gradient(to right, white 30%, rgba(255,255,255,0)),
		linear-gradient(to right, rgba(255,255,255,0), white 70%) 0 100%,
		radial-gradient(farthest-side at 0% 50%, rgba(0,0,0,.2), rgba(0,0,0,0)),
		radial-gradient(farthest-side at 100% 50%, rgba(0,0,0,.2), rgba(0,0,0,0)) 0 100%;
	background-repeat: no-repeat;
	background-color: white;
	background-size: 40px 100%, 40px 100%, 14px 100%, 14px 100%;
  background-position: 0 0, 100%, 0 0, 100%;
	background-attachment: inherit, inherit, scroll, scroll;
}

tr {
  border-bottom: 1px solid;
}

th {
  background-color: #555;
  color: #fff;
}

th,
td {
  text-align: left;
  padding: 0.5em 1em;
  white-space: nowrap;
}

.hidden {
  display: none;
}

button {
  font-size: inherit;
  margin: 0 0.25em;
  padding: 0.25em 0.5em;
  background-color: #555;
  color: #fff;
  border: 0;
  transition: background-color 0.4s, color 0.4s;
  
  &:hover {
    background-color: #bbb;
    color: #000;
  }
}

.pagination {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-bottom: 1em;
  flex-wrap: wrap;
}

.page-numbers {
  margin: 1em 1em 0;
}

.page-number {
  padding: 0.5em;
  opacity: 0.5;
}

.active {
  opacity: 1;
}

@media screen and (min-width: 540px) {
  .backward {
    order: 1;
  }

  .page-numbers {
    order: 2;
    margin-top: 0;
  }
  
  .forward {
    order: 3;
  }
}
</style>
</head>
<body>
<c:import url="/jsp/common/menu.jsp" />
<main>
  <div class="table-wrapper">
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
    <tbody>
      <tr>
        <td>1</td>
        <td>오수진</td>
        <td>***선생님 클래스 너무 좋아요 ** </td>
        <td>후기</td>
        <td>2018-09-11</td>
   
      </tr>
      <tr>
        <td>2</td>
        <td>임유</td>
        <td>신당동 제빵 클래스 후기 올려욥 </td>
        <td>후기</td>
        <td>2018-09-11</td>
  
      </tr>
      <tr>
        <td>3</td>
        <td>백선생</td>
        <td>나도 백종원처럼 될수있다-특강후기 올려요 !</td>
        <td>후기</td>
        <td>2018-09-11</td>

      </tr>
      <tr>
        <td>4</td>
        <td>갓챠</td>
        <td>$$$선생님 수업 너무하네요...별로에요.</td>
        <td>후기</td>
        <td>2018-09-11</td>
 
      </tr>
      <tr>
        <td>5</td>
        <td>성훈여라</td>
        <td>정말 감사합니다. 요리치에서 탈출했어요.</td>
        <td>후기</td>
        <td>2018-09-11</td>
      </tr>
      
   
    </tbody>
  </table>
  </div>
</main>
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