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
		
		
		<c:if test="${tStatus eq 'R'}">
		<div class="title-box">
			<h1>튜터 승인 대기 중입니다 승인 완료 후 수업 등록이 가능해집니다. </h1>
		</div>		
		</c:if>
	
		<!-- 여기서부터 제대로 작성할 것 -->
		<c:if test="${tStatus eq 'Y'}">
		<div class="title-box">
			<h1>튜터 정보</h1>
		</div>	
		
		<!-- 정보 -->
		<div class="class_detail" id="sumary" style="width: 840px">
				<div class="class_name">
					<div class="tutor_img"><a href="/rendez/resources/user/img/l_2018051401001756000137172.jpg" target="_blank"><div style="background:#000;z-index:0;width:100%;height:100%;background-size:cover;background-position:center;background-image: url('/rendez/resources/user/img/l_2018051401001756000137172.jpg');"></div></a></div>
					<div class="name">김두한</div>
					<div class="nickname">듀듀듀한한한이이이이이</div>
				</div>
				<div class="class_title">
					
					<!--찜하기 시작-->
						<a class="bnt_wishlist" id="won" style=""><img src="/rendez/resources/h1/Images/icon_btn_wish_on.png"> 찜하기</a>
						<a class="bnt_wishlist" id="woff" style="display: none;"><img src="/rendez/resources/h1/Images/icon_btn_wish.png"> 찜하기</a>
					<!--찜하기 끝-->
					
					
					


					
					<script>
						$(function(){
								
							
							$("#won").hide();
												
							
							$("#won").click(function(){
								
								
								

								
								if($("#won").css("display")=='block' && $("#woff").css("display")=='none'){
									
									
									var uno = 50;
									
									
									var lno = 24;
									
									  $.ajax({
								            url:"fav.do",
								            data:{flag:'delete',uno:uno,lno:lno},
											type:"post",
								            success:function(data){
					               
								            },error:function(){
								               console.log("ajax 통신 실패");
								            }
								            })
														
									
									
									alert("찜 목록에서 삭제하였습니다");							
									$("#won").hide();
									$("#woff").show();
									
								}
								

							});		
							
							$("#woff").click(function(){
								
								
								
								
								if($("#won").css("display")=='none' && $("#woff").css("display")=='block'){
									
									
									var uno = 50;
									
									
									var lno = 24;
									
									  $.ajax({
								            url:"fav.do",
								            data:{flag:'insert',uno:uno,lno:lno},
											type:"post",
								            success:function(data){
					               
								            },error:function(){
								               console.log("ajax 통신 실패");
								            }
								            })
									
									
									
									alert("찜 목록에서 추가하였습니다");							
									$("#won").show();
									$("#woff").hide();
								}
								
							});	
							
							
							
							$("#won").show();
							$("#woff").hide();
													
						});					
					</script>
					
					
					<div class="info">
						<a class="starimg">
							<div class="title">누구인가?</div>
							<!-- <img src="https://taling.me/Content/Images/class/icon_star_new.png"><img src="https://taling.me/Content/Images/class/icon_star_new.png"><img src="https://taling.me/Content/Images/class/icon_star_new.png"><img src="https://taling.me/Content/Images/class/icon_star_new.png"><img src="https://taling.me/Content/Images/class/icon_star_new.png">								(6) -->
													</a>
					</div>
					<div class="info">
						<ul>
							<li class="ar">
																분당							</li>							
							<li class="hu"><font color="#ff005a">1</font>시간/회</li>
							<li class="gr">
																인원:<font color="#ff005a">3~5</font>명
								</li>
							<li class="ohu">
																<font color="#ff005a">￦1</font>/회당
							</li>
						</ul>
					</div>
				</div>
			</div>
		
		
		
		<!-- 수입 -->
		<div class="row">
							<div class="col-sm-12" >
								<div class="card-box widget-inline">
									<div class="row">
										<div class="col-lg-3 col-sm-6" style="border-right: 1px solid #e3e8f1;">
											<div class="widget-inline-box text-center">
												<h3 class="m-t-10"><i class="text-primary mdi mdi-access-point-network"></i> <b data-plugin="counterup">${nowCount }</b></h3>
												<p class="text-muted">이번 달 수업 신청 건수</p>
											</div>
										</div>

										<div class="col-lg-3 col-sm-6" style="border-right: 1px solid #e3e8f1;">
											<div class="widget-inline-box text-center">
												<h3 class="m-t-10"><i class="text-custom mdi mdi-airplay"></i> <b data-plugin="counterup">${nowSum }</b></h3>
												<p class="text-muted">이번 달 매출</p>
											</div>
										</div>

										<div class="col-lg-3 col-sm-6" style="border-right: 1px solid #e3e8f1;">
											<div class="widget-inline-box text-center">
												<h3 class="m-t-10"><i class="text-info mdi mdi-black-mesa"></i> <b data-plugin="counterup">${totalCount }</b></h3>
												<p class="text-muted">총 수업 건수</p>
											</div>
										</div>

										<div class="col-lg-3 col-sm-6">
											<div class="widget-inline-box text-center b-0">
												<h3 class="m-t-10"><i class="text-danger mdi mdi-cellphone-link"></i> <b data-plugin="counterup">${totalSum }</b></h3>
												<p class="text-muted">총 매출</p>
											</div>
										</div>

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