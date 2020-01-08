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
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MTJJTC6"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div id="wrap">
<!--HEADER -->
	<div class="hcont">
		<c:import url="../common/menubar.jsp"/>
	</div>
<!-- //HEADER -->

	<!--container-->
	<div class="container">

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
	<div class="footer_cont">
		<h1>풋터</h1>
		<br>
		<h1>풋터</h1>
		<br>
		<h1>풋터</h1>
		<br>
		
	</div>
	<!-- /FOOTER -->
       



<!-- Channel Plugin Scripts -->
<script>
var scrollTop=0;
$('#custom-button-trigger').click(function(){
	scrollTop= $(window).scrollTop();
	$('#custom-button-1').click();
});
 (function() {
   var w = window;
   if (w.ChannelIO) {
     return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
   }
   var d = window.document;
   var ch = function() {
     ch.c(arguments);
   };
   ch.q = [];
   ch.c = function(args) {
     ch.q.push(args);
   };
   w.ChannelIO = ch;
   function l() {
     if (w.ChannelIOInitialized) {
       return;
     }
     w.ChannelIOInitialized = true;
     var s = document.createElement('script');
     s.type = 'text/javascript';
     s.async = true;
     s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
     s.charset = 'UTF-8';
     var x = document.getElementsByTagName('script')[0];
     x.parentNode.insertBefore(s, x);
   }
   if (document.readyState === 'complete') {
     l();
   } else if (window.attachEvent) {
     window.attachEvent('onload', l);
   } else {
     window.addEventListener('DOMContentLoaded', l, false);
     window.addEventListener('load', l, false);
   }
 })();
  ChannelIO('boot', {
   "pluginKey": "8fc98895-06a5-402d-8740-1cb9261ebc91",
	"customLauncherSelector": "#custom-button-1",
    "hideDefaultLauncher": true,
	   "userId": "znznwkdrns@naver.com", //fill with user id
	   "profile": {
		 "name": "유현식", //fill with user name
		 "mobileNumber": "01073267776", //fill with user phone number
		 "CUSTOM_VALUE_1": "VALUE_1", //any other custom meta data
		 "CUSTOM_VALUE_2": "VALUE_2"
	   }
 });
  ChannelIO('onHide', function() {
	$(window).scrollTop(scrollTop);
});
</script>
<!-- End Channel Plugin -->	
	<!--container-->
	<script type="text/javascript"> 


		//상태변화
		function fnStatusChange(status, TalentId){
			if(status =="CS01"){
				location.href ="/tutor/regiInfo/"+TalentId;
			}else if(status =="CS03"){
				fnAjaxData(0, TalentId);
			}else if(status =="CS05"){
				location.href ="/My/ClassOpen/"+TalentId;
			}

		}
		
		//심사요청
		function ask(val, TalentId){
			var mode = val;
			switch (mode)
			{
			case 0:
				if($('#pop-ask').css('display')!='none'){
					$('#pop-ask').hide();
				}else{
					$('#talentId').val(TalentId);
					$('#pop-ask').show();
				}
				break;
			case 1:
				var TalentId  = $('#talentId').val();
				fnAjaxData(9, TalentId);

				$('#pop-ask').hide();
				break;
			case 2:
				$('#pop-ask').hide();
				break;
			}
		}
		
		//수업 상태 변경
		function fnAjaxData(status, TalentId){
			var p = [];	
			p.push('talentId='+TalentId);	
			p.push('status='+status);
			 
		
			var pars = p.join('&');

			var Ajax = new Ajax2();
			Ajax.init('/My/MyTutorClassProc.php', {
				method: 'post'
				, parameters: pars
				, idTarget: ''
				, oSelf: this
				, onCreate: function(){}
				, onComplete: function(oXHR)
				{	
					if(oXHR.responseText =='0000')
					{
						if(status == 0){
							alert('심사 취소가 완료 되었습니다');
						}else if(status == 2){
							alert('운영 활성화 되었습니다');
						}else if(status == 3){
							alert('운영중지 되었습니다');
						}else if(status == 9){
							alert('심사 요청 되었습니다');
						}
						
						location.reload();
					} 
					else
					{
						alert(oXHR.responseText); 
					}
				}
			});	

		}
		
		//selling , soldout
		function changeSold(Idx,val) {		
			$.post('/My/ChangeSold', { 
				Idx: Idx, 
				val: val 
				})
			.success(function (res) {							
				if (res=='0000') {				
					if(val ==1) {
						alert('SOLDOUT 처리되었습니다. 다시 수업이 가능할 때 SELLING을 클릭하여주세요!');
					} else {
						alert('SELLING 처리되었습니다.');
					}
					location.reload();
				} else {				
					alert(res);
				}
			})
			.fail(function (res) {			
				alert(res.message);
			});
		}

		function openTab(elm){
			var elm = elm;
			if($(elm).next('.tab').css('display')!='block'){
				$(elm).next('.tab').show();
			}else{
				$(elm).next('.tab').hide();
			}
		}
	</script>	

