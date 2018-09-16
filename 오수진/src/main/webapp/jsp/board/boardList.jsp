<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <label for="tab1">후기 게시판</label>
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
    <tbody>
      <tr>
        <td>8</td>
        <td>오수진</td>
        <td>***선생님 클래스 너무 좋아요 ** </td>
        <td>후기</td>
        <td>2018-09-11</td>
   
      </tr>
      <tr>
        <td>7</td>
        <td>임유</td>
        <td>신당동 제빵 클래스 후기 올려욥 </td>
        <td>후기</td>
        <td>2018-09-11</td>
  
      </tr>
      <tr>
        <td>6</td>
        <td>백선생</td>
        <td>나도 백종원처럼 될수있다-특강후기 올려요 !</td>
        <td>후기</td>
        <td>2018-09-11</td>

      </tr>
      <tr>
        <td>5</td>
        <td>갓챠</td>
        <td>$$$선생님 수업 너무하네요...별로에요.</td>
        <td>후기</td>
        <td>2018-09-11</td>
 
      </tr>
      <tr>
        <td>4</td>
        <td>성훈여라</td>
        <td>정말 감사합니다. 요리치에서 탈출했어요.</td>
        <td>후기</td>
        <td>2018-07-11</td>
      </tr>
            <tr>
        <td>3</td>
        <td>파리지앵</td>
        <td>강쉐프님 집에서 느끼는 파리&&후기^^*</td>
        <td>후기</td>
        <td>2018-07-09</td>
      </tr>
            <tr>
        <td>2</td>
        <td>제빵왕킴탁구</td>
        <td>여자친구가 진짜 좋아해요(마카롱 원데이클래스 후기)</td>
        <td>후기</td>
        <td>2018-07-08</td>
      </tr>    
           <tr>
        <td>1</td>
        <td>피카츄</td>
        <td>**아버지랑 같이 수업받은 후기**강서구**</td>
        <td>후기</td>
        <td>2018-07-05</td>
      </tr>
     
     
      
   
    </tbody>
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
      <label for="tab2">쉐프와의 소통</label>   
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
    <tbody>
      <tr>
        <td>8</td>
        <td>오늘의밥상</td>
        <td>핸디 믹서기 $$브랜드가 좋은가요? 아님 비싸도 &&브랜드가 좋을까요?</td>
        <td>AllAbout도구</td>
        <td>2018-08-02</td>
   
      </tr>
      <tr>
        <td>7</td>
        <td>샌디치여왕</td>
        <td>요즘 양상추가 금값이던데.. 혹시 샌드위치에 넣을 야채 추천좀 해주세요 ㅠㅠ</td>
        <td>AllAboutCook</td>
        <td>2018-08-01</td>
  
      </tr>
      <tr>
        <td>6</td>
        <td>코젤빠</td>
        <td>혹시 삼겹살과 어울리는 맥주브랜드나 와인 알 수 있을까요?</td>
        <td>AllAboutCook</td>
        <td>2018-07-28</td>

      </tr>
      <tr>
        <td>5</td>
        <td>밥사주는귀여운형</td>
        <td>쉐프님들의 죽레시피가 궁금하네요</td>
        <td>AllAboutCook</td>
        <td>2018-07-22</td>
 
      </tr>
      <tr>
        <td>4</td>
        <td>maimai96</td>
        <td>요즘 유행하는 수플레 팬케익 꿀팁있나요??ㅠㅠ</td>
        <td>AllAboutCook</td>
        <td>2018-07-12</td>
      </tr>
            <tr>
        <td>3</td>
        <td>김치킬러</td>
        <td>신김치로 해먹을수 있는것중에 맛있는건 뭐가 있나요??</td>
        <td>AllAboutCook</td>
        <td>2018-07-09</td>
      </tr>
            <tr>
        <td>2</td>
        <td>미카엘</td>
        <td>주물팬 싼곳 알고계시나요??</td>
        <td>AllAbout도구</td>
        <td>2018-07-09</td>
      </tr>    
           <tr>
        <td>1</td>
        <td>밥블레스유</td>
        <td>혹시 마라탕 만들때 사골국물 넣어도될까요?</td>
        <td>AllAboutCook</td>
        <td>2018-07-03</td>
      </tr>
     
     
      
   
    </tbody>
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
      <label for="tab3">문의&입금 게시판</label>   
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
    <tbody>
      <tr>
        <td>8</td>
        <td>오수진</td>
        <td>입금확인 부탁드려요</td>
        <td>입금확인*</td>
        <td>2018-07-6</td>
   
      </tr>
      <tr>
        <td>7</td>
        <td>넉살언니</td>
        <td>입금했습니다. 확인부탁드려욥</td>
        <td>입금확인*</td>
        <td>2018-07-06</td>
  
      </tr>
      <tr>
        <td>6</td>
        <td>김수수무지개떡</td>
        <td>혹시 클래스 변경할 수 있나요? </td>
        <td>기타문의</td>
        <td>2018-07-05</td>

      </tr>
      <tr>
        <td>5</td>
        <td>현미누릉지</td>
        <td>취소문의 드려요!!!</td>
        <td>취소/변경</td>
        <td>2018-07-02</td>
 
      </tr>
      <tr>
        <td>4</td>
        <td>호이스틱</td>
        <td>입금확인부탁드려요</td>
        <td>입금확인*</td>
        <td>2018-07-01</td>
      </tr>
            <tr>
        <td>3</td>
        <td>육회냠냠</td>
        <td>늦어서 죄송합니다. 입금확인부탁드려요~</td>
        <td>입금확인*</td>
        <td>2018-06-21</td>
      </tr>
            <tr>
        <td>2</td>
        <td>김부스락스락</td>
        <td>입금확인부탁드려요</td>
        <td>입금확인*</td>
        <td>2018-06-21</td>
      </tr>    
           <tr>
        <td>1</td>
        <td>피카츄</td>
        <td>입금확인 부탁드립니다^^*</td>
        <td>입금확인*</td>
        <td>2018-06-20</td>
      </tr>
     
     
      
   
    </tbody>
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