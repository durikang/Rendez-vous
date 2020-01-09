<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://kit.fontawesome.com/8af8965544.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
<title>Insert title here</title>
<style>
.div-color {
	color: blue;
}

.icon {
	float: left;
	font-size: 50px;
	font-family: "Montserrat", sans-serif;
}

.kor {
	color: black;
	font-family: 'Nanum Pen Script', cursive;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script>
	$(function(){
		topList();
		topLessonList();
		topListCount();
		setInterval(function(){
			topList();
			topLessonList();
			topListCount();
		}, 10000);
	});
		/* 실시간 회원 가입자  */
		function topList(){ // 일정 시간마다 해당 함수를 호출해서 실시간 조회수 높은 글 가져오기
			$.ajax({
				url:"newMemList.do",
				dataType:"json",
				success:function(data){
					
					$tableBody = $(".newMemberlistArea tbody");
					$tableBody.html("");
					
					for(var i in data){
						var $tr = $("<tr>");
						var $uNo = $("<td>").text(data[i].uNo);
						var $uId= $("<td>").text(data[i].uId);
						//var $bTitle = $("<td>").text(decodeURIComponent(data[i].bTitle.replace(/\+/g, " ")));
						var $uGender="";
						if( data[i].gender =='M'){
							$uGender = $("<td>").text("남자");
						}else{
							$uGender = $("<td>").text("여자");	
						}
						var $uAge = $("<td>").text(data[i].Age);
						
						var $uType = "";
						if( data[i].userType =='N'){
							$uType= $("<td>").text("일반");
						}else{
							$uType = $("<td>").text("튜터");
						}
						
						
						$tr.append($uNo);
						$tr.append($uId);
						$tr.append($uGender);
						$tr.append($uAge);
						$tr.append($uType);
						
						$tableBody.append($tr);
					}
				},
				error:function(){
					console.log('ajax 통신 실패!');
				}
			});
		}
		/* 실시간 통계  */
		function topListCount(){ // 일정 시간마다 해당 함수를 호출해서 실시간 조회수 높은 글 가져오기
			$.ajax({
				url:"realTimeCount.do",
				dataType:"json",
				success:function(data){
					var arr = new Array();
					
					arr[0]=String(data.todayMember);
					arr[1]=String(data.thisMonthMember);
					arr[2]=String(data.todayPay);
					arr[3]=String(data.thisMonthPay);
					
					$(".thisMonthMem").html(arr[1].replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"명")
					$(".todayMem").html(arr[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"명")
					$(".thisMonthPay").html(arr[3].replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원")
					$(".todayPay").html(arr[2].replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원")
					
					/* console.log(arr[3].replace(/\B(?=(\d{3})+(?!\d))/g, ",")); */
				},
				error:function(){
					console.log('ajax 통신 실패!');
				}
			});
		}

		/* 실시간 수업 Top 5  */
		function topLessonList(){
			$.ajax({
				url:"realTimeLessonList.do",
				dataType:"json",
				success:function(data){
					
					$tableBody1 = $(".newLessonListArea tbody");
					$tableBody1.html("");
					
					for(var i in data){
						var $tr1 = $("<tr>");
						var $No1 = $("<td>").text(data[i].no);
						var $Title1= $("<td>").text(data[i].title);
						//var $bTitle = $("<td>").text(decodeURIComponent(data[i].bTitle.replace(/\+/g, " ")));
						var $Introdction1=$("<td>").text(data[i].introduction);
						var $Target1 = $("<td>").text(data[i].target);
						var $Price1= $("<td>").text(data[i].price);
						var $Rating1 = $("<td>").text(data[i].rating);
						
						$tr1.append($No1);
						$tr1.append($Title1);
						$tr1.append($Introdction1);
						$tr1.append($Target1);
						$tr1.append($Price1);
						$tr1.append($Rating1);
						
						$tableBody1.append($tr1);
					}
				},
				error:function(){
					console.log('ajax 통신 실패!');
				}
			});	
		}
	
	</script>
 </head>
<body>
	<c:import url="mnCommon/menubar.jsp" />
	<br>
	<h1 align="center">메인 홈입니다.</h1>
	<div class="container">
		<br>
		<hr>

		<div class="container div-color">
			<div class="row align-items-start">

				<div class="col">
					<i class="far fa-id-card icon"></i>
					<h3 align="center" class="kor">이달 신규 가입자 수</h3>
					<h3 align="center" class="thisMonthMem"> 0명</h3>
				</div>
				<div class="col">
					<i class="far fa-newspaper icon"></i>
					<h3 align="center" class="kor">오늘 신규 가입자 수</h3>
					
					
					<h3 align="center" class="todayMem">0명</h3>
					
				</div>
				<div class="col">
					<i class="fas fa-dollar-sign icon"></i>
					<h3 align="center" class="kor">이달 결제 총 금액</h3>
					<h3 align="center" class="thisMonthPay">0 원</h3>
				</div>
				<div class="col">
					<i class="fas fa-dollar-sign icon"></i>
					<h3 align="center" class="kor">오늘 결제 총 금액</h3>
					<h3 align="center" class="todayPay">0 원</h3>
				</div>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col">
				<h3 align="center">신규 가입자 현황</h3>
				<!-- 신규 가입자 Top 5  -->
				<table class="table newMemberlistArea">
					<thead class="thead-dark">
						<tr>
							<th scope="col" width='100px'>번호</th>
							<th scope="col">회원 이메일</th>
							<th scope="col" width='100px'>성별</th>
							<th scope="col" width='100px'>나이</th>
							<th scope="col" width='100px'>타입</th>
						</tr>
					</thead>
					<tbody>
						<!-- 실시간 회원 가입 현황  -->
					</tbody>
				</table>
			</div>
			<div class="col">
			<h3 align="center">실시간 수업 Top 5 현황</h3>
				<!-- 실시간 수업 Top 5  -->
				<table class="table newLessonListArea">
					<thead class="thead-dark">
						<tr>
							<th scope="col">수업번호</th>
							<th scope="col">수업제목</th>
							<th scope="col">수업소개</th>
							<th scope="col">수업대상</th>
							<th scope="col">가격</th>
							<th scope="col">평점</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
		
		
		
		
	</div>

</body>
</html>