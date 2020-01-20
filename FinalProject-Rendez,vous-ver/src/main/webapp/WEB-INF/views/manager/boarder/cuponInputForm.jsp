<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

 	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- jquery UI 링크 -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body>


	<form action="couSend.do" method="get">
	<span>회원 번호 : </span><input type="text" name="arrayUno" id="arrayUno"><br>					
	<input type="text" name="cName" id="cName" placeholder="쿠폰 이름"><br><br>	
		<select name="disRate"class="selectpicker">
	      <c:forEach var="i" begin="1" end="9">					         
			  <option value="${10 * i }">${ i*10 }%할인</option>        
	      </c:forEach>
		</select>
    <p><input type="text" id="from" placeholder="시작일을 선택하세요" name="startDate"> ~ <input type="text" id="to" name="endDate" placeholder="종료일을 선택하세요."></p>
		<button type="submit" class="btn btn-success" onclick="sendCoupon" id="sendBtn">쿠폰 보내기</button>
	</form>

<!-- jquery CDN -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- jquery UI CDN -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<!-- 언어 별 CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.9.2/i18n/jquery.ui.datepicker-ko.min.js"></script>
<!-- Date 라이브러리 -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

<script>
//날자 API
/* 부모창에서 자식창으로 값을 받은 것 리턴  */
	
	  function _GET(search) {
            var obj = {};
            var uri = decodeURI(search);
                uri = uri.slice(1,uri.length);
     
            var param = uri.split('&');
            
            for (var i = 0; i < param.length; i++) {
                var devide = param[i].split('=');
                obj[devide[0]] = devide[1];
            }
            return obj;
        }
     
        window.onload = function () {
            var search = window.location.search;
            var getData =  _GET(search);
            var uNo = document.querySelector('#arrayUno');
     		
            uNo.value = getData.uNo;
        }
        
	/* ================================================================================================  */
		$("#sendBtn").click(function(){
			
			window.open("about:black","_self").close();
			
		})
	
	
	/* ================================================================================================  */

	var option = {
	// datepicker 애니메이션 타입
	// option 종류 : "show" , "slideDown", "fadeIn", "blind", "bounce", "clip", "drop", "fold", "slide"
	showAnim : "slideDown",
	// 해당 월의 다른 월의 날짜가 보이는 여부, 예를 들면 10월이면 전후에 9월 마지막과 11월의 시작 일이 보이는 여부입니다. 즉, 달력이 꽉 차 보이게 하는 것
	showOtherMonths: true,
	// 선택 여부 (showOtherMonths 옵션과 같이 일치시키지 않으면 에러가 발생합니다.)
	selectOtherMonths: true,
	// 달력 밑에 오늘과 닫기 버튼이 보인다.
	showButtonPanel: true,
	// 년 월이 셀렉트 박스로 표현 되어서 선택할 수 있다.
	changeMonth: true,
	changeYear: true,
	// 한번에 보이는 개월 수
	numberOfMonths: 3,
	// 데이터 포멧
	dateFormat: "yy-mm-dd",
	// 텍스트 박스 옆의 달력 포시
	showOn: "button",
	//이미지 타입인지 버튼 타입인지 설정
	buttonImageOnly: true,
	// 이미지 경로
	buttonImage: "https://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
	// 버튼 타입이면 버튼 값
	buttonText: "Select date",
	// alt 데이터 포멧
	altFormat: "DD, d MM, yy",
	// 선택 가능한 날짜(수 형식) - 현재 기준 -20일
	minDate: -20,
	// 선택 가능한 최대 날짜(문자 형식) - 현재 기준 +1월 +20일
	maxDate: "+1M +20D",
	// 주 표시
	showWeek: true
	};
	var optionFrom = option;
	optionFrom.altField = "#alternateFrom";
	var dateFormat = "mm/dd/yy";
	// 시작일이 선택이 되면 종료일은 시작일 보다 앞을 선택할 수 없다.
	var from = $( "#from" )
	.datepicker(optionFrom)
	.on( "change", function() {
	to.datepicker( "option", "minDate", getDate( this ) );
	});
	var optionTo = option;
	optionTo.altField = "#alternateTo";
	// 종료일이 선택이 되면 시작일은 시작일 보다 앞을 선택할 수 없다.
	var to = $( "#to" )
	.datepicker(optionTo)
	.on( "change", function() {
	from.datepicker( "option", "maxDate", getDate( this ) );
	});
	function getDate( element ) {
	return moment(element.value).toDate();
	}
	
	

</script>
</body>
</html>