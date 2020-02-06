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
.goTobtn{

	margin-bottom: 10px;
}
.content{
	margin:0 30%;
	width:770px;
}

.position-left{
	float: left;
}
.position-right{
	float: right;
}
.quickBtn{
line-height: 50px;
}
.link:hover{
	color:orange;
	cursor:pointer;
}
@media (min-width: 768px) {
  .container {
    width: 750px;
  }
}

@media (min-width: 992px) {
  .container {
    width: 940px;
  }
}
.goTobtn:hover{
	background: #28a745;
	transition:background-color .5s;
	font-weight: bold;
}



</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

<script>
$(function(){
	if( ${ AllTutorlist ne null } )
	{
		$(".RequestTutor").removeClass("active");
		$(".TutorMember").addClass("active");
		
	}
})

	 function ok(str){
		if(str == 'date'){
			$(".ageForm").hide();
			$(".genderForm").hide();
			$(".typeForm").hide();
			$(".dateForm").show();
			
		}else if(str =='age'){
			$(".dateForm").hide();
			$(".genderForm").hide();
			$(".typeForm").hide();
			$(".ageForm").show();
			
		}else if(str =='gender'){
			$(".ageForm").hide();
			$(".dateForm").hide();
			$(".typeForm").hide();
			$(".genderForm").show();
			
		}else if(str =='type'){
			$(".ageForm").hide();
			$(".genderForm").hide();
			$(".dateForm").hide();
			$(".typeForm").show();
		}
		
	} 

</script>


