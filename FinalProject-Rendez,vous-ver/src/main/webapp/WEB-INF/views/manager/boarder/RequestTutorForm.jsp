<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

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
/* 구분 */

.row > .col > .table > tbody > tr > .text {
   display:inline-block;
   overflow: hidden;
   text-overflow: ellipsis;
   white-space: nowrap;
   width: 100px;
   height: 100%;
}
.td-hidden{
	display:none;
}
.content{
	margin:0 30%;
	width:770px;
}
.quickBtn{
	color:black;
	font-weight: 900;
}
/* 긴글 ...처리  */
.target{
display: inline-block; 
width: 75px; 
white-space: nowrap; 
overflow: hidden;
 text-overflow: ellipsis;

}
.new-icon{
    width:50px;
    height:50px;
    position: absolute;
    top:-35px;
}
.a-font-size{
size: 12px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
    
<script>
$(function(){
	
	/* 튜터 신청자 CheckBox  */
    $("#all").change(function(){            //id전체 체크박스에 변화가 있을떄 
        if($("#all").prop("checked")){      //id전체 체크박스에 체크가 되면
            $(".tutor").prop("checked",true);         //일반사용자에 체크
        }else{                              //전체 체크박스에 체크가 해제 되면
            $(".tutor").prop("checked",false);       //일반사용자에 체크 해제
        }
    });
    $(".tutor").change(function(){         //전문사용자 체크박스에 변화가 있을때
        if($(".tutor").prop("checked")){   //전문사용자 체크박스와 유저 체크박스 둘다에 체크가 되면
            $("#all").prop("checked",true);                               //id전체 체크박스에 체크
        }else{                                                            //전문사용자 체크박스와 유저 체크박스 둘중 하나라도 체크 되어 있지 않으면  
            $("#all").prop("checked",false);                              //id전체 체크박스에 체크해제
        }
    });
    /* ==================================================================  */
    
	$(".listArea td").mouseenter(function() {
		$(this).parent().css({
			"background" : "skyblue",
			"cursor" : "pointer"
		});
	}).mouseout(function() {
		$(this).parent().css("background", "white");
	}).click(function() {
		var uNo = $(this).parent().children().eq(0).html();
		
		location.href="tutorCert.do?uNo="+uNo+"&pageName=튜터 증명사진 확인 페이지";
		
	});
    
	
   if( ${ AllTutorlist ne null } )
    {
    	/* $(".TutorMember").css("border","solid 1px #dee2e6"); */
    	$(".RequestTutor").removeClass("active");
    	$(".TutorMember").addClass("active");
    	
    }

   $('[data-toggle="tooltip"]').tooltip();
	 
});






</script>

</head>
<body>
	
	<c:import url="../mnCommon/menubar.jsp" >
		<c:param name="msg" value="${ msg }"/>
	</c:import>
	<br>
	<br>
	
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
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a href="mnRequest.do?pageName=request" class="nav-link active btn border-bottom-0 RequestTutor a-font-size">튜터 신청자 (${ currentRequest })</a>
                    </li>
                    <li class="nav-item">
			            <a href="grantTutor.do?pageName=request&currentRequest=${ currentRequest }" class="nav-link btn border-bottom-0 TutorMember a-font-size">튜터 회원</a>
		            </li>
                </ul>
                <!--tutorMember.do  -->
                
               	 	<form action="changeTutor.do" method="get" id="tutorForm" >
                	<label for="all">전체</label>
					<input type="checkbox" id="all">
				<table class="table listArea">
					<thead class="thead-dark">
						<tr>
							<th scope="col">No.</th>
							<th scope="col">아이디</th>
							<th scope="col">튜터 별명</th>
							<th scope="col">튜터 경력</th>
							<th scope="col">소셜미디어</th>
							<th scope="col">허용 여부</th>
						</tr>
					</thead>
					
					<tbody>
						<c:if test="${ RequestTutorlist ne null }">
						
						<c:forEach var="m" items="${ RequestTutorlist }">
							<c:if test="${ m.tuStatus eq 'R' }">
								<tr>
									<td class="td-hidden txt_line">${m.uNo}</td>
									<th scope="row"><input type="checkbox" name="uNo" class="tutor" value="${ m.uNo }"> &nbsp;${m.uNo}</th>
									<td>${ m.uId }</td>
									<td><span class="target" data-toggle="tooltip" data-placement="top" title="${ m.tuNick }">${ m.tuNick }</span></td>
									<td class="target" data-toggle="tooltip" data-placement="top" title="${ m.tuCareer }">${ m.tuCareer } </td>
									<td style="width:150px;">
										<c:choose>
										<c:when test="${m.tuSocial eq null }">없음</c:when>
										<c:otherwise>
											${m.tuSocial }
										</c:otherwise>
										</c:choose>
									</td>
									<td style="text-align:center">
										<c:if test="${ m.tuStatus eq 'R' }">
											<i class="fas fa-times"></i>
										</c:if>
										<c:if test="${ m.tuStatus eq 'Y'}">
											<i class="fas fa-check"></i>
										</c:if>
									</td>
								</tr>
							</c:if>
						</c:forEach>
						</c:if>
						
					<c:if test="${ AllTutorlist ne null }">	
						<c:forEach var="m" items="${ AllTutorlist }">
							<c:if test="${ m.tuStatus eq 'Y' }">
								<tr>
									<td class="td-hidden">${m.uNo}</td>
									<th scope="row"><input type="checkbox" name="uNo" class="tutor" value="${ m.uNo }"> &nbsp;${m.uNo}</th>
									<td>${ m.uId }</td>
									<td class="target" data-toggle="tooltip" data-placement="top" title="${ m.tuNick }">${ m.tuNick }</td>
									<td style="width:150px;">${ m.tuCareer } </td>
									<td style="width:150px;">
										<c:choose>
										<c:when test="${m.tuSocial eq null }">없음</c:when>
										<c:otherwise>
											${m.tuSocial }
										</c:otherwise>
										</c:choose>
									</td>
									<td style="text-align:center">
										<c:if test="${ m.tuStatus eq 'R' }">
											<i class="fas fa-times"></i>
										</c:if>
										<c:if test="${ m.tuStatus eq 'Y'}">
											<i class="fas fa-check"></i>
										</c:if>
									</td>
								</tr>
								</c:if>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
				<hr>
					<input type="hidden" value="${ pi.currentPage }" name="page">
					<input type="hidden" value="" name="cStr" class="cStr">
					<c:if test="${ RequestTutorlist ne null }">
						<button type="submit" class="btn btn-info" onclick="changeButton(this,'R')">허용하기</button>
					</c:if>
					<c:if test="${ AllTutorlist ne null }">
						<button type="submit" class="btn btn-info" onclick="changeButton(this,'Y')">비허용하기</button>
					</c:if>
				<script>
					function changeButton(value,value2){
						$(".cStr").val(value2);
									
					}
				</script>
				
				</form>
				<c:if test="${ AllTutorlist ne null }">	
					<!-- 검색바   -->
					<br>
					<div class="searchArea" align="center">
						
						<c:url var="ttSearch" value="tutorSearch.do">
							<c:param name="page" value="${ pi.currentPage -1 }" />
						</c:url>
					
						<form action="tutorSearch.do" name="searchForm" method="get">
	
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
				</c:if>
				<hr>
				<br>
				<c:if test="${ RequestTutorlist ne null  }">
				<!-- 페이징 처리  -->
				<nav aria-label="...">
					<ul class="pagination justify-content-center">
						<!-- 이전  -->
							<c:if test="${ pi.currentPage <= 1 }">
								<li class="page-item disabled">
									<a class="page-link" href="#" tabindex="-1">이전</a>
								</li>
							</c:if>
					<c:if test="${ pi.currentPage > 1 }">
								<c:url var="before" value="mnRequest.do">
									<c:param name="page" value="${ pi.currentPage -1 }" />
								</c:url>
								<li class="page-item">
									<a class="page-link" href="${ before }" tabindex="-1">이전</a>
								</li>
							</c:if>
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
										<c:url var="pagination" value="mnRequest.do">
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
						<!-- 다음  -->
						<c:if test="${ pi.currentPage >= pi.maxPage }">
							<li class="page-item disabled"><a class="page-link disabled"
								href="#">Next</a></li>
						</c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="after" value="mnRequest.do">
								<c:param name="page" value="${ pi.currentPage + 1 }" />
							</c:url>
							<li class="page-item "><a class="page-link"
								href="${ after }">다음</a></li>
						</c:if>
					</ul>
				</nav>
				</c:if>
                <c:if test="${ AllTutorlist ne null }">
									<hr>
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
					<c:if test="${ pi.currentPage > 1 }">
								<c:url var="before" value="grantTutor.do">
									<c:param name="page" value="${ pi.currentPage -1 }" />
								</c:url>
								<li class="page-item">
									<a class="page-link" href="${ before }" tabindex="-1">이전</a>
								</li>
							</c:if>
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
										<c:url var="pagination" value="grantTutor.do">
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
						<!-- 다음  -->
						<c:if test="${ pi.currentPage >= pi.maxPage }">
							<li class="page-item disabled"><a class="page-link disabled"
								href="#">Next</a></li>
						</c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="after" value="grantTutor.do">
								<c:param name="page" value="${ pi.currentPage + 1 }" />
							</c:url>
							<li class="page-item "><a class="page-link"
								href="${ after }">다음</a></li>
						</c:if>
					</ul>
				</nav>
				</c:if>
			
			</div>
		</div>
	</div>
	
	
	<br><br><br><br><br><br><br><br>
	<c:import url="../../common/footbar.jsp"/>
	
	    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    
	
</body>
</html>