<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
   <title>${ldi.lTitle }</title>
   
   <style>
      .async-hide { 
         opacity: 0 !important
               } 
               
      .star-rating { width:205px; }                
      .star-rating,.star-rating span { display:inline-block; height:39px; overflow:hidden; background:url(${contextPath}/resources/h1/ystar.png)no-repeat; }
      .star-rating span{ background-position:left bottom; line-height:0; vertical-align:top; }
      
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
        
        .starR {
         background:
            url('${contextPath}/resources/h1/ystarcon.png')
            no-repeat right 0;
         background-size: auto 100%;
         width: 30px;
         height: 30px;
         display: inline-block;
         text-indent: -9999px;
         cursor: pointer;
      }

      .starR.on {
         background-position: 0 0;
      }   
      
      #gogaek{
          font-family: Lato, 'Helvetica Neue', Helvetica, Arial, sans-serif;
      }
      
      
      
               

   </style>
   




   
   <meta charset="UTF-8">   
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <meta name="p:domain_verify" content="1dd028b45d9d85306bb74db3d9911bbb"/>
   <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/publy2.css" />
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main15.css?ver=191216" />
   <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main16.css?ver=191216" />
   <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/main18.css?ver=191216" />

   <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/style_new2.css?ver=191216" />

   <link type="text/css" rel="stylesheet" href="${contextPath}/resources/h1/css/style_sub17.css?after" />
   

    <link rel="shortcut icon" href="${contextPath}/resources/h1//Images/logo.ico" />
    <link rel="apple-touch-icon" href="${contextPath}/resources/h1/Images/mobicon.png"/>    

   <script src="${contextPath}/resources/h1/Scripts/prototype.js"></script>
   <script src="${contextPath}/resources/h1/Scripts/jquery-1.10.2.min.js"></script>
     
    <script src="${contextPath}/resources/h1/Scripts/topbar.js"></script>
    <script src="${contextPath}/resources/h1/Scripts/common4.js"></script>
   <script src="${contextPath}/resources/h1/Scripts/func12.js"></script>
   <script src="${contextPath}/resources/h1/Scripts/controll.js"></script>
   <script src="${contextPath}/resources/h1/Scripts/motion.js"></script>
   
   



    <script src="${contextPath}/resources/h1/Scripts/popper.js"></script>
    <script src="${contextPath}/resources/h1/Scripts/mainbootstrap.js"></script>
    
    
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    

   



   <style>
      .mySlides {display:none}
      .w3-left, .w3-right, .w3-badge {cursor:pointer}
      .w3-badge {height:13px;width:13px;padding:0}   
      
      .header {
         margin-top:5px;   
           position: relative;
           background: white;
           border: none;
           height: 100px;
      }

      
   </style>   
   
</head>





<body style="">

<div id="wrap">
<!--HEADER -->
   <div class="hcont">
      <c:import url="../common/menubar.jsp"/>
   </div>
<!-- //HEADER -->



    </div>
<!-- CONTAINER -->
<div id="container_detail">

