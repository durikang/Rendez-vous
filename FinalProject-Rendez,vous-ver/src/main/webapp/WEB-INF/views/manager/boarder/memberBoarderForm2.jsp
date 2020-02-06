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

.quickBtn{
line-height: 50px;
}
.newMemberPagenation{
	display: none;
}



</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

<script>


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
                        <a class="nav-link" href="mn.do?pageName=memNTut">전체</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link active vip5" href="vip5.do?pageName=memNTut">TOP5 VIP</a>
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
				<table class="table listArea">
					<thead class="thead-white">
						<tr>
							<th scope="col">No.</th>
							<th scope="col">이메일</th>
							<th scope="col">이름</th>
							<th scope="col">성별</th>
							<c:if test="${Condition eq 'join' }">
							<th scope="col">나이</th>
							</c:if>
							<c:if test="${ Condition eq 'vip' }">
							<th scope="col">지출액</th>
							</c:if>
							<th scope="col">가입일</th>
							
							<!--  -->
							<c:if test="${Condition eq 'join' }">
							<th scope="col">타입</th>
							</c:if>
							<!--  -->
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
								<c:if test="${ Condition eq 'join' }">
								<td>${ m.uAge }</td>
								</c:if>
								<c:if test="${ Condition eq 'vip' }">
								<td>${ m.total_pay }</td>
								</c:if>
								<td>${ m.enrollDate }</td>
								<c:if test="${ Condition eq 'join' }">
								<td>
									<c:if test="${m.uType eq 'N'}">
										일반
									</c:if>
									<c:if test="${m.uType eq 'T'}">
										튜터
									</c:if>
								</td>
								</c:if>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr>
				<br>
					
					
				<input type="button" value="쿠폰 생성하기" class="btn btn-primary btn-sm goTobtn">
				<br>
				<!-- 검색바   -->
				
				<div class="newMemberPagenation">
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
					<!-- 숫자  -->
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
											
					<!-- 다음 -->	
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
					<!-- 페이징 끝  -->
					</div>
					
			</div>
		</div>
	</div>
	
   
	
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
		            
		            window.open("cuponEnroll.do?uNo="+uNo, "newWindow", "width=700, height=700, scrollbar=no");
		        });
			     
			     if( ${ list ne null } )
			     {
			    	 if( ${Condition eq 'join'}){
		    			$(".vip5").removeClass("active");
				     	$(".newjoin").addClass("active");
				     	$(".newMemberPagenation").show();
				     	
			    	 }else if(${Condition eq 'vip'}){
		    			$(".newjoin").removeClass("active");
				     	$(".vip5").addClass("active");	 	 
				     	$(".newMemberPagenation").hide();
				
			    	 }
			     	
			     }
			     
		});
      

		
		
</script>
<script>

</script>


	<br><br><br><br><br><br><br><br>
	<c:import url="../../common/footbar.jsp"/>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>