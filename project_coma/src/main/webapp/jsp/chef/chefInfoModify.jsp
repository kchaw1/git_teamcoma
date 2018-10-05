<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/js/addressapi.js"></script>
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
  background:#dbebeae0;
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

#check{
	    margin-left: 300px;
    margin-top: -31px;
}
</style>
</head>
<body>

   <div class="cell">
  <div class="content">
<form method="post" action="<c:url value="/chef/chefinfo-update.do"/>" name="mForm" onsubmit="return doAction()" enctype="multipart/form-data" >
    <div class="Add-photo">
      <h2>쉐프 정보 수정</h2>
      <div class="Main_picture">
        <div class="picture">
          <span>첨부파일 </span>
          <input type="file" name="fileSysName"  />
        </div>
      </div>
    </div>
    <div class="Tell-us">
      <div class="Main_form">
        <div class="form">
            <div class="form-group">
              <label>아이디</label>   
              <div class="group">
              	${member.id}
              </div>
            </div>
            <div class="form-group">
              <label>비밀번호</label>
              <div class="group">
                <input type="password" name="password" placeholder="8글자 이상 16글자 이하">
              </div>
            </div>
            <div class="form-group">
              <label>비밀번호 확인</label>
              <div class="group">
                <input type="password" name="password2">
              </div>
            </div>
            <div class="form-group">
              <label>Email</label>
              <div class="group">
                <input type="email" name="email" value="${member.email}">
              </div>
            </div>
            <div class="form-group">
              <label>이름</label>
              <div class="group">
                <input type="text" name="name" value="${member.name}">
              </div>
              </div>
              <div class="form-group">
              <label>주소</label>
              <div class="group" >
                <input type="text" id="addr1" name="mainAddr" value="${member.mainAddr}"><button id="addr2" onclick="execPostCode()">주소찾기</button>
              </div>
              </div>
              <div class="form-group">
              <label>나머지 주소</label>
              <div class="group">
                <input type="text" name="detailAddr" id="addr3" value="${member.detailAddr}">
              </div>
            </div>
            <div class="form-group">
              <label>휴대폰 번호</label>
              <div class="group">
                <input type="text" name="phoneNumber" value="${member.phoneNumber}" placeholder=" '-'빼고 입력해주세요">
              </div>
            </div>
            <div class="form-group">
              <label>가입분류</label>
              <div class="group">
                <select name="signupClassify">
                  <option value="0"  selected>선택하세요</option>
                  <option value="1"   >쉐프</option>
                  <option value="2"  >수강생</option>
                  
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
                 <button type="submit" value="찾기">수정</button>
                 <span><a href="<c:url value="/jsp/main/main.jsp"/>">메인으로 돌아가기</a></span>
               </div>
            </div>
            
        </div>
      </div>
    </div>
  </form>
  </div>
</div>



<script>

function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           console.log(data.zonecode);
           console.log(fullRoadAddr);
           
           
           $("[name=addr1]").val(data.zonecode);
           $("[name=addr2]").val(fullRoadAddr);
           
           document.getElementById('addr2').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('addr1').value = fullRoadAddr;
           
       }
    }).open();
}


$("#check").click(function(){
	var idArr = new Array();
	<c:forEach var="item" items="${list}">
		idArr.push( '${item}' );
	</c:forEach>
	
	for(var i = 0; i<idArr.length; i++){
		if($("#id").val() == idArr[i]){
			alert("중복된 아이디 입니다.")
			$("#id").val("").focus()
			return false;
		}
	}
	alert("사용가능한 아이디 입니다.")
	$("password").focus();
	
})


function doAction(){
	
    
    var f = document.mForm
    
    if(f.id.value == "" ){
        alert("아이디를 입력하세요")
        f.id.focus()
        return false
    }
    
    if(f.password.value == ""){
        alert("패스워드를 입력하세요")
        f.password.focus()
        return false
    }
    
    if(f.password.value.length < 8 || f.password.value.length > 16){
        alert("비밀번호는 8글자이상 16글자 이하 입니다.")
        f.id.focus()
        return false
    }
    
    if(f.password.value != f.password2.value){
        alert("입력된 패스워드가 서로  다릅니다.")
        
        f.password.focus()
        f.password.select()

        f.password2.value = ""
        return false
    }
    if(f.email.value == ""){
        alert("메일을 입력하세요")
        f.email.focus()    
        return false
    }
    if(f.name.value == ""){
        alert("이름을 입력하세요")
        f.name.focus()    
        return false
    }
    if(f.mainAddr.value == ""){
        alert("주소를 입력하세요")
        f.mainAddr.focus()    
        return false
    }
    if(f.detailAddr.value == ""){
        alert("상세주소를 입력하세요")
        f.detailAddr.focus()    
        return false
    }
    if(f.phoneNumber.value == ""){
        alert("핸드폰 번호를 입력하세요")
        f.phoneNumber.focus()    
        return false
    }
    if(f.signupClassify.value == "0" ){
        alert("가입분류를 선택하세요")
        f.signupClassify.focus()    
        return false
    }
    if(f.month.value == "0" ){
        alert("month을 선택하세요")
        f.month.focus()    
        return false
    }
    if(f.day.value == "0" ){
        alert("day을(를) 선택하세요")
        f.day.focus()    
        return false
    }
    if(f.year.value == "0" ){
        alert("year을(를) 선택하세요")
        f.year.focus()    
        return false
    }
    
    alert("수정되었습니다.")
}
</script>

	
</body>
</html>