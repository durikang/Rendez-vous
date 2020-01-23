<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
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
    <!-- google charts -->
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<title>Insert title here</title>
<style>
.div-color {
	color: blue;
}

.icon {
	float: left;
	font-size: 25px;
	font-family: "Montserrat", sans-serif;
}

.kor {
	color: black;
	font-family: 'Nanum Pen Script', cursive;
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


</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
		
	    var chartDrowFun = {
	    		 
	    	    chartDrow : function(){
	    	        var chartData = '';
	    	 
	    	        //날짜형식 변경하고 싶으시면 이 부분 수정하세요.
	    	        var chartDateformat     = 'yyyy년MM월dd일';
	    	        //라인차트의 라인 수
	    	        var chartLineCount    = 10;
	    	        //컨트롤러 바 차트의 라인 수
	    	        var controlLineCount    = 10;
	    	 
	    	 
	    	        function drawDashboard() {
	    	 
	    	          var data = new google.visualization.DataTable();
	    	          //그래프에 표시할 컬럼 추가
	    	          data.addColumn('datetime' , '날짜');
	    	          data.addColumn('number'   , '남성');
	    	          data.addColumn('number'   , '여성');
	    	          data.addColumn('number'   , '전체');
	    	 
	    	          //그래프에 표시할 데이터
	    	          var dataRow = [];
	    	 
	    	          for(var i = 0; i <= 29; i++){ //랜덤 데이터 생성
	    	            var total   = Math.floor(Math.random() * 300) + 1;
	    	            var man     = Math.floor(Math.random() * total) + 1;
	    	            var woman   = total - man;
	    	 
	    	            dataRow = [new Date('2017', '09', i , '10'), man, woman , total];
	    	            data.addRow(dataRow);
	    	          }
	    	 
	    	 
	    	            var chart = new google.visualization.ChartWrapper({
	    	              chartType   : 'LineChart',
	    	              containerId : 'lineChartArea', //라인 차트 생성할 영역
	    	              options     : {
	    	                              isStacked   : 'percent',
	    	                              focusTarget : 'category',
	    	                              height          : 500,
	    	                              width              : '100%',
	    	                              legend          : { position: "top", textStyle: {fontSize: 13}},
	    	                              pointSize        : 5,
	    	                              tooltip          : {textStyle : {fontSize:12}, showColorCode : true,trigger: 'both'},
	    	                              hAxis              : {format: chartDateformat, gridlines:{count:chartLineCount,units: {
	    	                                                                  years : {format: ['yyyy년']},
	    	                                                                  months: {format: ['MM월']},
	    	                                                                  days  : {format: ['dd일']},
	    	                                                                  hours : {format: ['HH시']}}
	    	                                                                },textStyle: {fontSize:12}},
	    	                vAxis              : {minValue: 100,viewWindow:{min:0},gridlines:{count:-1},textStyle:{fontSize:12}},
	    	                animation        : {startup: true,duration: 1000,easing: 'in' },
	    	                annotations    : {pattern: chartDateformat,
	    	                                textStyle: {
	    	                                fontSize: 15,
	    	                                bold: true,
	    	                                italic: true,
	    	                                color: '#871b47',
	    	                                auraColor: '#d799ae',
	    	                                opacity: 0.8,
	    	                                pattern: chartDateformat
	    	                              }
	    	                            }
	    	              }
	    	            });
	    	 
	    	            var control = new google.visualization.ControlWrapper({
	    	              controlType: 'ChartRangeFilter',
	    	              containerId: 'controlsArea',  //control bar를 생성할 영역
	    	              options: {
	    	                  ui:{
	    	                        chartType: 'LineChart',
	    	                        chartOptions: {
	    	                        chartArea: {'width': '60%','height' : 80},
	    	                          hAxis: {'baselineColor': 'none', format: chartDateformat, textStyle: {fontSize:12},
	    	                            gridlines:{count:controlLineCount,units: {
	    	                                  years : {format: ['yyyy년']},
	    	                                  months: {format: ['MM월']},
	    	                                  days  : {format: ['dd일']},
	    	                                  hours : {format: ['HH시']}}
	    	                            }}
	    	                        }
	    	                  },
	    	                    filterColumnIndex: 0
	    	                }
	    	            });
	    	 
	    	            var date_formatter = new google.visualization.DateFormat({ pattern: chartDateformat});
	    	            date_formatter.format(data, 0);
	    	 
	    	            var dashboard = new google.visualization.Dashboard(document.getElementById('Line_Controls_Chart'));
	    	            window.addEventListener('resize', function() { dashboard.draw(data); }, false); //화면 크기에 따라 그래프 크기 변경
	    	            dashboard.bind([control], [chart]);
	    	            dashboard.draw(data);
	    	 
	    	        }
	    	          google.charts.setOnLoadCallback(drawDashboard);
	    	 
	    	      }
	    	    }
	    	 
	    	$(document).ready(function(){
	    	  google.charts.load('current', {'packages':['line','controls']});
	    	  chartDrowFun.chartDrow(); //chartDrow() 실행
	    	});
		

	
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

				<div class="col">
					<i class="far fa-id-card icon" style="color:#c9c0b1;"></i>
					<h5 align="center" class="kor">이달 신규 가입자 수</h5>
					<h5 align="center" class="thisMonthMem"> 0명</h5>
				</div>
				<div class="col">
					<i class="far fa-newspaper icon" style="color:#c9c0b1;"></i>
					<h5 align="center" class="kor">오늘 신규 가입자 수</h5>
					
					
					<h5 align="center" class="todayMem">0명</h5>
					
				</div>
				<div class="col">
					<i class="fas fa-dollar-sign icon"style="color:#c9c0b1;"></i>
					<h5 align="center" class="kor">이달 결제 총 금액</h5>
					<h5 align="center" class="thisMonthPay">0 원</h5>
				</div>
				<div class="col">
					<i class="fas fa-dollar-sign icon"style="color:#c9c0b1;"></i>
					<h5 align="center" class="kor">오늘 결제 총 금액</h5>
					<h5 align="center" class="todayPay">0 원</h5>
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col">
		   <div id="Line_Controls_Chart">
		   
		      <!-- 라인 차트 생성할 영역 -->
		          <div id="lineChartArea" style="padding:0px 20px 0px 0px;"></div>
		      <!-- 컨트롤바를 생성할 영역 -->
		          <div id="controlsArea" style="padding:0px 20px 0px 0px;"></div>
		          
          </div>
			</div>
		</div>
		
	</div>
	<br><br><br><br><br>
	<br><br><br><br><br>
	<c:import url="mnCommon/footbar.jsp"/>
</body>
</html>