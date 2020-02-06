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
   
   
   
   
   
   
   
   
    <link rel="shortcut icon" href="${contextPath }/resources/h1/Images/logo.ico" />
        


   
   

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
      
      .image:hover {
         cursor: pointer;
      }
      
      tr{
      border-bottom: 1px solid #ddd;
      }
      
      tr:not(:first-child):hover{
      background-color: #f7fafc;
      }
      
      
      td,th{
         width: 100px;
         text-align: center;
         height: 50px; 
      }
   
      .le{
          border-radius: 4px;
          padding: 3px 10px 4px;
          font-size: 14px;
          font-weight: 400;
          color: white;
      }
      .le-before{
       background-color:#5bc0de; 
      }
      .le-ing{
       background-color: #f0ad4e;
      }
      .le-after{
       background-color:#5cb85c;
      }
   
   
   
   
   
   
   
   
    </style>






</head>
<body style="" cz-shortcut-listen="true">


<div id="wrap">
<!--HEADER -->
   <div class="hcont">
      <c:import url="../common/menubar.jsp"/>
   </div>
   <c:import url="../common/hyunsidebar.jsp"/>
<!-- //HEADER -->

   <!--container-->
   <div class="container" style="height: 1200px; right: 150px; bottom: 47px">

      <!--MyTItleBox head-->
      <div class="title-box">
         <h1>내 수업</h1>
         <select class="class-option" id="se1" onchange="fnSelectTitle();" style="margin-top: 30px">
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
            <input type="text" value="${la.lNo }" hidden>
            <div class="image" onclick="goSuup(this)" style="background-image:url(${ contextPath}/resources/lessonImg/${la.cName });" ></div>
            </c:if>   

            
            
            </c:forEach>
            <div class="info-box">                         
               <h3>${li.lTitle }</h3>
            
               <div class="button-box">
                     <input type="text" value="${li.lNo}" hidden>
                     <input type="text" value="${li.lPrice}" hidden>
                     <div class="button_gray cursor" id="myBtn" onclick="addLS(this);">수업 일정 추가</div>
                     &nbsp;
                     <div class="button_gray cursor" onclick="updateLesson(this);" style="width: 180px">수업 정보 수정하기</div>
                     &nbsp;   
                     <!-- <div class="button_white cursor" onclick="fnStatusChange('CS01','19200');">등록완료하기</div> -->            
               </div>
                     
            </div>
         </div>
      </div>
      </c:forEach>
      
      <script>
      function goSuup(value){
         var lNo = $(value).parent().children().eq(0).val();
         location.href="lessonDetail.do?lNo="+lNo
      }
      
      </script>
      
      
      
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
               <th>상태</th>
               <th>신청인</th>
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
               
               <td>
               <c:if test="${ l.sTime gt currTime }">
               <span class="le le-before">시작 전</span>
               </c:if>
               <c:if test="${ l.eTime lt currTime }">
               <span class="le le-after">완료</span>
               </c:if>
               <c:if test="${ l.sTime le currTime and currTime lt l.eTime}">
               <span class="le le-ing">수업중</span>
               </c:if>
               </td>
               
               <td>
               <input type="text" hidden value="${li.lNo }">
               <input type="text" hidden value="${l.lInning }">
               <input type="text" hidden value="${li.lTitle }">
               <button onclick="openPop(this)">조회</button>
               </td>
               
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
         
         function updateLesson(value){
            var lNo = $(value).parent().children().eq(0).val();
            if(confirm("수정하시겠습니까?")){
            location.href="updateLessonInfo.do?lNo="+lNo;
            }
         }   
            
   
      
      </script>
      <c:if test="${!empty msg }">
      <script>
         $(function(){
            
         setTimeout(function() {
            alert("수업을 추가하였습니다.");   
         }, 100);
               
      
         });

      </script>   
      </c:if>
      
    
 
    <!-- 모달 창 -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content" align="center">
        <form action="lessonTimeInsert.do">
        <input id="adlno" type="text" name="lno" hidden> <br>
        <input id="adprice" name="price" type="number" hidden=""> <br>          
      날짜: <input type="date" id="dday" name="dday" onchange="asd1(this);"  required> <br>
      시작 시간 : <input type="time" id="stime" name="stime" step="300" required> <br>
      종료 시간 : <input type="time" id="etime" name="etime" step="300" onchange="asd2();"  required><br>
      모집 인원 : <input type="number" name="total" required><br>
      <button type="submit" class="btn btn-primary ">등록하기</button>
      <button type="button" id="close" class="btn btn-default ">닫기</button>
      </form>
      </div>
 
    </div>
    <!--변경  -->
    <!-- 모달 버튼 -->
    <!-- <button class="button_gray cursor" id="myBtn" >Open Modal</button> -->
    

    
    <script type="text/javascript">
    var modal = document.getElementById('myModal');
    
    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementById("close");                                          

    // When the user clicks on the button, open the modal 
    /* btn.onclick = function() {
        
    } */

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }

    
    
    </script>
    
    
    <form name="frmData" id="frmData" action="studentList.do" method="post">
    <input id="plNo" name="lNo" hidden>
    <input id="plInning" name="lInning" hidden>
    <input id="plTitle" name="lTitle" hidden>
    </form>
    
    
    
    <script>
    
    function asd1(value){
       var curTime = new Date();
       var val = $(value).val();
       var valTime = new Date(val);
       console.log("선택시간 : " + valTime.getTime());
       console.log("현재시간 : " + curTime.getTime());
       console.log(curTime.getTime()-valTime.getTime());
       
       if(curTime.getTime()-valTime.getTime()>0){
          alert("당일 등록과 지난 날짜로는 등록할 수 없습니다");
          $("#dday").val("");
       }
   
    }
    
    function asd2(){
       var stime = $("#stime").val();
       var etime = $("#etime").val();
       
       if(stime>etime){
          alert("옳바른 시간 설정이 필요합니다");
          $("#etime").val("");
          $("#stime").val("");
       }
    }   
    
    
    
    
    
    
    
    
    
    
    
    
    function checkStudent(value){
       var lNo = $(value).parent().children().eq(0).val();
       var lInning = $(value).parent().children().eq(1).val();

       
        $.ajax({
           url : "checkStudent.do",
               data:{lNo:lNo,lInning:lInning},
               dataType:"json",
            type:"post",
               success:function(data){
                console.log(data);
                
                
                if(data.length != 0){
                for(var key in data){
                   alert(data[key].user_id);
                }
                }else{
                   alert("한명도 신청을 안했네..");
                }
               },error:function(){
                  console.log("ajax 통신 실패");
               }
               })   
       
       
    }
    
    
    function openPop(value){

    	
    	var lNo = $(value).parent().children().eq(0).val();
    	var lInning = $(value).parent().children().eq(1).val();
    	var lTitle = $(value).parent().children().eq(2).val();
    	
    	$("#plNo").val(lNo)
    	$("#plInning").val(lInning)
    	$("#plTitle").val(lTitle)
    	

		var pop_title = "신청인 목록" ;
		
		window.open("studentList.do", pop_title) ;
		
		var frmData = document.frmData ;
		frmData.target = pop_title ;
		frmData.action = "studentList.do" ;
		
		frmData.submit() ;


         
    }
    
    
    
    
    
    
    
  
    
    
    </script>
      
      

      
         
         


       <!-- FOOTER -->

       





</div>










</div>


<!--  -->
<c:import url="../common/footbar.jsp"/>



</body>
</html>