</head>
<body>
	<c:import url="../mnCommon/menubar.jsp" />
 	 
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
                        <a class="nav-link active" href="mn.do">전체</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="vip5.do?pageName=memNTut">TOP5 VIP</a>
                    </li>
                </ul>
                <table class="position-left">
                	<tr>
                		<td class="quickBtn">
                			<label for="all">전체</label>
							<input type="checkbox" id="all"> &nbsp;
						</td>
                	</tr>
                </table>	
                <div class="position-right">
	       			<label><span onclick="ok('date');" class="link" data-toggle="modal" data-target="#exampleModal">날자</span></label>
					<label><span onclick="ok('age');" class="link" data-toggle="modal" data-target="#exampleModal">나이</span></label>
					<label><span onclick="ok('gender');" class="link" data-toggle="modal" data-target="#exampleModal">성별</span></label>
					<label><span onclick="ok('type');" class="link" data-toggle="modal" data-target="#exampleModal">타입</span></label>
                </div>	
				<table class="table listArea">
					<thead class="thead-white">
						<tr>
							<th scope="col">No.</th>
							<th scope="col">회원 이메일</th>
							<th scope="col">회원명</th>
							<th scope="col">성별</th>
							<th scope="col">나이</th>
							<th scope="col">가입일</th>
							<th scope="col">타입</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="m" items="${ list }">
							<tr>
								<th scope="row"><input type="checkbox" name="uNo" class="mNum" value="${ m.uNo }"> &nbsp;${m.uNo}</th>
								<td class="uId">${ m.uId }</td>
								<td>${ m.uName }</td>
								<td>
									<c:if test="${ m.uGender eq 'M'}">
										남
									</c:if>
									<c:if test="${ m.uGender eq 'F' or 'W'}">
										여
									</c:if>
								</td>
								<td>${ m.uAge }</td>
								<td>${ m.enrollDate }</td>
								<td>
									<c:if test="${ m.uType eq 'N' }">
										일반회원
									</c:if>
									<c:if test="${ m.uType eq 'T'}">
										튜터
									</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr>
				<br>
					
					
				<input type="button" value="쿠폰 생성하기" class="btn btn-muted btn-sm goTobtn">
				<br>
				<!-- 검색바   -->
				
				<div class="searchArea" align="center">
					<form action="mnsearch.do" name="searchForm" method="get">

						<div class="input-group">
							<div class="input-group-append">
								<select id="searchCondition" name="searchCondition"
									class="selectpicker">
									<option value="uId"
										<c:if test="${ search.searchCondition == 'uId' }">selected</c:if>>
										이메일</option>
									<option value="uNo"
										<c:if test="${ search.searchCondition == 'uNo' }">selected</c:if>>
										회원 번호</option>
									<option value="mName"
										<c:if test="${ search.searchCondition == 'mName' }">selected</c:if>>
										회원명
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
						
						<c:if test="${ search eq null and Condition eq null}">
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
						
						<!-- Sort했을대 페이징 처리  -->
						<!--1.Sort 날짜  -->
						<c:if test="${ Condition eq 1}">
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="before" value="mnSort.do">
									<c:param name="page" value="${ pi.currentPage -1 }" />
									<c:param name="Condition" value="${ Condition }"/>
									<c:param name="param1" value="${ param1 }"/>
									<c:param name="param2" value="${ param2 }"/>
								</c:url>
								<li class="page-item">
									<a class="page-link" href="${ before }" tabindex="-1">이전</a>
								</li>
							</c:if>
						</c:if>
						<!--2.Sort 나이  -->
						<c:if test="${Condition eq 2}">
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="before" value="mnSort.do">
									<c:param name="page" value="${ pi.currentPage -1 }" />
									<c:param name="Condition" value="${ Condition }"/>
									<c:param name="param1" value="${ param1 }"/>
									<c:param name="param2" value="${ param2 }"/>
								</c:url>
								<li class="page-item">
									<a class="page-link" href="${ before }" tabindex="-1">이전</a>
								</li>
							</c:if>
						</c:if>
						<!--3.Sort 성별 -->
						<c:if test="${Condition eq 3}">
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="before" value="mnSort.do">
									<c:param name="page" value="${ pi.currentPage -1 }" />
									<c:param name="Condition" value="${ Condition }"/>
									<c:param name="param1" value="${ param1 }"/>
									<c:param name="param2" value="${ param2 }"/>
								</c:url>
								<li class="page-item">
									<a class="page-link" href="${ before }" tabindex="-1">이전</a>
								</li>
							</c:if>
						</c:if>
						<!--4.Sort 성별 -->
						<c:if test="${Condition eq 4}">
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="before" value="mnSort.do">
									<c:param name="page" value="${ pi.currentPage -1 }" />
									<c:param name="Condition" value="${ Condition }"/>
									<c:param name="param1" value="${ param1 }"/>
									<c:param name="param2" value="${ param2 }"/>
								</c:url>
								<li class="page-item">
									<a class="page-link" href="${ before }" tabindex="-1">이전</a>
								</li>
							</c:if>
						</c:if>
						
						
						
						
						<c:if test="${ search eq null and Condition eq null }">	
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
						<!--Sort 페이징 처리  -->
						<!--1. 날자 Sort  -->
						<c:if test="${Condition eq 1}">
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
										<c:url var="pagination" value="mnSort.do">
											<c:param name="page" value="${ p }" />
											<c:param name="Condition" value="${ Condition }"/>
											<c:param name="param1" value="${ param1 }"/>
											<c:param name="param2" value="${ param2 }"/>
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
						<!--2. 나이 Sort  -->
						<c:if test="${Condition eq 2}">
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
										<c:url var="pagination" value="mnSort.do">
											<c:param name="page" value="${ p }" />
											<c:param name="Condition" value="${ Condition }"/>
											<c:param name="param1" value="${ param1 }"/>
											<c:param name="param2" value="${ param2 }"/>
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
						<!--3. 성별 Sort  -->
						<c:if test="${Condition eq 3}">
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
										<c:url var="pagination" value="mnSort.do">
											<c:param name="page" value="${ p }" />
											<c:param name="Condition" value="${ Condition }"/>
											<c:param name="param1" value="${ param1 }"/>
											<c:param name="param2" value="${ param2 }"/>
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
						<!--4. 타입 Sort  -->
						<c:if test="${Condition eq 4}">
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
										<c:url var="pagination" value="mnSort.do">
											<c:param name="page" value="${ p }" />
											<c:param name="Condition" value="${ Condition }"/>
											<c:param name="param1" value="${ param1 }"/>
											<c:param name="param2" value="${ param2 }"/>
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
						<c:if test="${ search eq null and Condition eq null}">
						
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
						<!-- 검색했을 시 페이징 처리 -->
						<c:if test="${search ne null}">
						
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
						<!-- Sort했을 시 페이징 처리  -->
						<!-- 1.날자 Sort -->
						<c:if test="${Condition eq 1}">
						
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li class="page-item disabled"><a class="page-link disabled"
									href="#">Next</a></li>
							</c:if>
							
							<c:if test="${ pi.currentPage < pi.maxPage }">
									<c:url var="after" value="mnSort.do">
										<c:param name="page" value="${ pi.currentPage + 1 }" />
										<c:param name="Condition" value="${ Condition }"/>
										<c:param name="param1" value="${ param1 }"/>
										<c:param name="param2" value="${ param2 }"/>
									</c:url>
								<li class="page-item "><a class="page-link"
									href="${ after }">다음</a></li>
							</c:if>
						</c:if>
						<!-- 2.날자 Sort -->
						<c:if test="${Condition eq 2}">
						
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li class="page-item disabled"><a class="page-link disabled"
									href="#">Next</a></li>
							</c:if>
							
							<c:if test="${ pi.currentPage < pi.maxPage }">
									<c:url var="after" value="mnSort.do">
										<c:param name="page" value="${ pi.currentPage + 1 }" />
										<c:param name="Condition" value="${ Condition }"/>
										<c:param name="param1" value="${ param1 }"/>
										<c:param name="param2" value="${ param2 }"/>
									</c:url>
								<li class="page-item "><a class="page-link"
									href="${ after }">다음</a></li>
							</c:if>
						</c:if>
						<!-- 3.성별 Sort -->
						<c:if test="${Condition eq 3}">
						
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li class="page-item disabled"><a class="page-link disabled"
									href="#">Next</a></li>
							</c:if>
							
							<c:if test="${ pi.currentPage < pi.maxPage }">
									<c:url var="after" value="mnSort.do">
										<c:param name="page" value="${ pi.currentPage + 1 }" />
										<c:param name="Condition" value="${ Condition }"/>
										<c:param name="param1" value="${ param1 }"/>
										<c:param name="param2" value="${ param2 }"/>
									</c:url>
								<li class="page-item "><a class="page-link"
									href="${ after }">다음</a></li>
							</c:if>
						</c:if>
						<!-- 4.타입 Sort -->
						<c:if test="${Condition eq 4}">
						
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li class="page-item disabled"><a class="page-link disabled"
									href="#">Next</a></li>
							</c:if>
							
							<c:if test="${ pi.currentPage < pi.maxPage }">
									<c:url var="after" value="mnSort.do">
										<c:param name="page" value="${ pi.currentPage + 1 }" />
										<c:param name="Condition" value="${ Condition }"/>
										<c:param name="param1" value="${ param1 }"/>
										<c:param name="param2" value="${ param2 }"/>
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
	<!-- 모달  -->
	  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		      	<div class="dateForm">
		        <h5 class="modal-title" id="exampleModalLabel">날자 선택</h5>
		        </div>
		      	<div class="ageForm">
		        <h5 class="modal-title" id="exampleModalLabel">나이 선택</h5>
		        </div>
		      	<div class="genderForm">
		        <h5 class="modal-title" id="exampleModalLabel">성별 선택</h5>
		        </div>
		      	<div class="typeForm">
		        <h5 class="modal-title" id="exampleModalLabel">타입 선택</h5>
		        </div>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <!-- 날자 선택  -->
		      <form action="mnSort.do" method="post" class="dateForm">
			      <div class="modal-body">			        
					
						<input type="hidden" value="1" name="Condition">
						<label>시작 일</label> <input type="date" name="param1">
						<label>마지막 일</label> <input type="date" name="param2">
					
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="submit" class="btn btn-primary">정렬하기</button>
			      </div>
		      </form>
		      <!-- 나이 선택  -->
   		      <form action="mnSort.do" method="post" class="ageForm">
			      <div class="modal-body">		
					<input type="hidden" value="2" name="Condition">
					<input type="text" name="param1" placeholder="나이의 시작 시점 입력하세요"> ~
			      	<input type="text" name="param2" placeholder="나이의 종료 시점입력하세요">
			      
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="submit" class="btn btn-primary">정렬하기</button>
			      </div>
		      </form>
		      <!-- 성별 선택  -->
   		      <form action="mnSort.do" method="post" class="genderForm">
			      <div class="modal-body">			        
					
					<input type="hidden" value="3" name="Condition">
					<select name="param1">
						<option>선택</option>
						<option value="M">남</option>
						<option value="F">여</option>
					</select>
					
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="submit" class="btn btn-primary">정렬하기</button>
			      </div>
		      </form>
		      <!-- 타입 선택  -->
   		      <form action="mnSort.do" method="post" class="typeForm">
			      <div class="modal-body">			        
					<input type="hidden" value="4" name="Condition">
					<select name="param1">
						<option>선택</option>
						<option value="N">일반회원</option>
						<option value="T">튜터회원</option>
					</select>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="submit" class="btn btn-primary">정렬하기</button>
			      </div>
		      </form>
		    
		    </div>
		  </div>
	  </div>
	<!-- 모달  -->
	
   
	
 	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

	<script>
	  var newWindow;
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
				var uNo = $(this).parent().children().eq(0).html();
		        console.log($(this).parent().children().eq(1).html());
				
			});
			
			 $("#all").change(function(){            //id전체 체크박스에 변화가 있을떄 
			        if($("#all").prop("checked")){      //id전체 체크박스에 체크가 되면
			            $(".mNum").prop("checked",true);         //일반사용자에 체크
			        }else{                              //전체 체크박스에 체크가 해제 되면
			            $(".mNum").prop("checked",false);       //일반사용자에 체크 해제
			        }
			    });
			    $(".mNum").change(function(){         //전문사용자 체크박스에 변화가 있을때
			        if($(".mNum").prop("checked")){   //전문사용자 체크박스와 유저 체크박스 둘다에 체크가 되면
			            $("#all").prop("checked",true);                               //id전체 체크박스에 체크
			        }else{                                                            //전문사용자 체크박스와 유저 체크박스 둘중 하나라도 체크 되어 있지 않으면  
			            $("#all").prop("checked",false);                              //id전체 체크박스에 체크해제
			        }
			    });
			    
			     $(".goTobtn").click(function(){
		            var uNo=new Array();
		            $($(".mNum")).each(function(){
		                if($(this).prop("checked") == true){
		                    uNo.push($(this).val());
		                }
		            });
		            var popupX = (document.body.offsetWidth / 2) - (1200 / 2);
		          //&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

		          var popupY= (document.body.offsetHeight / 2) - (500 / 2);
		          //&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		            
		            window.open("cuponEnroll.do?uNo="+uNo, "newWindow", 'status=no,scrollbar=no, width=1200, height=500, left='+ popupX + ', top='+ popupY);
		        });
		});
      

		
		
</script>
<script>

</script>


	<br><br><br><br><br><br><br><br>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

	<c:import url="../../common/footbar.jsp"/>
</body>
</html>