<div class="class_wrap">
      
      
      <div class="class_price" id="class_price" style="position:relative; width:300px">

         <div class="regions">
            <div class="title">
            수업 일정            </div>
            
            <!--new region id box-->
               <div class="region on" id="region" style="height: 206px;">
                  <div class="option">
                     <div class="top">
                        <div class="timedetail">
                        <div class="indate">&nbsp;&nbsp;날짜</div>시간                  
                        </div>
                     <span>| </span>수강인원
                     </div>
                  </div>
               
               
               <c:forEach var="lti" items="${lTime }">
                  <div class="option">
                     <div class="top">
                        <div class="timedetail">
                        <div class="indate"><fmt:formatDate value="${lti.lDay}" pattern="MM.dd(E)"/></div><fmt:formatDate value="${lti.sTime}" pattern="HH:mm"/>~<fmt:formatDate value="${lti.eTime}" pattern="HH:mm"/>                     
                        </div>
                     <span>|</span> <div class="region_name"></div> ${ lti.remain }/ ${ lti.total }
                     </div>
                  </div>
               </c:forEach>


                        
            </div>
                        
            <!--여기까지 new region id box-->
            

         </div>
         <script>
            var b_box=0;
            var boxheight=0;
            var plus =0;


            function more(event){
               var elm = event;

               if($('#region').hasClass('on')){
                  $('#region').scrollTop(0);
                  $('#region').addClass('on').height('130px');
                  $('#region').removeClass('on').find('.option').removeClass('on');
                  b_box=0;
                  $(elm).removeClass('on').find('span').html("다른 일정 더보기");
               }
               else{
                  $('#region').addClass('on').height('300px');
                  $(elm).addClass('on').find('span').html("다른 일정 숨기기");
               }
            }
         </script>
         
         <!--원써니 수정 장소/시간 pc 끝-->

         
         


         <div class="bnt_payment new_bnt" style="padding-right: 50px">
         <a onclick="toPay()" style="text-decoration: none;"><span class="btntxt_s">수업 신청하기</span></a>
         </div>
         
         
         <c:if test=""></c:if>
         
         <script>
            function toPay(){
               
               
               <c:if test="${empty loginUser }">
               alert("로그인이 필요합니다");
               return;
               </c:if>
               
               <c:if test="${empty lTime }">
               alert("신청 가능한 수업이 없습니다.");
               return;
               </c:if>
               
               var lno = ${ldi.lNo};
               location.href = 'detail.do?lNo='+lno;
            }
         
         </script>
         

         <!--바닥 박스 시작-->

         <!--/div-->
         <!--바닥 박스 끝-->
      </div>
      
      <!-- //수업결제 정보 -->

      
      <!-- 수업상세 정보 -->

      
      <!-- 상단이미지 -->
      <div class="class_img" style="margin-right:498px">
      
         
         <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false"> 
   
   <!--페이지-->
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      
      <c:forEach var="i" begin="1" end="${fn:length(ldi.laList)-1}">
         
      <li data-target="#myCarousel" data-slide-to="${i}">
            
      </c:forEach>
      
      
      
               
<!--       <li data-target="#myCarousel" data-slide-to="1"></li>
         
      <li data-target="#myCarousel" data-slide-to="2"></li>
         
      <li data-target="#myCarousel" data-slide-to="3"></li> -->
         
      
   </ol>
   <!--페이지-->

   <div class="carousel-inner" >
      <!--슬라이드1-->
      
<%--       <div class="item active"> 
         <a href="${ contextPath }/resources/lessonImg/13_0.png" target="_blank">
         <div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/lessonImg/13_0.png');" ></div>
         </a>
      </div> --%>

      
      <c:forEach var="la" items="${ldi.laList }">
      <div class="item"> 
         <a href="${ contextPath }/resources/lessonImg/${la.cName}" target="_blank">
         <div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/lessonImg/${la.cName}');" ></div>
         </a>
      </div>
      </c:forEach>
      

      
      
      
      
      
      
      
      
      
      
<%--       <div class="item active"> 
         <a href="${ contextPath }/resources/lessonImg/13_0.png" target="_blank">
         <div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/lessonImg/13_0.png');" ></div>
         </a>
      </div>
      
      <!--슬라이드1-->
            

      <div class="item"> 
         <a href="${ contextPath }/resources/lessonImg/13_1.jpg" target="_blank">
         <div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/lessonImg/13_1.jpg');" ></div>
         </a>
      </div>
      
      <div class="item"> 
         <a href="${ contextPath }/resources/lessonImg/13_2.jpg" target="_blank">
         <div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/lessonImg/13_2.jpg');" ></div>
         </a>
      </div>
      
      <div class="item"> 
         <a href="${ contextPath }/resources/lessonImg/13_3.png" target="_blank">
         <div style="background:#000;z-index:0;width:840px;height:540px;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/lessonImg/13_3.png');" ></div>
         </a>
      </div> --%>

            




      
   </div>
   
   <!--이전, 다음 버튼-->
   <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
   <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
