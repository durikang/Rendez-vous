<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <title>수업 관리 페이지</title>   

	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="description" content="매력 넘치는 능력자들에게 수업을 들어보세요. 베이킹부터 엑셀까지 다 있다!">
	<meta property="og:title" content="탈잉 - 세상의 모든 재능">
	<meta property="og:url" content="https://taling.me/">
	<meta property="og:image" content="https://taling.me/Content/Images/ogimage2.png" />
	<meta property="og:description" content="매력 넘치는 능력자들에게 수업을 들어보세요. 베이킹부터 엑셀까지 다 있다!">	
	<meta name="p:domain_verify" content="1dd028b45d9d85306bb74db3d9911bbb"/>
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/my_header_style.css?ver=191216" />
	<link rel="canonical" href="https://taling.me">

	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/mypage_style.css?ver=191216" />
	<!--link type="text/css" rel="stylesheet" href="/Content/app3/css/header_pc.css?ver=191021" /-->
	
	
	<link href="${contextPath}/resources/h1/css/style_sub17.css?after" rel="stylesheet" type="text/css">
	
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/my_header_style.css?ver=1909272" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/publy2.css" />
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main15.css?ver=19121" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main16.css" />
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main18.css" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/style_sub23.css" />

	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/style.css" />
	<link rel="stylesheet" href="${contextPath}/resources/h1/css/default.css">
	
	
	
	
	
	
	
	
    <link rel="shortcut icon" href="//taling.me/Content/Images/favicon.ico" />
    <link rel="apple-touch-icon" href="//taling.me/Content/Images/mobicon.png"/>    
	
    <meta property="fb:app_id" content="1488135204822133" />
	

	


	
	

    
	<!-- Page-hiding snippet (recommended)  -->
	<style>
	
	.async-hide { opacity: 0 !important}
	
	        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 50%; /* Could be more or less, depending on screen size */                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        
        .header {
			margin-top:5px;	
  			position: relative;
  			background: white;
  			border: none;
		}
	
	
	
	
	
	
	
	
	
	
	 </style>






</head>
<body style="" cz-shortcut-listen="true">


<div id="wrap">
<!--HEADER -->
	<div class="hcont">
		<c:import url="../common/menubar.jsp"/>
	</div>
<!-- //HEADER -->

	<!--container-->
	<div class="container" style="height: 1200px">

		<!--MyTItleBox head-->
		<div class="title-box">
			<h1>내 수업</h1>
			<select class="class-option" id="se1" onchange="fnSelectTitle();">
				<c:forEach var="li" items="${liList}">
						<option id="sop${li.lNo}" value="${li.lNo }">${li.lTitle}</option>
				</c:forEach>				
			</select>
		</div>
		
		

		
		<!-- 일정 인서트 후 해당 수업에 selected 되게끔 하는 처리  -->
		<c:if test="${!empty slno }">
		<script>
			$(function(){
				$("#sop${slno}").attr("selected",true);
					
			});
			
		</script>	
		</c:if>
		

		
		
		
		<c:forEach var="li" items="${ liList }" >
		<div class="static-container libox" id="li${li.lNo}">
			<c:if test="${li.lStatus eq 'R'}">
			<h3>수업 준비중</h3>
			</c:if>
			<div class="static-box">
				<c:forEach var="la" items="${ laList }">
				
				
				<c:if test="${ la.laType eq 1 and la.lNo eq li.lNo }">
				<div class="image" style="background-image:url(${ contextPath}/resources/lessonImg/${la.cName });" onclick="location.href='/Talent/Detail/19200'"></div>
				</c:if>

				
				
				</c:forEach>
				<div class="info-box">								 
					<h3>${li.lTitle }</h3>
				
					<div class="button-box">
							<input type="text" value="${li.lNo}" hidden>
							<input type="text" value="${li.lPrice}" hidden>
							<div class="button_gray cursor" id="myBtn" onclick="addLS(this);">수업 일정 추가</div>
							&nbsp;
							<div class="button_gray cursor" onclick="fnStatusChange('CS01','19200');">등록완료하기</div>
							&nbsp;	
							<div class="button_white cursor" onclick="fnStatusChange('CS01','19200');">등록완료하기</div>				
					</div>
							
				</div>
			</div>
		</div>
		</c:forEach>
		
		
		
		<c:forEach var="li" items="${liList }">
		<div class="static-container litbox" id="lit${li.lNo}">
					<table style="width: 1000px">
					<tr>
					<th>회차</th>
					<th>날짜</th>
					<th>시작시각</th>
					<th>끝나는시각</th>
					<th>잔여인원</th>
					<th>총원</th>
					</tr>

					<c:forEach var="l" items="${lList}">
					<c:if test="${l.lNo eq li.lNo }">
					<tr>
					<td>${l.lInning }</td>
					<td><fmt:formatDate value="${l.lDay}" pattern="yyyy-MM-dd (E)"/></td> 
					<td><fmt:formatDate value="${l.sTime}" pattern="HH:mm"/></td> 
					<td><fmt:formatDate value="${l.eTime}" pattern="HH:mm"/></td>
					<td>${l.remain }</td>
					<td>${l.total }</td>
					</tr>
					</c:if>		
					</c:forEach>			
					</table>
					</div>
		</c:forEach>
		
		
		
		
		
		
		

		
		
		
		
		
		<script>
			$(function(){
				$(".libox").hide();
				$(".litbox").hide();
				var selValue =  $("#se1").val();
				$("#li"+selValue).show();
				$("#lit"+selValue).show();
			});
			
			function fnSelectTitle(){
				$(".libox").hide();
				$(".litbox").hide();
				var selValue =  $("#se1").val();
				$("#li"+selValue).show();	
				$("#lit"+selValue).show();
			}
			
			function addLS(value){
				modal.style.display = "block";
				var lno = $(value).parent().children().eq(0).val();
				var lprice = $(value).parent().children().eq(1).val();
				$("#adlno").val(lno);
				$("#adprice").val(lprice);
				
			}
	
		
		</script>
		<c:if test="${!empty msg }">
		<script>
			$(function(){
				
			setTimeout(function() {
				alert("수업을 추가하였습니다.");	
			}, 100);
					
		
			});
		</c:if>
		</script>	
		
		
    
 
    <!-- 모달 창 -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
        <button class="close">close</button>                                                               
        <p>Some text in the Modal..</p>
        <form action="lessonTimeInsert.do">
                 <input id="adlno" type="text" name="lno" hidden> <br>
                   가격 : <input id="adprice" name="price" type="number"> <br>          
		날짜: <input type="date" name="dday"> <br>
		시작 시간 : <input type="time" name="stime"> <br>
		종료 시간 : <input type="time" name="etime"><br>
		모집 인원 : <input type="number" name="total"><br>
		<button>넣기</button>
		</form>
      </div>
 
    </div>
    
    <!-- 모달 버튼 -->
    <!-- <button class="button_gray cursor" id="myBtn" >Open Modal</button> -->
    

    
    <script type="text/javascript">
    var modal = document.getElementById('myModal');
    
    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];                                          

    // When the user clicks on the button, open the modal 
    /* btn.onclick = function() {
        
    } */

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }

    
    
    </script>
		
		

		
			
			


 		<!-- FOOTER -->

       





</div>










</div>


<!--  -->
<c:import url="../common/footbar.jsp"/>



</body>
</html>