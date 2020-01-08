<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.input-group {
	width: 30%;
}

.selectpicker {
	float: left;
}

.datePicker {
	text-align: center;
	width: 80px;
}
.td-hidden{
	display: none;
}

</style>
</head>
<body>
	<c:import url="../mnCommon/menubar.jsp" />
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	<br>
	<h1 align="center">회원 관리 입니다.</h1>

	

	<div class="container">
		<hr>
		<div class="row">
			<div class="col">
				<table class="table listArea">
					<thead class="thead-dark">
						<tr>
							<th scope="col">회원 번호</th>
							<th scope="col">회원 이메일</th>
							<th scope="col">회원명</th>
							<th scope="col">성별</th>
							<th scope="col">나이</th>
							<th scope="col">타입</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="m" items="${ list }">
							<tr>
								<th scope="row">${m.uNo}</th>
								<td>${ m.uId }</td>
								<td>${ m.uName }</td>
								<td>
									<c:if test="${ m.uGender eq 'M'}">
										남자
									</c:if>
									<c:if test="${ m.uGender eq 'W'}">
										여자
									</c:if>
								</td>
								<td>${ m.uAge }</td>
								<td>
									<c:if test="${ m.uType eq 'N' }">
										일반회원
									</c:if>
									<c:if test="${ m.uType eq 'T'}">
										튜터
									</c:if>
								</td>
								<td class="td-hidden">${m.uChangeName }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr>

				<!-- 검색바   -->
				
				<div class="searchArea" align="center">
					<form action="mnsearch.do" name="searchForm" method="get">

						<div class="input-group">
							<div class="input-group-append">
								<select id="searchCondition" name="searchCondition"
									class="selectpicker">
									<option value="all"
										<c:if test="${ search.searchCondition == 'all' }">selected</c:if>>
										전체</option>
									<option value="mName"
										<c:if test="${ search.searchCondition == 'mName' }">selected</c:if>>
										회원명</option>
									<option value="mType"
										<c:if test="${ search.searchCondition == 'mType' }">selected</c:if>>
										타입</option>
								</select>
							</div>
							<input type="search" placeholder="회원을 검색하세요" name="searchValue"
								value="${ search.searchValue }" aria-describedby="button-addon5"
								class="form-control">
							<div class="input-group-append">
								<button id="button-addon5" type="submit" class="btn btn-primary">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</form>
				</div>
				<br>
				<!-- 페이징 처리  -->
				<nav aria-label="...">
					<ul class="pagination justify-content-center">
						<!-- 이전  -->
							<c:if test="${ pi.currentPage <= 1 }">
								<li class="page-item disabled">
									<a class="page-link" href="#" tabindex="-1">이전</a>
								</li>
							</c:if>
						
						<c:if test="${ search eq null }">
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="before" value="mn.do">
									<c:param name="page" value="${ pi.currentPage -1 }" />
								</c:url>
								<li class="page-item">
									<a class="page-link" href="${ before }" tabindex="-1">이전</a>
								</li>
							</c:if>
						</c:if>
						<c:if test="${ search ne null }">
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="before" value="mnsearch.do">
									<c:param name="page" value="${ pi.currentPage -1 }" />
									<c:param name="searchCondition" value="${ search.searchCondition }"/>
									<c:param name="searchValue" value="${ search.searchValue }"/>
								</c:url>
								<li class="page-item">
									<a class="page-link" href="${ before }" tabindex="-1">이전</a>
								</li>
							</c:if>
						</c:if>
						
						<c:if test="${ search eq null }">	
							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:choose>
									<c:when test="${ p eq pi.currentPage }">
										<li class="page-item active">
											<a class="page-link" href="#">
												${ p } <span class="sr-only"></span>
											</a>
										</li>
									</c:when>
									<c:otherwise>
										<c:url var="pagination" value="mn.do">
											<c:param name="page" value="${ p }" />
										</c:url>
										<li class="page-item">
											<a class="page-link" href="${ pagination }">${ p } 
												<span class="sr-only"></span>
											</a>
										</li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:if>
						
						<c:if test="${ search ne null }">	
							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:choose>
									<c:when test="${ p eq pi.currentPage }">
										<li class="page-item active">
											<a class="page-link" href="#">
												${ p } <span class="sr-only"></span>
											</a>
										</li>
									</c:when>
									<c:otherwise>
										<c:url var="pagination" value="mnsearch.do">
											<c:param name="page" value="${ p }" />
											<c:param name="searchCondition" value="${ search.searchCondition }"/>
											<c:param name="searchValue" value="${ search.searchValue }"/>
										</c:url>
										<li class="page-item">
											<a class="page-link" href="${ pagination }">${ p } 
												<span class="sr-only"></span>
											</a>
										</li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:if>
						
						<!-- 다음  -->
						<c:if test="${ search eq null}">
						
						<c:if test="${ pi.currentPage >= pi.maxPage }">
							<li class="page-item disabled"><a class="page-link disabled"
								href="#">Next</a></li>
						</c:if>
						
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="after" value="mn.do">
								<c:param name="page" value="${ pi.currentPage + 1 }" />
							</c:url>
							<li class="page-item "><a class="page-link"
								href="${ after }">다음</a></li>
						</c:if>
						</c:if>
						
						<c:if test="${ search ne null}">
						
						<c:if test="${ pi.currentPage >= pi.maxPage }">
							<li class="page-item disabled"><a class="page-link disabled"
								href="#">Next</a></li>
						</c:if>
						
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="after" value="mnsearch.do">
								<c:param name="page" value="${ pi.currentPage + 1 }" />
								<c:param name="searchCondition" value="${ search.searchCondition }"/>
								<c:param name="searchValue" value="${ search.searchValue }"/>
							</c:url>
							<li class="page-item "><a class="page-link"
								href="${ after }">다음</a></li>
						</c:if>
						</c:if>
						
					</ul>
				</nav>
			</div>
		</div>
	</div>
	
	
	<!-- 모달 영역  -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<br>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-6">
							<img src="" class="img-thumbnail" alt="Cinque Terre"
								width="304" height="236" id="pic"><br>
						</div>
						<div class="col-6">
							아이디 : <span id="id"></span><br>
							사는곳 : <span id="area"></span><br>
							나이 : <span id="age"></span><br>
							회원 타입 : <span id="type"></span><br>
						</div>
					</div>
					<br>
					<form action="couSend.do" method="get">
						<input type="hidden" name="uNo" id="uNo"><br>						
						<input type="hidden" name="uId" id="uId"><br>						
						<input type="text" name="cName" id="cName" placeholder="쿠폰 이름"><br><br>
						<!-- <input type="text" name="disRate" class="data_col9 w100p" onkeypress="return isNumberKey(event)" onkeyup="return delHangle(event)"><br> --> 
					
							<select name="disRate"class="selectpicker">
						      <c:forEach var="i" begin="1" end="9">					         
								  <option value="${0.1 * i }">${ i*10 }%할인</option>        
						      </c:forEach>
							</select><br><br>
					    <p><input type="text" id="from" placeholder="시작일을 선택하세요" name="startDate"> ~ <input type="text" id="to" name="endDate" placeholder="종료일을 선택하세요."></p>
						<button type="submit" class="btn btn-success" onclick="sendCoupon">쿠폰 보내기</button>
					</form>
				</div>
				
				
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
<!-- jquery CDN -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- jquery UI CDN -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<!-- 언어 별 CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.9.2/i18n/jquery.ui.datepicker-ko.min.js"></script>
<!-- Date 라이브러리 -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

	<script>
		// 3. 회원 상세보기 기능
		$(function() {

			$(".listArea td").mouseenter(function() {
				$(this).parent().css({
					"background" : "skyblue",
					"cursor" : "pointer"
				});
			}).mouseout(function() {
				$(this).parent().css("background", "white");
			}).click(function() {
				$("#id").html($(this).parent().children().eq(1).html());
				$("#age").html($(this).parent().children().eq(4).html());
				$("#type").html($(this).parent().children().eq(5).html());
				//alert($(this).parent().children().eq(6).html());
				$("#pic").attr("src","resources/user/img/"+$(this).parent().children().eq(6).html());
				
				$("#uNo").val($(this).parent().children().eq(0).html());
				$("#uId").val($(this).parent().children().eq(1).html());
								
				/* 멤버 사진 경로 바뀔 경우가 있음  */
				//$("#pic").attr("src","resources/managerResources/userPropic/"+$(this).parent().children().eq(6).html());
				
				$("#myModal").modal();
				
			});

		});
		
		/*  소수점 정규식  */
		function delHangle(evt){ //한글을 지우는 부분, keyup부분에 넣어준다.
		var objTarget = evt.srcElement || evt.target;
	    var _value = event.srcElement.value;  
	    if(/[ㄱ-ㅎㅏ-ㅡ가-핳]/g.test(_value)) { 
	    	//  objTarget.value = objTarget.value.replace(/[ㄱ-ㅎㅏ-ㅡ가-핳]/g,''); // g가 핵심: 빠르게 타이핑할때 여러 한글문자가 입력되어 버린다.
	    	objTarget.value = null;
	    	//return false;
	    }
	}
	
	function isNumberKey(evt) { // 숫자를 제외한 값을 입력하지 못하게 한다. 
        var charCode = (evt.which) ? evt.which : event.keyCode;
        // Textbox value       
        var _value = event.srcElement.value;     

        if (event.keyCode < 48 || event.keyCode > 57) { 
            if (event.keyCode != 46) { //숫자와 . 만 입력가능하도록함
                return false; 
            } 
        } 

        // 소수점(.)이 두번 이상 나오지 못하게
        var _pattern0 = /^\d*[.]\d*$/; // 현재 value값에 소수점(.) 이 있으면 . 입력불가
        if (_pattern0.test(_value)) {
            if (charCode == 46) {
                return false;
            }
        }

        // 두자리 이하의 숫자만 입력가능
        var _pattern1 = /^\d{1}$/; // 현재 value값이 2자리 숫자이면 . 만 입력가능
        // {숫자}의 값을 변경하면 자리수를 조정할 수 있다.
        if (_pattern1.test(_value)) {
            if (charCode != 46) {
                alert("한자리 이하의 숫자만 입력가능합니다");
                return false;
            }
        }

        // 소수점 둘째자리까지만 입력가능
        var _pattern2 = /^\d*[.]\d{1}$/; // 현재 value값이 소수점 둘째짜리 숫자이면 더이상 입력 불가
        // {숫자}의 값을 변경하면 자리수를 조정할 수 있다.
        if (_pattern2.test(_value)) {
            alert("소수점 첫째자리까지만 입력가능합니다.");
            return false;
        }     
        return true;
    }
	
	
	//날자 API
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



	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


</body>
</html>