</div>  
         
         
         
         
         
         
         
         
         
         
         
      </div>
      
            <script>
               var slideIndex = 1;
               showDivs(slideIndex);
               
               function plusDivs(n) {
                 showDivs(slideIndex += n);
               }
               
               function currentDiv(n) {
                 showDivs(slideIndex = n);
               }
               
               function showDivs(n) {
                 var i;
                 var x = document.getElementsByClassName("mySlides");
                 var dots = document.getElementsByClassName("demo");
                 if (n > x.length) {slideIndex = 1}
                 if (n < 1) {slideIndex = x.length}
                 for (i = 0; i < x.length; i++) {
                   x[i].style.display = "none";  
                 }
                 for (i = 0; i < dots.length; i++) {
                   dots[i].className = dots[i].className.replace(" w3-white", "");
                 }
                 x[slideIndex-1].style.display = "block";  
                 dots[slideIndex-1].className += " w3-white";
               }
      </script>
            <script>
      $(function(){
         $(".item").eq(0).addClass("active");
      });
      
      </script>
      
      
      
      
      
      <!-- /상단이미지 -->

      <div class="class_d_wrqp" >
         <!-- 상세단락 네비 -->
         <div id="class_navi" class="class_navi">
            <ul>
               <li><a href="#sumary" id="sli">요약</a></li>
               <li><a href="#tutorinfo" id="tli">튜터</a></li>
               <li><a href="#Introduction" id="ili">수업소개</a></li>
               <li><a href="#review" id="rli">리뷰</a></li>
               <li><a href="#qna" id="qli">고객센터</a></li>
            </ul>
         </div>
         <!-- /상세단락 네비 -->
            
            <c:set var="minPerson" value="9999999"/>
            <c:set var="maxPerson" value="0"/>
            
            
         <c:forEach var="ltt" items="${lTime}" >
            <c:if test="${ minPerson > ltt.total   }">
               <c:set var="minPerson" value="${ltt.total }"/>
            </c:if>
            <c:if test="${ maxPerson < ltt.total   }">
               <c:set var="maxPerson" value="${ltt.total }"/>
            </c:if>
         </c:forEach>
         
         
         <c:if test="${ minPerson eq  9999999}">
         <c:set var="minPerson" value=""/>   
         </c:if>
         <c:if test="${ minPerson eq  0}">
         <c:set var="maxPerson" value=""/>   
         </c:if>
         
         
         

         <!-- 수업타이틀 -->
         <div class="class_detail" id="sumary" style="width: 840px">
            <div class="class_name">
               <div class="tutor_img"><a href="${ contextPath }/resources/user/img/${ldi.ucName}" target="_blank"><div style="background:#000;z-index:0;width:100%;height:100%;background-size:cover;background-position:center;background-image: url('${ contextPath }/resources/user/img/${ldi.ucName}');"></div></a></div>
               <div class="name">${ ldi.uName }</div>
               <div class="nickname">${ ldi.tutor.tNick }</div>
            </div>
            <div class="class_title">
               
               <!--찜하기 시작-->
                  <a class="bnt_wishlist" id="won"><img src="${contextPath}/resources/h1/Images/icon_btn_wish_on.png"> 찜하기</a>
                  <a class="bnt_wishlist" id="woff"><img src="${contextPath}/resources/h1/Images/icon_btn_wish.png"> 찜하기</a>
               <!--찜하기 끝-->
               
               
               


               
               <script>
                  $(function(){
                        
                     
                     $("#won").hide();
                                    
                     
                     $("#won").click(function(){
                        
                        <c:if test="${empty loginUser }">
                        alert("로그인이 필요합니다");
                        return;
                        </c:if>
                        

                        
                        if($("#won").css("display")=='block' && $("#woff").css("display")=='none'){
                           
                           <c:if test="${!empty loginUser }">
                           var uno = ${loginUser.user_no};
                           </c:if>
                           
                           var lno = ${ldi.lNo};
                           
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
                        
                        <c:if test="${empty loginUser }">
                        alert("로그인이 필요합니다");
                        return;
                        </c:if>
                        
                        
                        if($("#won").css("display")=='none' && $("#woff").css("display")=='block'){
                           
                           <c:if test="${!empty loginUser }">
                           var uno = ${loginUser.user_no};
                           </c:if>
                           
                           var lno = ${ldi.lNo};
                           
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
                     
                     
                     <c:if test="${!empty favCheck }">
                     $("#won").show();
                     $("#woff").hide();
                     </c:if>                  
                  });               
               </script>
               
               
               <div class="info">
                  <a class="starimg">
                     <div class="title">${ldi.lTitle }</div>
                     
                                       </a>
               </div>
               <div class="info">
                  <ul>
                     <li class="ar">
                                                ${ldi.lRegionSub }                     </li>                     
                     <li class="hu"><font color="#ff005a">1</font>시간/회</li>
                     <li class="gr">
                                                인원:<font color="#ff005a">${ minPerson }~${ maxPerson }</font>명
                        </li>
                     <li class="ohu">
                                                <font color="#ff005a">￦<fmt:formatNumber value="${ldi.lPrice}" maxFractionDigits="3"/></font>/회당
                     </li>
                  </ul>
               </div>
            </div>
         </div>
         <!-- /수업타이틀 -->

         <!-- 튜터소개 -->
         <div class="class_detail detail_sec_bor" id="tutorinfo" style="width: 840px">
            <div class="section01" id="tutor">
               <h1>튜터정보</h1>
               <div class="cert">
                  <ul>
                     <c:forEach var="tc" items="${tutorCer}">
                     <li class="com">${tc}</li>   
                     </c:forEach>                           
                  </ul>
               </div>
               <div class="d_info04">
                  ${ ldi.tutor.tInfo }
               </div>               
            </div>
         </div>
         <script>
            function display(id, val) {
               if(val == 1) {
                  document.getElementById(id).style.display="none"
                  document.getElementById(id+'Full').style.display="block";
                  document.getElementById(id+'Open').style.display="none";
                  document.getElementById(id+'Close').style.display="block";               } else {
                  document.getElementById(id).style.display="block"
                  document.getElementById(id+'Full').style.display="none";
                  document.getElementById(id+'Open').style.display="block";
                  document.getElementById(id+'Close').style.display="none";
               }
            }
         </script>
         <!-- /튜터소개 -->

         <!-- 수업소개 -->
         <div class="class_detail detail_sec_bor" id="Introduction" style="width: 840px">
            <div class="section01">
               <h1>수업소개</h1>
               <div class="d_info04">

               ${ldi.lIntroduction }



               </div>
               <!--div class="d_info04" id="IntroductionFull" style="display:none;">
                  가야금을 전공한지 올해로 18년째 되는 <br />
서울대학교 음악대학 국악과 출신 강사입니다. <br />
<br />
정악, 산조, 25현, 창작곡 및 시창청음까지도 레슨이 가능하며,<br />
예고 및 국악학원 강사  및 개인 레스너로 활발하게 활동하여 <br />
취미와 입시 레슨 경험모두 아주 풍부합니다.<br />
<br />
처음 배우시는 분들도 악보읽는 법 부터 아주 꼼꼼하고 친절하게 레슨해드리고 있으며,<br />
악기는 제가 25현까지도 2대씩 보유하고 있어서 번거롭게 들고오시지 않으셔도 됩니다. <br />
<br />
고민이 많이 되시는 분들을 위해 원데이 클래스도 진행하고 있으니,<br />
<br />
가야금 레슨을 받고 싶으신 분들은 편하게 문의주시면 빠르게 답변해 드리겠습니다.<br />
<br />
감사합니다.<br />
<br />
               </div-->
                              <!--div class="btn_d_more" style="cursor:pointer;" id="IntroductionOpen"><a onclick="display('Introduction', 1)">소개더보기 +</a></div>
               <div class="btn_d_more" style="display:none;cursor:pointer;" id="IntroductionClose"><a onclick="display('Introduction', 2)">닫기</a></div-->
                           </div>
         </div>
         <!-- /수업소개 -->

         <!-- 수업소개 -->
                  <div class="class_detail detail_sec_bor" style="width: 840px">
            <div class="section01">
               <h1 class="mt50">수업대상</h1>
               <ul class="d_info03">
                  <li><p> ${ldi.lTarget } </p></li>
               </ul>
            </div>
         </div>
                  
         <!-- /수업소개 -->

         <!-- 커리큘럼 -->
         <!-- /커리큘럼 -->

         <!-- 튜터영상 -->
                  <div class="class_detail detail_sec_bor" id="movie" style="width: 840px">
            <div class="section01">
               <h1>튜터영상</h1>
               <!--a href="#" class="btn_list">List</a-->
                     <div>
                        <c:if test="${!empty ldi.lYtb }">
                        <iframe width="680" height="426" src="https://www.youtube.com/embed/${ldi.lYtb}" frameborder="0" allowfullscreen=""></iframe>
                        </c:if>
                     </div>                        
<!--                      <div>
                        <iframe width="680" height="426" src="https://www.youtube.com/embed/XQFQZQwiOiA" frameborder="0" allowfullscreen=""></iframe>
                     </div>    -->                     
                           </div>            
         </div>
                  <!-- /튜터영상 -->

         <!-- 튜터영상 -->
         <!--div class="class_detail detail_sec_bor" id="movie">
            <div class="section01">
               <h1>튜터블로그</h1>
               <a href="#" class="btn_list">List</a>
               <div><iframe width="680" height="426" src="https://www.youtube.com/embed/PUFWNd9LVPI" frameborder="0" allowfullscreen></iframe></div>
            </div>            
         </div-->
         <!-- /튜터영상 -->

         <!-- 리뷰 -->
         <div class="class_detail detail_sec_bor" id="review" style="width: 840px">
            <div class="section01">
               <h1>리뷰(<c:out value="${fn:length(lRList) }" />)</h1>
               <a class="btn_st" id="wReview" onclick="writeReview();">리뷰쓰기</a>
               <a class="btn_st" id="uReview" onclick="updateReview();">리뷰수정</a>
                              <div class="review_box">      
                              <span class='star-rating'>
                                 <span style ="width:${lessonAvg * 20}%; float: left;" ></span>
                              </span>    
                              <c:if test="${lessonAvg != 'NaN'}">
                              ${lessonAvg}
                              </c:if>
                              </div>
   
                              <div class="review_list" id="bookmarkReview">
                  <ul>
                     <div id="innerReviewDiv">
                                                   
                           <c:forEach var="lr" items="${lRList }">
                           <li>
                              <dl>
                                 <dt>
                                    <p class="profile_img" style="background: #000; z-index: 0; width: 100%; background-size: cover; background-position: center; background-image: url(${contextPath}/resources/user/img/${lr.uCName });"></p>
                                    <p class="name">${lr.uName }</p>
                                 </dt>
                                 <dd>
                                    ${lr.rContent }
                                 </dd>
                                 <dd class="date"><fmt:formatDate value="${lr.rDate }" pattern="yyyy-MM-dd HH:mm:ss"/></dd>
                              </dl>
                           </li>   
                           </c:forEach>
                           
                           
                        </div>
                  </ul>
               </div>
               <div class="paging" id="innerPageDiv"></div>
            </div>
         </div>
         <!-- /리뷰 -->

         
         
         <script>
         
         $(function(){
            
            $("#uReview").hide();
            
            <c:if test="${!empty uRStatus }">
            uRStatus = '${uRStatus}';
            </c:if>
            
            if(uRStatus=='reviewed'){
               $("#wReview").hide();
               $("#uReview").show();
                     
            }
         
         });      
         
         
         function writeReview(){
            
            <c:if test="${empty loginUser }">
            alert("로그인이 필요합니다");
            return;
            </c:if>
            


            if(uRStatus=='unable'){
               alert('수강을 받으신 회원분만 리뷰를 남기실 수 있습니다.');
            }else if(uRStatus=='able'){
               $("#myBtn").click();
            }
         }
         
         
         function updateReview(){
            $("#myBtn").click();
         }
         
         
         </script>
         

    <!-- Trigger/Open The Modal -->
    <button id="myBtn" hidden>진짜 리뷰 버튼</button>
 
    <!-- The Modal -->
            <div id="myModal" class="modal">

               <!-- Modal content -->
               <div class="modal-content" style="width: 500px">
               <c:if test="${uRStatus eq 'able' }">   
                  <div class="modal-header">

                     <h4>${ldi.lTitle } 에 대한 리뷰를 등록해주세요</h4>
                  </div>
                     
                  <form action="insertReview.do" onsubmit="return submitReview();">
                  <div class="modal-body">
                     

                     <div class="starRev">
                        <span class="starR">1</span> <span class="starR">2</span> <span
                           class="starR">3</span> <span class="starR">4</span> <span
                           class="starR">5</span>
                     </div>
                     
                     <br>
                     <hr>
                     
                     <textarea class="form-control" rows="5"
                        style="margin: 0px; width: 400px; height: 90px;"
                        placeholder="내용을 입력해주세요" name="rContent" id="rContent"></textarea>
                  </div>
                  <div class="modal-footer">
                     <input type="text" name="lNo" value="${ ldi.lNo }" hidden="">
                     <input type="text" id="rRating" name="rRating" hidden="">
                     <button type="submit" class="btn btn-primary ">등록하기</button>
                     <button type="button" id="close" class="btn btn-default ">닫기</button>
                  </div>
                  </form>
                  </c:if>
                  
                  <c:if test="${uRStatus eq 'reviewed' }">   
                  <div class="modal-header">
                     <h4>리뷰를 수정합니다.</h4>
                  </div>                  
                  
                  <form action="updateReview.do" onsubmit="return submitReview();">
                  <div class="modal-body">
                     

                     <div class="starRev">
                        <span class="starR">1</span> <span class="starR">2</span> <span
                           class="starR">3</span> <span class="starR">4</span> <span
                           class="starR">5</span>
                     </div>
                     
                     <br>
                     <hr>
                     
                     <textarea class="form-control" rows="5"
                        style="margin: 0px; width: 400px; height: 90px;"
                        placeholder="내용을 입력해주세요" name="rContent" id="rContent">${userReview.rContent}</textarea>
                  </div>
                  <div class="modal-footer">
                     <input type="text" name="lNo" value="${ ldi.lNo }" hidden="">
                     <input type="text" id="rRating" name="rRating" value="${userReview.rRating}" hidden="">
                     <button type="submit" class="btn btn-primary ">수정하기</button>
                     <button type="button" id="close" class="btn btn-default ">닫기</button>
                  </div>
                  </form>
                  
                  <script>
                  $(function(){
                     $("#uReview").click(function(){
                        $(".starR").eq(${userReview.rRating}-1).click();
                     });
                     
                  });
                  
                  
                  
                  </script>   
                  </c:if>

               </div>
            </div>
            







            <!-- 모달 스크립트 -->   
   <script type="text/javascript">
    // Get the modal
    var modal = document.getElementById('myModal');

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementById("close");                                          

    // When the user clicks on the button, open the modal 
    btn.onclick = function() {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }
    
    //별점
          $('.starRev span').click(function(){
           $(this).parent().children('span').removeClass('on');
           $(this).addClass('on').prevAll('span').addClass('on');
           $("#rNum").val($(this).parent().children('.on').last().text());
           return false;
         });
    
    $(".starR").click(function(){
       var rRating =  $(this).text();
       $("#rRating").val(rRating); 
    });
    
    function submitReview(){
      
       var rContent = $("#rContent").val();
       var rRa = $("#rRating").val();
       
      if(rContent.length == 0){
         alert("리뷰 내용을 입력해주세요");
         return false;
      }
      
      if(rRa == 0 || rRa.length ==0){
         alert("별점을 입력해주세요");
         return false;
      }
       
       return true;
    }
    
    
    


   
   </script>
    

         
         
         
         
         
         
         
         

         <!-- 문의 -->
         <div class="class_detail detail_sec_bor" id="qna" style="width: 840px">
            <div class="section01">
               <h1>고객센터</h1><h1>
               <div class="col-lg-6 order-lg-1 my-auto showcase-text" id="gogaek">
               <h2>고객 센터 운영 시간</h2>
               <p class="lead mb-2">평일 오전 10시 ~ 오후 6시</p>
               <p class="lead mb-2">점심시간 오후 1시 ~ 오후 2시</p>
               <p class="lead mb-2">공휴일 휴무</p>
               </div>
               <p style="padding-top:10px;"></p>
               <a href="" target="_blank"><img src="resources/support/img/time1.jpg" width="50%"></a><a href="https://play.google.com/store/apps/details?id=com.taling" target="_blank"><img src="https://taling.me/Content/Images/and.png" width="50%"></a>
                  
                  <a href="support_main.do" class="btn_st">고객센터</a>                  
                              
               <div class="review_list" id="bookmarkQna">
                  <ul>
                     <div id="innerQnaDiv">
                        
                     </div>
                  </ul>
               </div>
               <div class="paging" id="innerQnaPageDiv"></div>
            </h1></div>
         </div>
         <!-- /문의-->

         <!-- 지도 -->
         <div class="class_detail detail_sec_bor">
   
            <div id="checker"></div>
         </div>
         
         
         <!-- /지도 -->

         

      </div>
      <!-- //수업상세 정보 -->

   </div>

   <!-- 비슷한강의>
   <div class="wide_section_wrap">
      <div class="like_class">
         <h1>비슷한강의</h1>
         <ul class="lc_list">
                           비슷한 강의가 없습니다.
                        </ul>
      </div>
   </div>
   <!-- //비슷한강의 -->

</div>


<div id="popup-write-qna" class="popup popup-write-qna" data-hide="popup-write-qna">
   <div class="popup-content" id="frm-write-review">
      <h1>
         <strong>질문을 등록해주세요.</strong> 
      </h1>
      <br>
      
      <input type="hidden" id="qId" value="">
      <div class="review-content">
         <textarea name="content_question" id="content_question" placeholder="궁금하신 점이 있다면 무엇이든 편하게 물어보세요! 최대한 빠르게 답변해드리겠습니다. (개인 연락처는 입력이 불가합니다.)"></textarea>
         <input type="checkbox" name="noname" id="noname"> 익명으로 쓰기
         <button type="submit" class="btn btn-pink btn-sm pull-right" onclick="question();">질문 올리기</button>
      </div> 
   </div>
</div>

<div id="popup-write-answer" class="popup popup-write-answer" data-hide="popup-write-answer">
   <div class="popup-content" id="frm-write-review">
      <h1>
         <strong>답변을 등록해주세요.</strong> 
      </h1>
      <br>
      
      <input type="hidden" id="qId" value="">
      <div class="review-content">
         <textarea name="content_answer" id="content_answer" placeholder="개인 연락처는 입력이 불가합니다."></textarea>
         <button type="submit" class="btn btn-pink btn-sm pull-right" onclick="answer();">답변 올리기</button>
      </div> 
   </div>
</div>

<script>

inReviewDiv('166',0);



String.prototype.toInteger = function() {
 return this.replace(/[^0-9]/g, '') * 1;
}

docuwidth = $( window ).width()/2;

$( window ).resize(function() {
   docuwidth = $( window ).width()/2;
});


$(window).scroll(function() {   

   if ($(window).scrollTop() > 691){ 
      $('#class_navi').addClass("fixedLayer");
      $("#class_navi").css("left", docuwidth - 600);
   }
   else{
      $("#class_navi").css("left", 0);
      $('#class_navi').removeClass("fixedLayer");
   }

   c = document.getElementById("checker");
   var limiter = c.offsetTop+80;

   
   if($(window).scrollTop() > 100) {
      if($(window).scrollTop() < limiter) {
         $("#class_price").addClass("fixedLayerRemote");
         $("#class_price").css("left", docuwidth + 300);
      } else {
         $("#class_price").removeClass("fixedLayerRemote");
         $("#class_price").animate({"top" : limiter-200 + "px"}, 10);
         $("#class_price").css("left", 0);
      }
   } else {
         $("#class_price").removeClass("fixedLayerRemote");
         $("#class_price").animate({"top" : 0 + "px"}, 10);
         $("#class_price").css("left", 0);
   }
   
   toffsetTop = document.getElementById("tutorinfo").offsetTop + 650;
   IoffsetTop = document.getElementById("Introduction").offsetTop + 650;
   roffsetTop = document.getElementById("review").offsetTop + 650;
   qoffsetTop = document.getElementById("qna").offsetTop + 650;
   
});


</script>

<c:import url="../common/footbar.jsp"/>

</body>
</html>
