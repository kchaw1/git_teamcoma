<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
<link rel="stylesheet" href="<c:url value="/css/main.css" />" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>


@import url('https://fonts.googleapis.com/css?family=Raleway');
* {

  font-family: 'Raleway', sans-serif;
  color:#93935f;
  box-sizing: border-box;
  
}

body {
    background-image:url(https://source.unsplash.com/R3LcfTvcGWY/1600x800);
    display: table;
    width: 100%;
    height: -webkit-fill-available;
    margin: 0;
    opacity: 5.5;
    
}
.cell {
  display:table-cell;
  vertical-align:middle;
  text-align:center;
}
.content {
  display:inline-block;
  padding:15px;
  width:500px;
  box-shadow:0px 0px .10px 10px rgba(5,5,5,.2);
  background:#dbebeacf;
  border-radius:3px;
  
  
}
.Add-photo {
  text-align:left;
}
.Add-photo span {
  font-size:12px;
  margin-top:-5px;
  display:block;
}
.Main_picture {
  text-align:center;
  margin-top:30px;
  margin-bottom:30px;
}
.picture {
  display:inline-block;
  width:175px;
  height:175px;
  background:#98979af7;
}
.picture span
{
  margin: 46% auto;
  color: white;
}
.Tell-us {
  text-align:left;
}
.Tell-us span {
  font-size:12px;
  margin-top:-5px;
  display:block;
  color: black;
}
.Main_form {
  margin-top:30px;
  margin-bottom:30px;
  padding-left:20px;
  
}

.Main_form label , .group {
  display:inline-block;
  width:calc(100% - 105px);
}
.Main_form label {
  width:100px;
  font-size:13px;
  color: black;
}
.Main_form .group input[type="text"] , .Main_form .group input[type="email"] , .Main_form .group input[type="password"] {
    width: 85%;
    padding: 2px;
    padding-left: 11px;
    height: 25px;
    border: none;
    outline: none;
    background: transparent;
    box-shadow: 0px 0px 0.3px 1px rgba(0,0,0,.2);
    border: 1px solid black;
}
.Main_form .group select {
    width: 88%;
    padding: 2px;
    padding-left: 11px;
    height: 30px;
    border: none;
    outline: none;
    background: transparent;
    box-shadow: 0px 0px 0.3px 1px rgba(0,0,0,.2);
    border: 1px solid black;
    color: black;
}

.Main_form .date select {
    width: 26%;
    margin-right: 14.5px;
}

.Main_form .group select option {
  background:#262626;
}
.form-group {
  margin-top:15px;
  margin-bottom:15px;
}

.form-group .submit {
  display: inline-block;
  margin-left: 26%;
}
.form-group .submit button{
  width:200px;
  height:40px;
  background:#a54549;
  border:none;
  outline:none;
  border-radius:5px;
  margin-top:15px;
  margin-bottom:15px;
}
.form-group .submit span
{
  padding-left:3px;
}
</style>
</head>
<body>
   <div class="cell">
  <div class="content">
    <div class="Add-photo">
      <h2>회원 정보 수정</h2>
      <div class="Main_picture">
        <div class="picture">
          <span>첨부파일 </span>
          <input type="file" />
        </div>
      </div>
    </div>
    <div class="Tell-us">
      <div class="Main_form">
        <div class="form">
          <form method="post" action="">
            <div class="form-group">
              <label>아이디</label>   
              <div class="group">
                <input type="text" name="id">
              </div>
            </div>
            <div class="form-group">
              <label>비밀번호</label>
              <div class="group">
                <input type="password" name="password">
              </div>
            </div>
            <div class="form-group">
              <label>비밀번호 확인</label>
              <div class="group">
                <input type="password" name="checkpass">
              </div>
            </div>
            <div class="form-group">
              <label>Email</label>
              <div class="group">
                <input type="email" name="email">
              </div>
            </div>
            <div class="form-group">
              <label>이름</label>
              <div class="group">
                <input type="text" name="name">
              </div>
              <div class="form-group">
              <label>주민등록 번호</label>
              <div class="group">
                <input type="text" name="juminNo">
              </div>
              <div class="form-group">
              <label>주소</label>
              <div class="group">
                <input type="text" name="addr">
              </div>
              <div class="form-group">
              <label>나머지 주소</label>
              <div class="group">
                <input type="text" name="addrs">
              </div>
            </div>
            <div class="form-group">
              <label>휴대폰 번호</label>
              <div class="group">
                <input type="text" name="phone">
              </div>
            </div>
            <div class="form-group">
              <label>가입분류</label>
              <div class="group">
                <select name="check">
                  <option value="0"  selected >쉐프</option>
                  <option value="1"  >수강생</option>
                  
                </select>
              </div>
            </div>
            <div class="form-group">
              <label>생년월일</label>
              <div class="group date">
                <select id="month" name="month">
                     <option value="0" selected>month</option>
                     <option value="1" >1</option>
                     <option value="2" >2</option>
                     <option value="3" >3</option>
                     <option value="4" >4</option>
                     <option value="5" >5</option>
                     <option value="6" >6</option>
                     <option value="7" >7</option>
                     <option value="8" >8</option>
                     <option value="9" >9</option>
                     <option value="10" >10</option>
                     <option value="11" >11</option>
                     <option value="12" >12</option>
                </select>
                
                <select id="day" name="day">
                     <option value="0" selected>day</option>
                     <option value="1" >1</option>
                     <option value="2" >2</option>
                     <option value="3" >3</option>
                     <option value="4" >4</option>
                     <option value="5" >5</option>
                     <option value="6" >6</option>
                     <option value="7" >7</option>
                     <option value="8" >8</option>
                     <option value="9" >9</option>
                     <option value="10" >10</option>
                     <option value="11" >11</option>
                     <option value="12" >12</option>
                     <option value="13" >13</option>
                     <option value="14" >14</option>
                     <option value="15" >15</option>
                     <option value="16" >16</option>
                     <option value="17" >17</option>
                     <option value="18" >18</option>
                     <option value="19" >19</option>
                     <option value="20" >20</option>
                     <option value="21" >21</option>
                     <option value="22" >22</option>
                     <option value="23" >23</option>
                     <option value="24" >24</option>
                     <option value="25" >25</option>
                     <option value="26" >26</option>
                     <option value="27" >27</option>
                     <option value="28" >28</option>
                     <option value="29" >29</option>
                     <option value="30" >30</option>
                     <option value="31" >31</option>
                </select>
                
                <select id="year" name="year">
                    <option value="0" selected>year</option>
                    <option value="2017" >2017</option>
                    <option value="2016" >2016</option>
                    <option value="2015" >2015</option>
                    <option value="2014" >2014</option>
                    <option value="2013" >2013</option>
                    <option value="2012" >2012</option>
                    <option value="2011" >2011</option>
                    <option value="2010" >2010</option>
                    <option value="2009" >2009</option>
                    <option value="2008" >2008</option>
                    <option value="2007" >2007</option>
                    <option value="2006" >2006</option>
                    <option value="2005" >2005</option>
                    <option value="2004" >2004</option>
                    <option value="2003" >2003</option>
                    <option value="2002" >2002</option>
                    <option value="2001" >2001</option>
                    <option value="2000" >2000</option>
                    <option value="1999" >1999</option>
                    <option value="1998" >1998</option>
                    <option value="1997" >1997</option>
                    <option value="1996" >1996</option>
                    <option value="1995" >1995</option>
                    <option value="1994" >1994</option>
                    <option value="1993" >1993</option>
                    <option value="1992" >1992</option>
                    <option value="1991" >1991</option>
                    <option value="1990" >1990</option>
                    <option value="1989" >1989</option>
                    <option value="1988" >1988</option>
                    <option value="1987" >1987</option>
                    <option value="1986" >1986</option>
                    <option value="1985" >1985</option>
                    <option value="1984" >1984</option>
                    <option value="1983" >1983</option>
                    <option value="1982" >1982</option>
                    <option value="1981" >1981</option>
                    <option value="1980" >1980</option>
                    <option value="1979" >1979</option>
                    <option value="1978" >1978</option>
                    <option value="1977" >1977</option>
                    <option value="1976" >1976</option>
                    <option value="1975" >1975</option>
                    <option value="1974" >1974</option>
                    <option value="1973" >1973</option>
                    <option value="1972" >1972</option>
                    <option value="1971" >1971</option>
                    <option value="1970" >1970</option>
                    <option value="1969" >1969</option>
                    <option value="1968" >1968</option>
                    <option value="1967" >1967</option>
                    <option value="1966" >1966</option>
                    <option value="1965" >1965</option>
                    <option value="1964" >1964</option>
                    <option value="1963" >1963</option>
                    <option value="1962" >1962</option>
                    <option value="1961" >1961</option>
                    <option value="1960" >1960</option>
                    <option value="1959" >1959</option>
                    <option value="1958" >1958</option>
                    <option value="1957" >1957</option>
                    <option value="1956" >1956</option>
                    <option value="1955" >1955</option>
                    <option value="1954" >1954</option>
                    <option value="1953" >1953</option>
                    <option value="1952" >1952</option>
                    <option value="1951" >1951</option>
                    <option value="1950" >1950</option>
                    <option value="1949" >1949</option>
                    <option value="1948" >1948</option>
                    <option value="1947" >1947</option>
                    <option value="1946" >1946</option>
                    <option value="1945" >1945</option>
                    <option value="1944" >1944</option>
                    <option value="1943" >1943</option>
                    <option value="1942" >1942</option>
                    <option value="1941" >1941</option>
                    <option value="1940" >1940</option>
                    <option value="1939" >1939</option>
                    <option value="1938" >1938</option>
                    <option value="1937" >1937</option>
                    <option value="1936" >1936</option>
                    <option value="1935" >1935</option>
                    <option value="1934" >1934</option>
                    <option value="1933" >1933</option>
                    <option value="1932" >1932</option>
                    <option value="1931" >1931</option>
                    <option value="1930" >1930</option>
                </select>
              </div>
            </div>
             <div class="form-group">
               <div class="submit">
                 <button><a href="<c:url value="/main/main.jsp"/>">수정하기</a></button>
                 <span><a href="<c:url value="/jsp/student/student.jsp"/>">개인페이지 돌아가기</a></span>
               </div>
            </div>
            
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

   
</body>
</html>