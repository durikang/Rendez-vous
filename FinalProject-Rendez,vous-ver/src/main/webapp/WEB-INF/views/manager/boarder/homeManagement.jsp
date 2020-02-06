<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


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
.ft-clear{
	clear: both;
}
.content{
	margin:0 30%;
	width:770px;
}
.btn_color:hover{
	background: #28a745;
	transition:background-color .5s;
	font-weight: bold;
}

		

</style>
<script>

	window.onload=function(){
		/* 답변 안한것과 전체 답변 갯수 리턴  */
		var NoCount=String(${qnaCountlist.get(0)});
		var AllCount=String(${qnaCountlist.get(1)});	
		
		$("#allCount").html(AllCount.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+" 개");
		$("#noCount").html(NoCount.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+" 개");
		/*  */
	}
/* console.log(arr[3].replace(/\B(?=(\d{3})+(?!\d))/g, ",")); */

</script>
</head>
<body>
	<c:import url="../mnCommon/menubar.jsp" />
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	<br><br>

	<c:import url="../mnCommon/sidebar.jsp" >
		<c:param name="pageName" value="${ pageName }"/>
	</c:import>
	<div class="content">
	<c:import url="../mnCommon/jumbotron.jsp">
		<c:param name="pageName" value="${ pageName }"/>
	</c:import>
		<hr>
		<div class="row">
			<div class="col">
				
				<span class="count-area-left">(전체 문의 갯수 : <span id="allCount">0개</span> | 답변 안한 문의 : <span id="noCount" style="color:#dc3545">0개</span>)</span>
				<span class="count-area-right">
			
					<c:url var="allQna" value="rearrangement.do">
						<c:param name="page" value="${pi.currentPage }"/>
						<c:param name="type" value="allQna" />
					</c:url>
					<c:url var="noQna" value="rearrangement.do">
						<c:param name="page" value="${pi.currentPage }"/>
						<c:param name="type" value="noQna" />
					</c:url>
				
					<a id="all-qna" class="btn btn-muted btn_color btn-sm" href="${ allQna }">전체 문의</a> | 
					<a id="sort-qna" class="btn btn-muted btn_color btn-sm" href="${ noQna }">답변 안한 문의</a>			
				</span>
				<br>
				<table class="table listArea ft-clear">
					<thead class="thead-white">
						<tr>
							<th scope="col">문의 번호</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
							<th scope="col">작성일</th>
							<th scope="col">답변현황</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="q" items="${ qnaList }">
							<tr>
								<th scope="row">${q.qNo }</th>
								<td>${ q.qTitle }</td>
								<td>${ q.qWriter }</td>
								<td>${ q.qDate }</td>
								<c:if test="${q.aStatus == 'N' }">
								<td style="color:#dc3545">&nbsp;&nbsp;&nbsp;&nbsp; 
									${q.aStatus }										
								</td>
								</c:if>
								<c:if test="${q.aStatus == 'Y' }">
								<td style="color:#28a745">&nbsp;&nbsp;&nbsp;&nbsp; 
									${q.aStatus }										
								</td>
								</c:if>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr>

				<!-- 검색바   -->
				
				<div class="searchArea" align="center">
					<form action="supSearch.do" name="searchForm" method="get">

						<div class="input-group">
							<div class="input-group-append">
								<select id="searchCondition" name="searchCondition"
									class="selectpicker">
									<option value="qWriter"
										<c:if test="${ search.searchCondition == 'qWriter' }">selected</c:if>>
										회원명
									</option>
									<option value="qTitle"
										<c:if test="${ search.searchCondition == 'qTitle' }">selected</c:if>>
										문의 제목
									</option>
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
								<c:url var="before" value="manageHo.do">
									<c:param name="page" value="${ pi.currentPage -1 }" />
								</c:url>
								<li class="page-item">
									<a class="page-link" href="${ before }" tabindex="-1">이전</a>
								</li>
							</c:if>
						</c:if>
						<c:if test="${ search ne null }">
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="before" value="manageHo.do">
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
										<c:url var="pagination" value="manageHo.do">
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
					"background" : "#f7fafc",
					"cursor" : "pointer"
				});
			}).mouseout(function() {
				$(this).parent().css("background", "white");
			}).click(function() {

				var qNo=$(this).parent().children().eq(0).html();
				var page=${ pi.currentPage };
				
				location.href="qnaDetail.do?qNo="+qNo+"&page="+page;
				
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


	<br>
	<br>
	<br>
	<br>
	<br>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<br><br><br><br><br><br><br><br>
	<c:import url="../../common/footbar.jsp"/>

</body>
</html>