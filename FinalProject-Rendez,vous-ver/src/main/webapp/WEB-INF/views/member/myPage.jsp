<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    
   <!-- -------------수정 전-------------- -->
   <!-- <link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
    <link rel="stylesheet" id="ppstyle" type="text/css" href="style.css">
    <link rel='stylesheet' href='./css/animate.css'/>
    <link rel='stylesheet' href='./css/et-line.min.css'/>
    <link rel='stylesheet' href='./css/font-awesome.min.css'/>
    <link href='http://fonts.googleapis.com/css?family=Montserrat&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oswald&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
     -->
    <!-- <script src="./js/jquery-2.1.0.min.js"></script>
    <script src="./js/bootstrap.js"></script>
    <script src="./js/blocs.js"></script>
    <script src='./js/jqBootstrapValidation.js'></script>
    <script src='./js/formHandler.js'></script> -->
    
    
    <!-- 수정 후 -->
    <link rel="stylesheet" type="text/css" href="resources/myPage/css/animate.css">
    <link rel="stylesheet" type="text/css" href="resources/myPage/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="resources/myPage/css/et-line.min.css">
    <link rel="stylesheet" type="text/css" href="resources/myPage/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="resources/myPage/css/style.css">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Montserrat&subset=latin,latin-ext">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Oswald&subset=latin,latin-ext">
	
    <script src="<c:url value="/resources/myPage/js/blocs-ck.js" />"></script>   
    <script src="<c:url value="/resources/myPage/js/blocs.js" />"></script>
    <script src="<c:url value="/resources/myPage/js/bootstrap.js" />"></script>
    <script src="<c:url value="/resources/myPage/js/formHandler.js" />"></script>
    <script src="<c:url value="/resources/myPage/js/jqBootstrapValidation.js" />"></script>
    <script src="<c:url value="/resources/myPage/js/jquery-2.1.0.min.js" />"></script>
	
 </head>
<style>
	.myReview {
       width:85%;
       height:70vh;
    }
    
    .moon2 {
       width:85%;
       height:70vh;
    }
    
    .myRevieww{
       width:80%;
       height:100vh;
       margin:auto;
       margin-top:5%;
       margin-left:18%;
       text-align:center;
    }
    
    .moonlist{
       width:80%;
       height:100vh;
       margin:auto;
       margin-top:5%;
       margin-left:18%;
       text-align:center;
    }
	 
	
	 #myReviewTable {
      width:100%;
      margin:auto;
      margin-top:5%;
   }
   
	#myReviewTable th {
	  border-top:1px solid #c9c0b1;
      border-bottom:1px solid #c9c0b1;
      text-align:center;
   }
   
   #myReviewTable td {
      border-bottom:1px solid #c9c0b1;
      text-align:center;
   }
   
   #mymoonTable {
      width:100%;
      margin:auto;
      margin-top:5%;
   }
   
	#mymoonTable th {
	  border-top:1px solid #c9c0b1;
      border-bottom:1px solid #c9c0b1;
      text-align:center;
   }
   
   #mymoonTable td {
      border-bottom:1px solid #c9c0b1;
      text-align:center;
   }
   
	.avatar{
	width:138px;
	height:138px;
	}
	
	
		     #submit{ 
         width: 127px; 
         height: 48px; 
         text-align: center; 
         border: none; 
         margin-top: 20px; 
         cursor: pointer; 
     } 
     #submit:hover{ 
         color: #fff; 
         background-color: #216282; 
         opacity: 0.9; 
     } 
     #cancel { 
         width: 127px; height: 48px; 
         text-align: center; 
         border: none; 
         margin-top: 20px; 
         cursor: pointer; 
     } 
     #cancel:hover{ 
         color: #fff; 
         background-color: #216282; 
         opacity: 0.9; 
     }
		
	    .modal { 
         position: fixed; 
         left: 0; 
         top: 0; 
         width: 100%; 
         height: 100%; 
         background-color: rgba(0, 0, 0, 0.5); 
         opacity: 0; 
         visibility: hidden; 
         transform: scale(1.1); 
         transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform 0.25s; 
     } 
     .modal-content { 
         position: absolute; 
         top: 50%; 
         left: 50%; 
         transform: translate(-50%, -50%); 
         background-color: white; 
         padding: 1rem 1.5rem; 
         width: 500px; 
         height: 350px; 
         border-radius: 0.5rem; 
     } 
     .close-button { 
         float: right; 
         width: 1.5rem; 
         line-height: 1.5rem; 
         text-align: center; 
         cursor: pointer; 
         border-radius: 0.25rem; 
         background-color: lightgray; 
     } 
     .close-button:hover { 
         background-color: darkgray; 
     } 
     .show-modal { 
         opacity: 1; 
         visibility: visible; 
         transform: scale(1.0); 
         transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s; 
     } 
