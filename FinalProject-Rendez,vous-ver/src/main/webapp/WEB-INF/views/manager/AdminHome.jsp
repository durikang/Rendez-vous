<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

<!-- fontawsome api  -->
<script src="https://kit.fontawesome.com/8af8965544.js"></script>
<!-- Jquery  -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- 그래프 api  -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>


<title>Insert title here</title>
<style>
.div-color {
	color: blue;
}

.icon {
	float: left;
	font-size: 25px;
	/* font-family: "Montserrat", sans-serif; */
}

.kor {
	color: black;
/* 	font-family: 'Nanum Pen Script', cursive;*/
	font-size: 12px;
}
.backLogo{
	background: center / contain no-repeat url("${contextPath}/resources/managerResources/Img/build.png");
	background-size: cover;
	color:white;
}
.cont{
	align:right;
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

.content{
	margin:0 30%;
	width:770px;
}
.table thead tr th{
	font-size: 12px;
}
.target{
display: inline-block; 
width: 75px; 
white-space: nowrap; 
overflow: hidden;
 text-overflow: ellipsis;

}
.btn-right{
	clear: both;
}






</style>
 <script>
	$(function(){
		topListCount();
		setInterval(function(){
			topListCount();
		}, 10000);
		
		
		
	});

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

		

/* =============================================================  */

	



	</script>
 </head>
<body>

	<c:import url="mnCommon/menubar.jsp" />
	<br><br>
	
	<c:import url="mnCommon/sidebar.jsp" >
		<c:param name="pageName" value="${ pageName }"/>
	</c:import>
	
	
	<div class="content">
	<c:import url="mnCommon/jumbotron.jsp" >
		<c:param name="pageName" value="${ pageName }"/>
	</c:import>
	
		<hr>
		
		<div class="container div-color mainContent">
			<div class="row align-items-start">

				<div class="col border">
					<i class="far fa-id-card icon" style="color:#c9c0b1;"></i>
					<h5 align="center" class="kor">이달 신규 가입자 수</h5>
					<h5 align="center" class="thisMonthMem"> 0명</h5>
				</div>
				&nbsp;
				<div class="col border">
					<i class="far fa-newspaper icon" style="color:#c9c0b1;"></i>
					<h5 align="center" class="kor">오늘 신규 가입자 수</h5>
					<h5 align="center" class="todayMem">0명</h5>
				</div>
				&nbsp;
				<div class="col border">
					<i class="fas fa-dollar-sign icon"style="color:#c9c0b1;"></i>
					<h5 align="center" class="kor">이달 결제 총 금액</h5>
					<h5 align="center" class="thisMonthPay">0 원</h5>
				</div>
				&nbsp;
				<div class="col border">
					<i class="fas fa-dollar-sign icon"style="color:#c9c0b1;"></i>
					<h5 align="center" class="kor">오늘 결제 총 금액</h5>
					<h5 align="center" class="todayPay">0 원</h5>
				</div>
			</div>
		</div>
		
		
		
		
		<br>
			<div class="row">
				<div class="col" align="right">
				
				
				<form action="monthsJoinMember.do" method="post">
			    	<div class="col">
					<button class="btn btn-info" style="float:right">확인</button>
					<select name="year1" class="custom-select" style="width: 100px; float:right">
					  	<c:forEach var="m" items="${ YearList }">
		    			  	<option value="${ m }">${ m }</option>
		    			  	<c:set var="saveYear" value="${ m }"/>  	
						 </c:forEach>			    		
		    		</select>
					<c:forEach var="m" items="${ YearList }">
		    			<input type="hidden" value="${ m }" name="YearList">
				 	</c:forEach>
					</div>
				</form>
				</div>
			</div>
		<div class="row border">
			<div class="col border">
				<div class="row">
					    <div class="col">
							<span align="center"><i class="fas fa-dollar-sign icon"style="color:#c9c0b1;"></i> &nbsp; 월별 가입자</span>
					    </div>
		  		</div>
			
				<canvas id="myChart1" width="150" height="75"></canvas>
			</div>
		</div>
		<br>
			<div class="row">
				<div class="col" align="center">
					<form action="monthsIncome.do" method="post">
				    	<div class="col">
							<button class="btn btn-info" style="float:right">확인</button>
							<select name="year2" class="custom-select" style=" width:100px; float:right">
							  	<c:forEach var="m" items="${ YearList2 }">
				    			  	<option value="${ m }">${ m }</option>
								 </c:forEach>			    		
				    		</select>
							<c:forEach var="m" items="${ YearList2 }">
				    			<input type="hidden" value="${ m }" name="YearList">
						 	</c:forEach>
						 		<input type="hidden" value="${ saveYear }" name="year1">
					 	</div>
					</form>
				</div>
			</div>
		<div class="row border">
			<div class="col border">
				<h4 align="center"><i class="fas fa-dollar-sign icon"style="color:#c9c0b1;"></i> 월별 수입</h4>
				<canvas id="myChart2" width="150" height="75"></canvas>
			</div>
		</div>
		
	</div>
	<br><br><br><br><br>
	<br><br><br><br><br>
	<c:import url="mnCommon/footbar.jsp"/>
	
	<script>
	/* 그래프 api   */		
	
	 var ctx1 = document.getElementById('myChart1').getContext('2d');
	 var ctx2 = document.getElementById('myChart2').getContext('2d');
	 
	 var january1=${monthsJoinMember.january};
	 var february1=${monthsJoinMember.february};
	 var march1 =${monthsJoinMember.march};
	 var april1 =${monthsJoinMember.april};
	 var may1 =${monthsJoinMember.may};
	 var june1 =${monthsJoinMember.june};
	 var july1 =${monthsJoinMember.july}; 
	 var august1 =${monthsJoinMember.august};
	 var september1 =${monthsJoinMember.september};
	 var october1 =${monthsJoinMember.october};
	 var november1 =${monthsJoinMember.november};
	 var decemver1 =${monthsJoinMember.decemver};
	 
	 var january2=${monthlyIncome.january};
	 var february2=${monthlyIncome.february};
	 var march2 =${monthlyIncome.march};
	 var april2 =${monthlyIncome.april};
	 var may2 =${monthlyIncome.may};
	 var june2 =${monthlyIncome.june};
	 var july2 =${monthlyIncome.july}; 
	 var august2 =${monthlyIncome.august};
	 var september2 =${monthlyIncome.september};
	 var october2 =${monthlyIncome.october};
	 var november2 =${monthlyIncome.november};
	 var decemver2 =${monthlyIncome.decemver};
	 
	 
	 
	 /* 여기까지 2020-01-29 오전 : 11:12  */
	 
	
	/* 		datesCount2 = ${ monthlyIncome };
	 */
	 
	    var myChart1 = new Chart(ctx1, {
	    
	    	
	    	type: 'bar',
	        data: {
	            labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	            datasets: [{
	                label: '# 가입자 수',
	                data: [january1,february1,march1,april1,may1,june1,july1,august1,september1,october1,november1,decemver1]
	            	,
	                backgroundColor: [
	                    'rgba(255, 99, 132, 0.2)',
	                    'rgba(54, 162, 235, 0.2)',
	                    'rgba(255, 206, 86, 0.2)',
	                    'rgba(75, 192, 192, 0.2)',
	                    'rgba(153, 102, 255, 0.2)',
	                    'rgba(255, 159, 64, 0.2)',
	                    'rgba(255, 99, 132, 0.2)',
	                    'rgba(54, 162, 235, 0.2)',
	                    'rgba(255, 206, 86, 0.2)',
	                    'rgba(75, 192, 192, 0.2)',
	                    'rgba(153, 102, 255, 0.2)',
	                    'rgba(255, 159, 64, 0.2)'
	                ],
	                borderColor: [
	                    'rgba(255, 99, 132, 1)',
	                    'rgba(54, 162, 235, 1)',
	                    'rgba(255, 206, 86, 1)',
	                    'rgba(75, 192, 192, 1)',
	                    'rgba(153, 102, 255, 1)',
	                    'rgba(255, 159, 64, 1)',
	                    'rgba(255, 99, 132, 1)',
	                    'rgba(54, 162, 235, 1)',
	                    'rgba(255, 206, 86, 1)',
	                    'rgba(75, 192, 192, 1)',
	                    'rgba(153, 102, 255, 1)',
	                    'rgba(255, 159, 64, 1)'
	                ],
	                borderWidth: 1
	            }]
	        },
	        options: {
	            scales: {
	                yAxes: [{
	                    ticks: {
	                        beginAtZero: true
	                    }
	                }]
	            }
	        }
	    });
	    /* line 차트  */
	    var myChart2 = new Chart(ctx2, {
	        type: 'line',
	        data: {
	            labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	            datasets: [{
	                label: '# 월별 총 수익',
	                data: [january2,february2,march2,april2,may2,june2,july2,august2,september2,october2,november2,decemver2],
	                backgroundColor: [
	                    'rgba(255, 99, 132, 0.2)',
	                    'rgba(54, 162, 235, 0.2)',
	                    'rgba(255, 206, 86, 0.2)',
	                    'rgba(75, 192, 192, 0.2)',
	                    'rgba(153, 102, 255, 0.2)',
	                    'rgba(255, 159, 64, 0.2)',
	                    'rgba(255, 99, 132, 0.2)',
	                    'rgba(54, 162, 235, 0.2)',
	                    'rgba(255, 206, 86, 0.2)',
	                    'rgba(75, 192, 192, 0.2)',
	                    'rgba(153, 102, 255, 0.2)',
	                    'rgba(255, 159, 64, 0.2)'
	                ],
	                borderColor: [
	                    'rgba(255, 99, 132, 1)',
	                    'rgba(54, 162, 235, 1)',
	                    'rgba(255, 206, 86, 1)',
	                    'rgba(75, 192, 192, 1)',
	                    'rgba(153, 102, 255, 1)',
	                    'rgba(255, 159, 64, 1)',
	                    'rgba(255, 99, 132, 1)',
	                    'rgba(54, 162, 235, 1)',
	                    'rgba(255, 206, 86, 1)',
	                    'rgba(75, 192, 192, 1)',
	                    'rgba(153, 102, 255, 1)',
	                    'rgba(255, 159, 64, 1)'
	                ],
	                borderWidth: 1
	            }]
	        },
	        options: {
	            scales: {
	                yAxes: [{
	                    ticks: {
	                        beginAtZero: true
	                    }
	                }]
	            }
	        }
	    });
	
	</script>
	
	
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
 
</body>
</html>