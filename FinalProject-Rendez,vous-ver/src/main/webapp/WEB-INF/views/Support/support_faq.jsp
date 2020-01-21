<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Rendez,vous</title>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap core CSS -->
<!-- <link href="support/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/support/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom fonts for this template -->
<link href="resources/support/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="resources/support/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"	rel="stylesheet" type="text/css">


<!-- Custom styles for this template -->
<link href="resources/support/css/landing-page.min.css" rel="stylesheet">
</head>
<style>
	.faq-area {
		width: 100%;
		height:2000px;
	    margin: 0 auto;
	    z-index: 1;
	}
	
	.wrapper {
		float: left;
		width: 15%;
		height: 100%;
		display: flex;
		position: relative;
	}
	
	.sidebar {
		width: 100%;
		height: 100%;
		background: #7e7e7e;
	}
	
	.wrapper .sidebar h2 {
		color: #fff;
		text-transform: uppercase;
		text-align: center;
		margin-top: 30px;
		margin-bottom: 30px;
	}
	
	.wrapper .sidebar ul li {
		padding: 15px;
		border-bottom: 1px solid rgba(0, 0, 0, 0.05);
		border-top: 1px solid rgba(225, 225, 225, 0.05);
		color: #474747;
		display: block;
		font-family: 'Do Hyeon', sans-serif;
	}
	
	.wrapper .sidebar ul li a {
		color: #474747;
		display: block;
		font-family: 'Do Hyeon', sans-serif;
	}
	
	.wrapper .sidebar ul li a .fas {
		width: 25px;
	}
	
	.wrapper .sidebar ul li:hover {
		background: #525252;
	}
	
	.wrapper .sidebar ul li:hover a {
		color: #fff;
		text-decoration: none;
	}
	
	.faq-content {
		float: left;
		width: 85%;
		height:100%;
	}
	
	.title {
		width:90%;
		margin:auto;
		border-bottom: solid 2px #2e2e2e;
	    padding-bottom: 2%;
	    padding-top:5%;
	    margin-bottom: 40px;
	}
	
	.faq-box {
		width:90%;
		margin:auto;
		border-bottom: 1px solid #ccc;
		padding-bottom: 22px;
		overflow: hidden;
		padding-top: 10px;
	}
	
	.tab {
		float: left;
		margin-right: 35px;
		color: #a3a3a3;
		font-weight: bold;
		font-size: 20px;
		padding-bottom: 5px;
	}
	
	.tab.on {
	    color: #2e2e2e;
	    border-bottom: 2px solid #2e2e2e;
	}
	
	.tab:hover {
		cursor:pointer;
		color: #2e2e2e;
	}
	
	.faq_sub_box.on {
	    display: block;
	    float:left;
	}
	
	.faq_sub_box {
		width:90%;
		margin:auto;
	    overflow: hidden;
	    display: none;
	}
	
	.faq_sub_box .que {
		width:90%;
		margin:auto;
	    padding: 22px 0 22px 0;
	    border-bottom: 1px solid #e4e4e4;
	    line-height: 1.57;
	    padding-left: 22px;
	}
	
	.pink {
		font-size:20px;
		color:firebrick;
	}
	
	#remoCon {

	  position: fixed;
	
	  width: 60px;
	
	  height: 20px;
	
	  right: 50px;
	
	  bottom: 100px;
	
	  display: none;
	
	  } 