</div></div><div id="ch-plugin"><div id="ch-plugin-script" style="display:none" class="ch-messenger-hidden"><iframe id="ch-plugin-script-iframe" style="position:relative!important;height:100%!important;width:100%!important;border:none!important;"></iframe></div><div id="ch-plugin-core"><style data-styled="" data-styled-version="4.3.2"></style><style data-styled="" data-styled-version="4.3.2"></style><div hidden="" class="sc-erNlkL bRmDYI sc-RbTVP hrWefY"><div class="sc-eNNmBn cXBieY"><div name="push-exit" width="45" height="45" size="24" class="sc-dnqmqq sc-cBrjTV iByMcc"></div><div class="sc-jUpvKA ccOxya"><div size="34" class="sc-kGXeez kGMzSU"></div><div class="sc-fkyLDJ epSaPl">(알 수 없음)</div><div class="sc-iCwjlJ hRSOFL">9:00am</div></div><div class="sc-eopZyb bYeAnX"><div class="sc-jRuhRL coGTKb"><span class=""></span></div></div></div></div><div hidden="" class="sc-kEmuub cCdpiZ sc-RbTVP hrWefY"><div class="sc-eNNmBn cXBieY"><div name="push-exit" width="45" height="45" size="24" class="sc-dnqmqq sc-cBrjTV iByMcc"></div><div class="sc-jUpvKA ccOxya"><div size="34" class="sc-kGXeez kGMzSU"></div><div class="sc-fkyLDJ epSaPl">(알 수 없음)</div><div class="sc-iCwjlJ hRSOFL">9:00am</div></div><div class="sc-eopZyb bYeAnX"><div class="sc-jRuhRL coGTKb"><span class=""></span></div></div></div></div><style data-styled="" data-styled-version="4.3.2"></style><div hidden="" class="sc-bxivhb ggxtKj"><div class="sc-ifAKCX ccgoiG"><div class="textLauncherContent sc-EHOje blkbwA"></div><div class="textLauncherIcon sc-bZQynM gSNwmf"><div hidden="" class="sc-htpNat sc-htoDjs jiXddj">0</div></div></div></div></div></div><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div><iframe name="fb_xdm_frame_https" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=44#channel=f252bad3d651b48&amp;origin=https%3A%2F%2Ftaling.me" style="border: none;"></iframe></div><div></div></div></div><style data-styled="" data-styled-version="4.3.2"></style><style>.tb_button {padding:1px;cursor:pointer;border-right: 1px solid #8b8b8b;border-left: 1px solid #FFF;border-bottom: 1px solid #fff;}.tb_button.hover {borer:2px outset #def; background-color: #f8f8f8 !important;}.ws_toolbar {z-index:100000} .ws_toolbar .ws_tb_btn {cursor:pointer;border:1px solid #555;padding:3px}   .tb_highlight{background-color:yellow} .tb_hide {visibility:hidden} .ws_toolbar img {padding:2px;margin:0px}</style></body>
</html>