<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 합쳐지고 최소화된 최신 CSS --> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> 
    <!-- 부가적인 테마 --> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css"> 
    <!-- jquery 로딩 --> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
    <!-- 합쳐지고 최소화된 최신 자바스크립트 --> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
<title>Insert title here</title>
<style>



#certificationImg{
	width:350px;
	height:auto;
	border-radius: 15px;
	
}
</style>
<script>
function doImgPop(img){
	 img1= new Image();
	 img1.src=(img);
	 imgControll(img);
	}
	 
	function imgControll(img){
	 if((img1.width!=0)&&(img1.height!=0)){
	    viewImage(img);
	  }
	  else{
	     controller="imgControll('"+img+"')";
	     intervalID=setTimeout(controller,20);
	  }
	}

	function viewImage(img){
	 W=img1.width-'500px';
	 H=img1.height-'550px';
	 O="width="+W+",height="+H+",scrollbars=yes";
	 imgWin=window.open("","",O);
	 imgWin.document.write("<html><head><title>:*:*:*: 경력 상세보기 :*:*:*:*:*:*:</title></head>");
	 imgWin.document.write("<body topmargin=0 leftmargin=0>");
	 imgWin.document.write("<img src="+img+" onclick='self.close()' style='cursor:pointer;' title ='클릭하시면 창이 닫힙니다.'>");
	 imgWin.document.close();
	}
</script>
</head>
<body>

<c:import url="../manager/mnCommon/menubar.jsp" />


    
	<div class="container">
	<br>
	<c:if test="${ pageName ne null }">
		<h1 align="center" style="font-weight: 900">${ pageName }</h1>
	</c:if>
	<br>
	<hr>
	<br>
		<c:forEach var="tc" items="${ tCertArr}">
	           <div class="card" style="border:none;">
	               <div class="row no-gutters">
	               <div class="col-4">
	       			<img id="certificationImg" src="${ contextPath }/resources/tutorCertification/${tc.cFile}" onclick="doImgPop('${ contextPath }/resources/tutorCertification/${tc.cFile}')">
	             	</div>
	               <div class="col-8">
	                   <div class="card-body">
	                    <h3 style="font-weight: 900">증명증  </h3>
	                    <h5 class="card-text"> ${ tc.cTitle }</h5>
	                   </div>
	               </div>
	               </div>
	           </div>
	
	           <br>
	           <hr>
	           <br>
		</c:forEach>
			<button class="btn btn-info" onclick="history.back();">뒤로가기</button>
			
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
								<c:url var="before" value="tutorCert.do">
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
										<c:url var="pagination" value="tutorCert.do">
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
							<li class="page-item disabled">
								<a class="page-link disabled" href="#">Next</a>
							</li>
						</c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="after" value="tutorCert.do">
								<c:param name="page" value="${ pi.currentPage + 1 }" />
							</c:url>
							<li class="page-item "><a class="page-link"
								href="${ after }">다음</a></li>
						</c:if>
					</ul>
				</nav>
	</div>
	


 
</body>
</html>