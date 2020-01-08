<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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


</style>
</head>
<body>
	<c:import url="../mnCommon/menubar.jsp" />
	<br>
	<h1 align="center">튜터 신청 관리 페이지 입니다.</h1>
		<div class="container">
		<hr>
		
		<div class="row">
			<div class="col">
				<table class="table listArea">
					<thead class="thead-dark">
						<tr>
							<th scope="col">회원 번호</th>
							<th scope="col">튜터 별명</th>
							<th scope="col">튜터 경력</th>
							<th scope="col">튜터 소개</th>
							<th scope="col">소셜미디어</th>
							<th scope="col">허용 여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="m" items="${ list }">
							<tr>
								<th scope="row">${m.uNo}</th>
								<td>${ m.tuNick }</td>
								<td class="text">${ m.tuCareer } </td>
								<td class="text">${ m.tuInfo } </td>
								<td>
									<c:choose>
									<c:when test="${m.tuSocial eq null }">없음</c:when>
									<c:otherwise>
										${m.tuSocial }
									</c:otherwise>
									</c:choose>
								</td>
								<td>
									<c:if test="${ m.tuStatus eq 'R' }">
										Ready
									</c:if>
									<c:if test="${ m.tuStatus eq 'Y'}">
										Permit
									</c:if>									
									<c:if test="${ m.tuStatus eq 'C'}">
										Cancel
									</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
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
								<c:url var="before" value="mn.do">
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
						<!-- 다음  -->
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
					</ul>
				</nav>
			</div>
		</div>
	</div>
	
</body>
</html>