</style>
<body>
	<c:import url="../common/menubar.jsp"/>
	<!-- Masthead -->
	<header class="masthead text-white text-center">
		<div class="overlay"
			style="background-image: url('resources/support/img/mountains.jpg');"></div>
		<div class="container">
			<div class="row">
				<div class="col-xl-9 mx-auto">
					<h1 class="mb-5">도움이 필요하신가요?</h1>
					<h2 class="mb-3">Rendez,vous의 고객센터는</h2>
					<h2 class="mb-5">언제나 최선을 다 하겠습니다.</h2>
				</div>
				<div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
					<form action="support_search.do" method="POST">
						<div class="form-row">
							<div class="col-12 col-md-9 mb-2 mb-md-0">
								<input id="keyword" name="keyword" type="text"
									class="form-control form-control-lg" placeholder="고객 센터 내 검색">
							</div>
							<div class="col-12 col-md-3">
								<button type="submit" class="btn btn-block btn-lg"
									style="background: #c9c0b1; color: white;">검색</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</header>
	<div class="faq-area">
		<div class="wrapper">
			<div class="sidebar">
				<h2>f a q</h2>
				<ul>
					<li><a href="support_main.do"><i class="fas fa-home" style="color: #c9c0b1;"></i>Home</a></li>
					<li><a href="support_faq.do"><i class="fas fa-comment-dots m-auto" style="color: #c9c0b1;"></i>F A Q</a></li>
					<li><a href="support_qna.do"><i class="fas fa-question-circle m-auto" style="color: #c9c0b1;"></i>Q & A</a></li>					
					<c:if test="${ !empty loginUser }">
						<li><a href="support_list.do"><i
								class="fas fa-list-alt m-auto" style="color: #c9c0b1;"></i>문의 내역</a></li>
					</c:if>
					<c:if test="${ empty loginUser }">
						<li><i class="fas fa-list-alt m-auto" style="color: #c9c0b1;"></i>
							문의 내역(로그인이 필요합니다.)</li>
					</c:if>
				</ul>
			</div>
		</div>
		<div class="faq-content">
			<div class="title">
			<h1>FAQ 자주 묻는 질문</h1>
		</div>
		<div class="faq-box">
			<div class="tab on" id="tutee" onclick="tutee()">
				수강생
			</div>
			<div class="tab" id ="tutor" onclick="tutor()">
				튜터
			</div>
		</div>
		<br>
		<div class="faq_sub_box on" id="faq_sub_tutee">
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">1&nbsp;&nbsp;</span> 수업 신청 후 절차가 어떻게 되나요?</span>
				<br />
				수업신청은 " 수업신청서 발급 >> 결제완료 >> 튜터님의 수업승인  >> 수업매칭" 으로 절차가 진행됩니다!<br> 튜터님과 연결되시면 일정을 조율하여 첫 수업날짜를 잡아보세요
			</div>
			<div class="que">
			<span class="rule_bold_text3"><span class="pink">2&nbsp;&nbsp;</span>  수업료는 어떻게 결제하나요?</span>
			<br />
			원데이 수업 : 전체수업료를 한번에 결제하는 전체결제로 진행이 됩니다<br>
			2회차 이상의 수업 :<br>
			<ol style="padding-left:30px;">
				<li>1. 전체수업료를 한번에 결제하기(전체결제) : Rendez,vous에서 전체수업료를 가지고 있다가 첫 수업이 마친 후 Rendez,vous 수수료인 1시간 수업료를 제외한 나머지 금액을 튜터님께 돌려드리고 있어요</li>
				<li>2. 1시간의 수업료를 예약금으로 결제하기 : 튜터분과 첫 수업을 진행하신 다음, 향후 수업료는 튜터에게 직접 전달해주시면 됩니다. (수업료는 계좌이체 등으로 송금 근거를 남겨 두시길 권장합니다.) </li>
			</ol>
	
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">3&nbsp;&nbsp;</span> 결제방식은 어떻게 되나요? </span>
				<br />
				원데이 수업 : 앱과 PC에서 카드/무통장으로 결제하실 수 있어요<br>
				2회차 이상의 수업 :
					 앱, PC(동일) - 수업료 전체결제 / 1시간의 수업료를 예약금으로 카드/무통장으로 결제하실 수 있어요
			
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">4&nbsp;&nbsp;</span> 세금계산서 / 현금영수증은 어떻게 발급받을 수 있나요?</span>
				<br />
				전체수업료를 Rendez,vous으로 결제하신 다음 help@rendezvous.me 로 말씀해주시면 발급해드립니다.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">5&nbsp;&nbsp;</span>  수업장소와 시간은 어떻게 되나요?</span>
				<br />
				수업소개에 수업장소와 시간이 명시되어 있습니다. 자세히 명시 되어있지 않은 수업의 경우 튜터와 조율하여 유동적으로 결정할 수 있습니다.<br>
				튜터에게 문의하여 시간을 조율해보세요. 개개인의 스케줄에 딱 맞는 시간을 조율할 수 있다는 것이 Rendez,vous의 가장 큰 장점이니까요.
	
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">6&nbsp;&nbsp;</span>  수업을 신청하기 전, 튜터님께 수업의 커리큘럼 혹은 일정에 관해 어떻게 질문을 할 수 있나요? </span>
				<br />
				수업소개서 안에 있는 실시간톡을 클릭하여 튜터님과 수업신청 전에 커리큘럼 혹은 일정에 관해 이야기 해보세요.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">7&nbsp;&nbsp;</span> 튜터들의 수업 퀄리티를 신뢰할 수 있을까요?</span>
				<br />
				Rendez,vous에서 튜터에 대한 철저한 사전검증을 하게 되며, 프로필 상의 경력과 자격증에 대한 검수확인 과정을 거치게 됩니다.<br>
				또한 실제 수업을 들었던 수강생의 리뷰와 피드백을 통해 튜터의 평판을 지속적으로 관리합니다. Rendez,vous은 계속해서 튜터들의 신뢰도를 높일 수 있는 검증 시스템을 만들어 갈 것임을 약속드립니다.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">8&nbsp;&nbsp;</span>  수업 취소는 어떻게 할 수 있나요?</span>
				<br />
				첫 수업 24시간 전에 튜터님께 수업취소의사를 전달해주시길 바랍니다.  그 다음, 홈페이지 상단 
				<span style="cursor:pointer; font-size: 14px; color:firebrick;" onclick="goQna()">
					<img src="resources/common/img/logo1.png" style="height:18px;vertical-align:text-bottom"> Rendez,vous에 문의하기
				</span>
				를 통해 취소 여부를 알려주세요.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">9&nbsp;&nbsp;</span>  첫 수업 시작 전에 급한 일이 생겼습니다. 환불이 가능할까요?</span>
				<br />
				첫 수업 24시간 전에 튜터님께 수업취소의사를 전달해주신 경우에는 결제된 수업료가 100% 환불됩니다. 자세한 사안은 환불규정을 참고해주세요
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">10&nbsp;&nbsp;</span>  환불 금액은 언제 입금되나요?</span>
				<br />
				 "환불 신청 >> 담당자 확인 후 환불 접수(환불 신청 후 24시간 이내 완료) >> 환불진행(환불액이 재입금 되는 데 영업일 기준 2~3일 정도 소요) >> 환불완료"의 절차로 진행됩니다.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">11&nbsp;&nbsp;</span>  수업 중간에 사정이 생겨 그만둘 경우에는 환불이 되나요?</span>
				<br />
				첫 수업 이후 환불에 대해서는, 회원가입 및 수업 결제 시 수강생이 동의한 Rendez,vous 환불규정에 따라 튜터와 수강생이 개별적으로 진행해주셔야 합니다.<br>자세한 사안은 <a href="#" style="color:firebrick">환불규정</a>을 참고해주세요.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">12&nbsp;&nbsp;</span>  회원탈퇴는 어떻게 하나요?</span>
				<br />
				앱에서 탈퇴하기 :  "더보기(mypage) -> 회원명클릭 ->개인정보하단에 회원탈퇴 클릭" 
				<br />
				회원 탈퇴를 하시면 해당 아이디는 탈퇴 처리되며, Rendez,vous 서비스 이용약관에 근거한 이용계약 종료 시 당사는 회원님의 개인정보 또한 파기합니다. <br>
				탈퇴를 원하시면 
				<a href="mypage.do"  ><font color="firebrick" style="text-decoration:underline;" data-show="popup-login">여기</font></a> 				
				를 눌러주세요.
			</div>
			</div>
		<div class="faq_sub_box" id="faq_sub_tutor">
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">1&nbsp;&nbsp;</span> 수업 등록은 아무나 할 수 있나요?</span>
				<br />
				누구나 수업 등록을 하실 수 있습니다.<br>
				단, 신분증 / 대학교 / 대학원인증 중 1개의 인증으로 신분인증을 해주셔야 합니다. 또한 튜터로서 활동하실때 수강생분들과 연락하실 연락처 인증을 해주셔야 합니다.<br>
				수업 등록 후 관리자의 최종 승인이 있어야 홈페이지에 게시되고 신청을 받을 수 있습니다. 관리자는 등록된 수업내용, 이미지, 튜터 프로필 등의 적절성, 사실확인을 검증한 이후 최종 승인을 해드립니다.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">2&nbsp;&nbsp;</span>  수업등록은 어떻게 하나요?</span>
				<br />
				수업등록은 앱과 PC(웹)에서 모두 가능합니다.<br>
				앱에서 등록 할 경우 : "더보기 >> 튜터모드로 >> 수업관리 >> 수업등록"의 절차를 통해 수업을 등록하실 수 있습니다.<br>
				PC(웹)에서 등록 할 경우 : " 튜터등록 >> 튜터 등록하기 >> 재능 등록 등록하기"의 절차를 통해 수업을 등록하실 수 있습니다.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">3&nbsp;&nbsp;</span> 수업은 어디서 진행하면 되나요?</span>
				<br />
				기본적으로 튜터님께서 수업소개서에 설정해주신 곳(EX)카페, 스터디룸, 튜터님 개인 스튜디오 등)에서 수업을 진행해주시면 되세요.<br> 자유롭게 장소를 정하여 수업을 하는 것이 Rendez,vous의 장점이니까요.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">4&nbsp;&nbsp;</span> 수업 등록후 승인까지 얼마나 걸리나요?</span>
				<br />
				튜터님께서 작성해주신 수업소개서는 Rendez,vous의 검토단분들이 꼼꼼히 검토하고 있습니다. 수업승인은 먼저 등록해주신 순서대로 진행되고 있으며 영업일 기준 평균 5일 정도 소요됩니다.
				<br>
				수업승인 반려 후 재승인 요청 해주시는 경우에도 처음부터 다시 심사가 진행되니 모든 내용을 완벽하게 작성하신 후에 제출해주시는 것이 좋습니다.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">5&nbsp;&nbsp;</span>  수강생이 수업신청을 하게 되면 어떻게 연결되나요?</span>
				<br />
				Rendez,vous 홈페이지 혹은 앱에서 "마이페이지 >> 튜터 >> 수업신청서"를 통해 수강생분의 수업신청서를 확인 하실 수 있습니다.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">6&nbsp;&nbsp;</span> 수강생분과 일정이 맞지 않아 수강신청서를 반려하고 싶은데 어떻게 하나요?</span>
				<br />
				해당 수강신청서를 클릭해주시면 신청 반려 버튼이 있습니다.<br>
				신청 반려 버튼을 클릭해주세요. 그다음 해당 수강생님께 수업을 하실 수 없는 사유를 작성해주신 후 확인을 클릭해주시면 수강신청에 대한 반려가 완료됩니다.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">7&nbsp;&nbsp;</span> 수업료는 어떻게 받나요?</span>
				<br />
				첫 수업 이후, 향후 수업료(첫 수업의 1시간 수업료를 제외한 요금)는 수강생에게 직접 전달받으시면 됩니다.<br> 단, 수강생분께서 전체결제로 Rendez,vous에 수업료를 완납하신 경우 튜터님께서는 첫 수업이 끝난 후 앱을 통해 잔여수업료를 신청해주세요.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">8&nbsp;&nbsp;</span> 연결수수료가 있나요?</span>
				<br />
				원데이수업인 경우 전체수업료의 20%가 연결수수료 입니다. 2회차 이상의 수업인 경우 첫 수업의 1시간 수업료가 연결수수료 입니다.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">9&nbsp;&nbsp;</span> 잔여수업료는 어떻게 신청하나요?</span>
				<br />
				첫 수업 진행 후 ‘Rendez,vous 앱 -> 더보기(mypage) -> 튜터모드로 -> 수업료받기’를 통해 신청해주세요.
			</div>
			<div class="que">
				<span class="rule_bold_text3"><span class="pink">10&nbsp;&nbsp;</span> 커스텀결제는 언제, 어떻게 사용하나요?</span>
				<br />
				커스텀결제는 튜터님께서 설정한 수업료를 수강생분들의 요청에 맞게 변경하실 경우 사용해주세요.<br>
				1) 수강생의 실시간 톡 문의를 받아주세요.<br>
				2) 튜터는 실시간 톡 안에 결제 변경을 클릭하여 맞춤 결제 요청서를 발행해주세요.<br>
				(원데이수업의 경우 횟수는 1회로 고정)<br>
				3) 수강생이 결제를 진행해주면 완료됩니다.
			</div>
		</div>
		</div>
	</div>
	<span id="remoCon">
		<a href="#" onClick="window.open('chatbot.do', '', 'width=500,height=700, left=1400, top=250')">
		<img src="resources/support/img/KakaoTalk.png" style="width:80px; height:80px;">
		</a>
	</span>
	<c:import url="../common/footbar.jsp"/>
	
	<script>
		function tutee(){
			$("#tutee").attr('class', 'tab on');
			$("#faq_sub_tutee").attr('class', 'faq_sub_box on');
			$("#tutor").attr('class', 'tab');
			$("#faq_sub_tutor").attr('class', 'faq_sub_box');
		}
		
		function tutor(){
			$("#tutor").attr('class', 'tab on');
			$("#faq_sub_tutor").attr('class', 'faq_sub_box on');
			$("#tutee").attr('class', 'tab');
			$("#faq_sub_tutee").attr('class', 'faq_sub_box');
		}
		
		function goQna() {
			location.href="support_qna.do";
		}		
	</script>
	<script>
	    $(document).scroll(function(){
		    var con = $("#remoCon");	
		    var position = $(window).scrollTop();	
		
		    if(position > 250){ 
		    	con.fadeIn(500); 
		    } else if(position < 250){ 
		    	con.fadeOut(500); 
		    }
		});	
		
	    $("#remoCon").click(function(){
	    	$("html, body").animate({scrollTop: 0}, 1000);
	    });
	  </script>
</body>
</html>