</style>
<body>
<c:import url="../common/menubar.jsp"/>
   <!-- <script>
   <c:if test="${ !empty msg }">
      alert('${msg}');
      <c:remove var="msg"/>
   </c:if>
   </script> -->
<!-- Main container -->
<div class="page-container">

    <!-- Navigation Bloc -->
    <div class="bloc l-bloc bgc-white" id="nav-bloc">
        <div class="container bloc-sm">
            <nav class="navbar nav-center row">
                <div class="navbar-header">
                    <!-- logo if you want <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo" /></a> -->
                    <button id="nav-toggle" type="button" class="ui-navbar-toggle navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-1">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse navbar-1">
                    <ul class="site-navigation nav navbar-nav">
                        <li>
                            <a onclick="scrollToTarget('#portfolio')">찜 목록</a>
                        </li>
                        <li>
                            <a onclick="scrollToTarget('#moon')">1:1 문의내역</a>
                        </li>
                        <li>
                            <a onclick="scrollToTarget('#review')">작성한 리뷰</a>
                        </li>
                        <li>
                            <a onclick="scrollToTarget('#contact')">쿠폰함</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navigation Bloc END -->

    <!-- bloc-1 -->
    <div class="bloc bg-95cdfeef1 bgc-ferrari-red d-bloc tc-white b-parallax" id="bloc-1">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-sm-12">
                    <div class="text-center">
                    	<%-- <c:if test="${ !empty userpropic.uOriginName }">
						<a href="${ contextPath }/resources/user/img/default.jpg"/>
						</c:if>
						
						<c:out value="${ loginUser.uOriginName }"></c:out>
                    	<c:if test="${ !empty userpropic.uChangeName }">
						<a href="${ contextPath }/resources/user/img/default.jpg${ userpropic.uChangeName }" download>${ userpropic.uOriginName }</a>
						</c:if> --%>
						
                    	<img src="resources/user/img/default.jpg" class="avatar" alt="User image">
                    </div>
                    <h1 class="mg-md text-center tc-black">
                        <c:out value="${ loginUser.user_name }"/>님 마이페이지
                    </h1>

                    <h2 class="text-center tc-white-smoke mg-md">
                        <c:out value="${ loginUser.user_id }"/>
                    </h2>

                    <p class="text-center">
                        <c:out value="${ loginUser.enroll_date }"/>
                    </p>
                    <div class="divider-h">
                        <span class="divider divider-half"></span>
                    </div>
                    <div class="text-center">
                        <a class="btn btn-lg wire-btn-white btn-wire btn-rd" onclick="pwdCheckPage()">내 정보</a>
                    	<script>function pwdCheckPage() {
                    		window.open("pwdCheckPage.do", '패스워드 체크', 'width=600, height=600, left=460, top=100, menubar=no, status=no, location=no, toolbar=no');  
                    	}</script>
                    	<tr>
					<td colspan="2" align="center">
							</td>	
						</tr>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-1 END -->

	<!-- portfolio -->
    <div class="bloc l-bloc bgc-white" id="portfolio">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="text-center mg-md">
                        	찜 목록	
                    </h2>

                    <div class="divider-h">
                        <span class="divider divider-half"></span>
                    </div>
                    <p class="text-center sub-heading">
                        <c:out value="${ loginUser.user_name } "/>님의 관심 강의 목록입니다.
                    </p>
                </div>
            </div>
            
            <div class="row voffset">
                <div class="col-sm-3">
                    	<!-- <script>function wish() {
                    		window.open("#", '찜목록', 'width=600, height=600, left=460, top=100, menubar=no, status=no, toolbar=no');  
                    	}</script> -->
                    <a href="#" data-lightbox="img/people-woman-coffee-meeting.jpg" data-caption="Image description"><img 
                    		src="resources/myPage/img/people-woman-coffee-meeting.jpg" class="img-responsive animated zoomIn" alt="Portfolio"/></a>
                </div>
                
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-coffee-notes-tea.jpg" data-caption="Image description"><img
                            src="resources/myPage/img/people-coffee-notes-tea.jpg" class="img-responsive animated zoomIn" alt="Portfolio"/></a>
                </div>
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-coffee-tea-meeting.jpg" data-caption="Image description"><img
                            src="resources/myPage/img/people-coffee-tea-meeting.jpg" class="img-responsive animated zoomIn" alt="Portfolio"/></a>
                </div>
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-woman-coffee-meeting.jpg"
                       data-caption="Image description"><img src="resources/myPage/img/people-woman-coffee-meeting.jpg"
                                                             class="img-responsive animDelay02 animated zoomIn" alt="Portfolio"/></a>
                </div>
            </div>
            <div class="row voffset">
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-coffee-notes-tea.jpg" data-caption="Image description"><img
                            src="resources/myPage/img/people-coffee-notes-tea.jpg"
                            class="img-responsive animDelay02 animated zoomIn animDelay04" alt="Portfolio"/></a>
                </div>
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-coffee-tea-meeting.jpg" data-caption="Image description"><img
                            src="resources/myPage/img/people-coffee-tea-meeting.jpg" class="img-responsive animated zoomIn animDelay04" alt="Portfolio"/></a>
                </div>
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-woman-coffee-meeting.jpg"
                       data-caption="Image description"><img src="resources/myPage/img/people-woman-coffee-meeting.jpg"
                                                             class="img-responsive animated zoomIn animDelay04" alt="Portfolio"/></a>
                </div>
                <div class="col-sm-3">
                    <a href="#" data-lightbox="img/people-coffee-notes-tea.jpg" data-caption="Image description"><img
                            src="resources/myPage/img/people-coffee-notes-tea.jpg"
                            class="img-responsive animated zoomIn animDelay04" alt="Portfolio"/></a>
                </div>
            </div>
        </div>
    </div>
    <!-- portfolio END -->

    <!-- 문의 -->
    <div class="bloc l-bloc bgc-white" id="moon">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="mg-md text-center">
                        	1:1 문의내역 
                    </h2>

                    <div class="divider-h">
                        <span class="divider divider-half"></span>
                    </div>
                </div>
            </div>
            <div class="moon2">
                <div class="moonlist">
                    <table id="mymoonTable">
			             <tr>
			               <th width="10%">번호</th>
			               <th width="50%">제목</th>
			               <th width="15%">작성자</th>
			               <th width="15%">작성일</th>
			               <th width="10%">답변현황</th>
			            </tr>
							<c:forEach var="q" items="${ list }">
								<tr>
									<td>${q.qNo}</td>
									<td><c:if test="${ !empty loginUser }">
											<c:url var="myQnaDetail" value="myQnaDetail.do">
												<c:param name="qNo" value="${ q.qNo }" />
												<c:param name="page" value="${ pi.currentPage }" />
											</c:url>
											<a href="${ myQnaDetail }">${ q.qTitle }</a>
										</c:if> 
										<c:if test="${ empty loginUser }">
										${ q.qTitle }
										</c:if>
									</td>
									<td>${q.qWriter}</td>
									<td>${q.qDate}</td>
									<td>
									<c:if test='${ q.aStatus == "N" }'>
										X
									</c:if> 
									<c:if test='${ q.aStatus == "Y" }'>
										O
									</c:if>
									</td>
								</tr>
							</c:forEach>
							<!-- <a onclick="scrollToTarget('#moon')"></a> -->
							<tr align="center" height="20">
								<td colspan="6">
					<!-- [이전] --> <c:if test="${ pi.currentPage <= 1 }">
									[이전] &nbsp;
							   	   </c:if> 
							   	   <c:if test="${ pi.currentPage > 1 }">
										<c:url var="before" value="mypage.do">
											<c:param name="page" value="${ pi.currentPage - 1 }" />
										</c:url>
										<a href="${ before }">[이전]</a>
									</c:if> 
					<!-- [페이지] --> <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
										<c:if test="${ p eq pi.currentPage }">
											<font color="#c9c0b1" size="4"><b>[${ p }]</b></font>
										</c:if>
										<c:if test="${ p ne pi.currentPage }">
											<c:url var="pagination" value="mypage.do">
												<c:param name="page" value="${ p }" />
											</c:url>
											<a href="${ pagination }">[${ p }]</a>
										</c:if>
									</c:forEach> 
					<!-- [다음] --> <c:if test="${ pi.currentPage >= pi.maxPage }">
											[다음]
								   </c:if> 
								   <c:if test="${ pi.currentPage < pi.maxPage }">
										<c:url var="after" value="mypage.do">
											<c:param name="page" value="${ pi.currentPage + 1 }" />
										</c:url>
										<a href="${ after }">[다음]</a>
									</c:if>
								</td>
							</tr>
							<c:if test="${ empty list }">
								<h1>문의 내역이 없습니다.</h1>
							</c:if>
						</tbody>
			          </table>
                </div>
            </div>
        </div>
    </div>
    <!-- 문의 END -->
    <!-- review start -->
    <div class="bloc l-bloc bgc-white" id="review">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="mg-md text-center">
                        	작성한 리뷰 
                    </h2>

                    <div class="divider-h">
                        <span class="divider divider-half"></span>
                    </div>
                </div>
            </div>
            <div class="myReview">
                <div class="myRevieww">
                    <table id="myReviewTable">
			             <tr>
			               <th width="10%">번호</th>
			               <th width="50%">제목</th>
			               <th width="15%">작성자</th>
			               <th width="15%">작성일</th>
			               <th width="10%">조회수</th>
			            </tr>
			            <tr>
			               <td>1</td>
			               <td>리뷰리뷰</td>
			               <td>회원1</td>
			               <td>2019-12-26</td>
			               <td>1</td>
			            </tr>
			          </table>
                </div>
            </div>
        </div>
    </div>
	<!-- review end -->

    <!-- Bloc Group END -->

    

  

    <!-- bloc-8 쿠폰함 -->
    <div class="bloc bg-95cdfeef1 bgc-ferrari-red d-bloc b-parallax" id="contact">
        <div class="container bloc-lg">
            <div class="row">
                <div class="col-sm-12 col-md-6 col-md-offset-3">
                    <form id="form-1" novalidate>
                        <h3 class="mg-md text-center">
                            	쿠폰 등록
                        </h3>

                        <div class="form-group">
                            <label>
                                Coupon-number
                            </label>
                            <input id="name" class="form-control" required/>
                        </div>
                        <div class="text-center">
                            <button class="bloc-button btn btn-lg btn-wire" type="submit">
                                	등록하기
                            </button>
                            <button class="bloc-button btn btn-lg btn-wire" type="button">
                                	보유 쿠폰 보기
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- bloc-8 END -->

</div>
	<c:import url="../common/footbar.jsp"/>
</body>
</html>
