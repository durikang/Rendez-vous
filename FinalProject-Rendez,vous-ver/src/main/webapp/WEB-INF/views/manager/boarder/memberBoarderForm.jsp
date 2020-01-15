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

</style>


</head>
<body>
	<c:import url="../mnCommon/menubar.jsp" />
 	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	 
	<br>
	<br>

	
	<c:import url="../mnCommon/sidebar.jsp"/>
	<div class="container">
	<c:import url="../mnCommon/jumbotron.jsp"/>
		<hr>
		<div class="row">
			<div class="col">
				<label for="all">전체</label>
				<input type="checkbox" id="all">	
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
								<th scope="row"><input type="checkbox" name="uNo" class="mNum" value="${ m.uNo }"> &nbsp;${m.uNo}</th>
								<td class="uId">${ m.uId }</td>
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
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr>
				<br>
					
					
				<input type="button" value="자식창 열기" class="btn">
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
										타입
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
	<div class="modal fade" tabindex="-1" id="myModal" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">쿠폰 보내기</h5>
		          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		            <span aria-hidden="true">&times;</span>
		          </button>
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
								  <option value="${10 * i }">${ i*10 }%할인</option>        
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
			<!--  -->
			
		</div>
	</div>
	
 	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

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
				var uNo = $(this).parent().children().eq(0).html();
		        console.log($(this).parent().children().eq(1).html());
				
			});
		});
		/* 다시 설계  */
        var newWindow;

		$(function(){
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
		    
		     $(".btn").click(function(){
	            var uNo=new Array();
	            $($(".mNum")).each(function(){
	                if($(this).prop("checked") == true){
	                    uNo.push($(this).val());
	                }
	            });
	            
	            window.open("cuponEnroll.do?uNo="+uNo, "newWindow", "width=700, height=700, scrollbar=no");
	        }); 
		    
		});
		
		
</script>
<script>

</script>


	<br><br><br><br><br><br><br><br>
	<c:import url="../../common/footbar.jsp"/>

</body>
</html>