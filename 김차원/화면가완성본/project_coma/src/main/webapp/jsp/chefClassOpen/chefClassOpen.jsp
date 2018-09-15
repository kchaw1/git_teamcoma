<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>


<link rel="stylesheet" href="<c:url value="/css/chefClassOpen.css" />" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>

<c:import url="/jsp/common/leftMenuIncludeCss.jsp" />
<c:import url="/jsp/common/leftMenuIncludeScript.jsp" />
</head>
<body>
<div class="grid-wrap">
<c:import url="/jsp/common/menu.jsp" />
<div id="classOpenPageTitle">
<div>
<h1>클래스 개설</h1>
</div>
</div>
<div id="classSelectTitle">
<h3>클래스 선택</h3>
</div>
<div id="classSelect">

<div>
<dl class="dropdown"> 
    <dt>
    <a href="#">
      <span class="hida">Select</span>    
      <p class="multiSel"></p>  
    </a>
    </dt>
  
    <dd>
        <div class="mutliSelect">
            <ul>
                <li>
                    <input type="checkbox" value="한식" />한식</li>
                <li>
                    <input type="checkbox" value="일식" />일식</li>
                <li>
                    <input type="checkbox" value="양식" />양식</li>
                <li>
                    <input type="checkbox" value="중식" />중식</li>
                <li>
                    <input type="checkbox" value="동남아" />동남아</li>
                <li>
                    <input type="checkbox" value="퓨전" />퓨전</li>
            </ul>
            
        </div>
    </dd>
</dl>


</div>
</div>

<div id="classSelectDateTitle">
<h3>개설 날짜 선택</h3>
</div>
<div id="classSelectDate">
<div class="date-picker">
	<div class="input">
		<div class="result">Select Date: <span></span></div>
		<button><i class="fa fa-calendar"></i></button>
	</div>
	<div class="calendar"></div>
</div>
</div>


<div id="classPriceSetTitle">
<h3>수강료 입력</h3>
</div>
<div id="classPriceSet">
<input type="text" name="classprice" style="width=200px; height=30px;" />
</div>

<div id="classIntroduceTitle">
<h3>클래스 소개</h3>
</div>
<div id="classIntroduce">
<div>
<textarea cols="120" rows="10" name="classintroduce"></textarea>
</div>
</div>

<div id="classOpenButton">
<div id="buttons">
  <a href="#" class="btn blue">클래스 개설</a>
  <a href="#" class="btn orange">취소</a>
</div>
</div>

</div>

<script>
/*
Dropdown with Multiple checkbox select with jQuery - May 27, 2013
(c) 2013 @ElmahdiMahmoud
license: https://www.opensource.org/licenses/mit-license.php
*/

$(".dropdown dt a").on('click', function() {
$(".dropdown dd ul").slideToggle('fast');
});

$(".dropdown dd ul li a").on('click', function() {
$(".dropdown dd ul").hide();
});

function getSelectedValue(id) {
return $("#" + id).find("dt a span.value").html();
}

$(document).bind('click', function(e) {
var $clicked = $(e.target);
if (!$clicked.parents().hasClass("dropdown")) $(".dropdown dd ul").hide();
});

$('.mutliSelect input[type="checkbox"]').on('click', function() {

var title = $(this).closest('.mutliSelect').find('input[type="checkbox"]').val(),
title = $(this).val() + ",";

if ($(this).is(':checked')) {
var html = '<span title="' + title + '">' + title + '</span>';
$('.multiSel').append(html);
$(".hida").hide();
} else {
$('span[title="' + title + '"]').remove();
var ret = $(".hida");
$('.dropdown dt a').append(ret);

}
});


$(function() {
	  $( ".calendar" ).datepicker({
			dateFormat: 'dd/mm/yy',
			firstDay: 1
		});
		
		$(document).on('click', '.date-picker .input', function(e){
			var $me = $(this),
					$parent = $me.parents('.date-picker');
			$parent.toggleClass('open');
		});
		
		
		$(".calendar").on("change",function(){
			var $me = $(this),
					$selected = $me.val(),
					$parent = $me.parents('.date-picker');
			$parent.find('.result').children('span').html($selected);
		});
	});



</script>

</body>
</html>