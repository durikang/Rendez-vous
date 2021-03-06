<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <title>튜터 정보</title>   

	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/my_header_style.css?ver=191216" />


	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/mypage_style.css?ver=191216" />
	
	
	
	<link href="${contextPath}/resources/h1/css/style_sub17.css?after" rel="stylesheet" type="text/css">
	
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/my_header_style.css?ver=1909272" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/publy2.css" />
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main15.css?ver=19121" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main16.css" />
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main18.css" />
	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/style_sub23.css" />

	<link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/style.css" />
	<link rel="stylesheet" href="${contextPath}/resources/h1/css/default.css">
	
	<link href="${contextPath }/resources/h2/css/style.css" rel="stylesheet">
	
	
	
	
	
	
	
    <link rel="shortcut icon" href="${contextPath }/resources/h1/Images/logo.ico" />
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
	<div class="hcont">
		<c:import url="../common/menubar.jsp"/>
	</div>
	<c:import url="../common/hyunsidebar.jsp"/>
	

<div id="wrap">


	<div class="container" style="height: 1200px; right: 150px; bottom: 47px">
	
		<c:if test="${empty loginUser || loginUser.user_type ne 'T'}">
		<script>
			$(function(){
				location.href="home.do";
			})	
		</script>
		</c:if>
		
		
		<c:if test="${tutor.tStatus eq 'R'}">
		<div class="title-box">
			<h1>튜터 승인 대기 중입니다 승인 완료 후 수업 등록이 가능해집니다. </h1>
		</div>		
		</c:if>
	
		<!-- 여기서부터 제대로 작성할 것 -->
		<c:if test="${tutor.tStatus eq 'Y'}">
		<div class="title-box">
			<h1>튜터 정보</h1>
		</div>	
		
	
		

		
		
		<br>
		

						
						
					<div class="row colorbox-group-widget">
                    <div class="col-md-3 col-sm-6 info-color-box">
                        <div class="white-box">
                            <div class="media bg-info">
                                <div class="media-body">
                                    <h3 class="info-count">${nowCount } <span class="pull-right"></span></h3>
                                    <p class="info-text font-12">이번 달 수업 신청 건수</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 info-color-box">
                        <div class="white-box">
                            <div class="media bg-success">
                                <div class="media-body">
                                    <h3 class="info-count"><fmt:formatNumber value="${nowSum}" pattern="#,###" />원 <span class="pull-right"></span></h3>
                                    <p class="info-text font-12">이번 달 매출</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 info-color-box">
                        <div class="white-box">
                            <div class="media bg-danger">
                                <div class="media-body">
                                    <h3 class="info-count">${totalCount}<span class="pull-right"></span></h3>
                                    <p class="info-text font-12">총 수업 건수</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 info-color-box">
                        <div class="white-box">
                            <div class="media bg-warning">
                                <div class="media-body">
                                    <h3 class="info-count"><fmt:formatNumber value="${totalSum}" pattern="#,###" />원<span class="pull-right"></span></h3>
                                    <p class="info-text font-12">총 매출</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
		
		
		
		
				<!--  -->
				
							<div class="white-box">
                            <div class="user-btm-box">
                                <!-- .row -->
                                <div class="row text-center m-t-10">
                                    <div class="col-md-6 b-r"><strong>튜터 별명</strong>
                                        <p>${tutor.tNick }</p>
                                    </div>
                                    <div class="col-md-6"><strong>튜터 주요 분야  </strong>
                                        <p>${subCate }</p>
                                    </div>
                                </div>
                                
                                <hr>
                                
                                <div class="row text-center m-t-10">
                                    <div class="col-md-12"><strong>튜터 경력</strong>
                                        <c:forEach var="tc" items="${tutorCerArr}">
                                        <p>${tc }</p>
                                        </c:forEach>
                                    </div>
                                </div>
                                <hr>

                                <div class="row text-center m-t-10">
                                    <div class="col-md-12"><strong>튜터 소개</strong>
                                        <c:forEach var="tr" items="${ tutor.tInfo }">
                                        <p>${tr }</p>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		</c:if>




		
		
		
    
 
    <!-- 모달 창 -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
        <button class="close">close</button>
        <form action="lessonTimeInsert.do">
                 <input id="adlno" type="text" name="lno" hidden> <br>
        <input id="adprice" name="price" type="number" hidden=""> <br>          
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