<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=0">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

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
<link rel="stylesheet" type="text/css"
   href="resources/myPage/css/animate.css">
<link rel="stylesheet" type="text/css"
   href="resources/myPage/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
   href="resources/myPage/css/et-line.min.css">
<link rel="stylesheet" type="text/css"
   href="resources/myPage/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
   href="resources/myPage/css/style.css">
<link rel="stylesheet" type="text/css"
   href="http://fonts.googleapis.com/css?family=Montserrat&subset=latin,latin-ext">
<link rel="stylesheet" type="text/css"
   href="http://fonts.googleapis.com/css?family=Oswald&subset=latin,latin-ext">

<!-- myInfo용 css -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
<!-- 위시리스트용 css -->
<link rel="stylesheet" href="../dist/css/swiper.min.css">

<script src="<c:url value="/resources/myPage/js/blocs-ck.js" />"></script>
<script src="<c:url value="/resources/myPage/js/blocs.js" />"></script>
<script src="<c:url value="/resources/myPage/js/bootstrap.js" />"></script>
<script src="<c:url value="/resources/myPage/js/formHandler.js" />"></script>
<script
   src="<c:url value="/resources/myPage/js/jqBootstrapValidation.js" />"></script>
<script src="<c:url value="/resources/myPage/js/jquery-2.1.0.min.js" />"></script>

</head>
<style>
.myReview {
   width: 85%;
   height: 70vh;
}

.moon2 {
   width: 85%;
   height: 70vh;
}

.myRevieww {
   width: 80%;
   height: 100vh;
   margin: auto;
   margin-top: 5%;
   margin-left: 18%;
   text-align: center;
}

.moonlist {
   width: 80%;
   height: 100vh;
   margin: auto;
   margin-top: 5%;
   margin-left: 18%;
   text-align: center;
}

#myReviewTable {
   width: 100%;
   margin: auto;
   margin-top: 5%;
}

#myReviewTable th {
   border-top: 1px solid #c9c0b1;
   border-bottom: 1px solid #c9c0b1;
   text-align: center;
}

#myReviewTable td {
   border-bottom: 1px solid #c9c0b1;
   text-align: center;
}

#mymoonTable {
   width: 100%;
   margin: auto;
   margin-top: 5%;
}

#mymoonTable th {
   border-top: 1px solid #c9c0b1;
   border-bottom: 1px solid #c9c0b1;
   text-align: center;
}

#mymoonTable td {
   border-bottom: 1px solid #c9c0b1;
   text-align: center;
}

.avatar {
   width: 138px;
   height: 138px;
}

#submit {
   width: 127px;
   height: 48px;
   text-align: center;
   border: none;
   margin-top: 20px;
   cursor: pointer;
}

#submit:hover {
   color: #fff;
   background-color: #216282;
   opacity: 0.9;
}

.modal3 {
   z-index: 1;
   position: fixed;
   left: 0;
   top: 0;
   width: 100%;
   height: 100%;
   background-color: rgba(0, 0, 0, 0.5);
   opacity: 0;
   visibility: hidden;
   transform: scale(1.1);
   transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform
      0.25s;
}

.show-modal3 {
   opacity: 1;
   visibility: visible;
   transform: scale(1.0);
   transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}

.modal-content3 {
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
   background-color: white;
   padding: 1rem 1.5rem;
   width: 600px;
   height: 550px;
   border-radius: 0.5rem;
}

.close-button5 {
   float: right;
   width: 1.5rem;
   line-height: 1.5rem;
   text-align: center;
   cursor: pointer;
   border-radius: 0.25rem;
   background-color: lightgray;
}

.close-button5:hover {
   background-color: darkgray;
}

#check {
   margin: auto;
   text-align: center;
   width: 70%;
   margin-top: 30%;
}

/*위시리스트 스타일*/
	.wishdiv {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color:#000;
        margin: 0;
        padding: 0;
        width: 100%;
        height: 100%;
    }

 .swiper-container {
        width: 100%;
        height: auto;
        margin-left: auto;
        margin-right: auto;
    }
    .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;
        height: 200px;
        margin : 50px;
        
        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
    }
</style>
<body>
   <c:import url="../common/menubar.jsp" />
   <!-- Main container -->
   <div class="page-container">
      <!-- Navigation Bloc -->
      <div class="bloc l-bloc bgc-white" id="nav-bloc">
         <div class="container bloc-sm">
            <nav class="navbar nav-center row">
               <div class="navbar-header">
                  <!-- logo if you want <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo" /></a> -->
                  <button id="nav-toggle" type="button"
                     class="ui-navbar-toggle navbar-toggle" data-toggle="collapse"
                     data-target=".navbar-1">
                     <span class="sr-only">Toggle navigation</span><span
                        class="icon-bar"></span><span class="icon-bar"></span><span
                        class="icon-bar"></span>
                  </button>
               </div>
               <div class="collapse navbar-collapse navbar-1">
                  <ul class="site-navigation nav navbar-nav">
                     <li><a onclick="scrollToTarget('#portfolio')">찜 목록</a></li>
                     <li><a onclick="scrollToTarget('#moon')">1:1 문의내역</a></li>
                     <li><a onclick="scrollToTarget('#review')">작성한 리뷰</a></li>
                     <li><a onclick="scrollToTarget('#contact')">쿠폰함</a></li>
                  </ul>
               </div>
            </nav>
         </div>
      </div>
      <!-- Navigation Bloc END -->

      <!-- bloc-1 -->
      <div
         class="bloc bg-95cdfeef1 bgc-ferrari-red d-bloc tc-white b-parallax"
         id="bloc-1">
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

                     <img src="resources/user/img/default.jpg" class="avatar"
                        alt="User image">
                  </div>
                  <h1 class="mg-md text-center tc-black">
                     <c:out value="${ loginUser.user_name }" />
                     님 마이페이지
                  </h1>

                  <h2 class="text-center tc-white-smoke mg-md">
                     <c:out value="${ loginUser.user_id }" />
                  </h2>

                  <p class="text-center">
                     <c:out value="${ loginUser.enroll_date }" />
                  </p>
                  <div class="divider-h">
                     <span class="divider divider-half"></span>
                  </div>
                  <div class="text-center">
                     <a class="btn btn-lg wire-btn-white btn-wire btn-rd"
                        id="trigger3">내 정보</a>
                     <tr>
                        <td colspan="2" align="center"></td>
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
                  <h2 class="text-center mg-md">찜 목록</h2>

                  <div class="divider-h">
                     <span class="divider divider-half"></span>
                  </div>
                  <p class="text-center sub-heading">
                     <c:out value="${ loginUser.user_name } " />
                     님의 관심 강의 목록입니다.
                  </p>
               </div>
            </div>
            
	<div class="wishdiv">
      <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide">Slide 1</div>
            <div class="swiper-slide">Slide 2</div>
            <div class="swiper-slide">Slide 3</div>
            <div class="swiper-slide">Slide 4</div>
            <div class="swiper-slide">Slide 5</div>
            <div class="swiper-slide">Slide 6</div>
            <div class="swiper-slide">Slide 7</div>
            <div class="swiper-slide">Slide 8</div>
            <div class="swiper-slide">Slide 9</div>
            <div class="swiper-slide">Slide 10</div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
    </div>

    <!-- Swiper JS -->
    <script src="../dist/js/swiper.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        slidesPerView: 3,
        slidesPerColumn: 2,
        paginationClickable: true,
        spaceBetween: 30
    });
    </script>
    </div>
    </div>

    <script src="../build/js/swiper.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            spaceBetween: 50,
            slidesPerView: 2,
            centeredSlides: true,
            slideToClickedSlide: true,
            grabCursor: true,
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            scrollbar: '.swiper-scrollbar',
            pagination: '.swiper-pagination',
        });
    </script>
      <!-- 위시리스트 END -->

      <!-- 문의 -->
      <div class="bloc l-bloc bgc-white" id="moon">
         <div class="container bloc-lg">
            <div class="row">
               <div class="col-sm-12">
                  <h2 class="mg-md text-center">1:1 문의내역</h2>

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
                              </c:if> <c:if test="${ empty loginUser }">
                              ${ q.qTitle }
                              </c:if></td>
                           <td>${q.qWriter}</td>
                           <td>${q.qDate}</td>
                           <td><c:if test='${ q.aStatus == "N" }'>
                              X
                           </c:if> <c:if test='${ q.aStatus == "Y" }'>
                              O
                           </c:if></td>
                        </tr>
                     </c:forEach>
                     <!-- <a onclick="scrollToTarget('#moon')"></a> -->
                     <tr align="center" height="20">
                        <td colspan="6">
                           <!-- [이전] --> <c:if test="${ pi.currentPage <= 1 }">
                           [이전] &nbsp;
                              </c:if> <c:if test="${ pi.currentPage > 1 }">
                              <c:url var="before" value="mypage.do">
                                 <c:param name="page" value="${ pi.currentPage - 1 }" />
                              </c:url>
                              <a href="${ before }">[이전]</a>
                           </c:if> <!-- [페이지] --> <c:forEach var="p" begin="${ pi.startPage }"
                              end="${ pi.endPage }">
                              <c:if test="${ p eq pi.currentPage }">
                                 <font color="#c9c0b1" size="4"><b>[${ p }]</b></font>
                              </c:if>
                              <c:if test="${ p ne pi.currentPage }">
                                 <c:url var="pagination" value="mypage.do">
                                    <c:param name="page" value="${ p }" />
                                 </c:url>
                                 <a href="${ pagination }">[${ p }]</a>
                              </c:if>
                           </c:forEach> <!-- [다음] --> <c:if test="${ pi.currentPage >= pi.maxPage }">
                                 [다음]
                           </c:if> <c:if test="${ pi.currentPage < pi.maxPage }">
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
                  <h2 class="mg-md text-center">작성한 리뷰</h2>

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

      <!-- bloc-8 쿠폰함 -->
      <div class="bloc bg-95cdfeef1 bgc-ferrari-red d-bloc b-parallax"
         id="contact">
         <div class="container bloc-lg">
            <div class="row">
               <div class="col-sm-12 col-md-6 col-md-offset-3">
                  <form id="form-1" novalidate>
                     <h3 class="mg-md text-center">쿠폰 등록</h3>

                     <div class="form-group">
                        <label> Coupon-number </label> <input id="name"
                           class="form-control" required />
                     </div>
                     <div class="text-center">
                        <button class="bloc-button btn btn-lg btn-wire" type="submit">
                           등록하기</button>
                        <button class="bloc-button btn btn-lg btn-wire" type="button">
                           보유 쿠폰 보기</button>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
      <!-- bloc-8 END -->
   </div>



   <!-- 내 정보 클릭 시 띄워지는 모달 창 -->

   <div class="modal3">
      <div class="modal-content3">
         <span class="close-button5">&times;</span>
         <form action="pwdCheck.do" method="post">
            <div id="check">
               <label>Password</label> <input type="hidden" id="id" name="user_id"
                  value="${ loginUser.user_id }"> <input class="w3-input"
                  id="pwd" name="user_pwd" type="password">
               <button type="submit" id="checkBtn"
                  class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">비밀번호
                  확인</button>
            </div>
         </form>
      </div>
   </div>

   <script>
                     var modal = document.querySelector(".modal3");
                        var trigger = document.querySelector('#trigger3');
                        var closeButton = document.querySelector(".close-button5");

                
                        function toggleModal() {
                            modal.classList.toggle("show-modal3");
                        }

                        function windowOnClick(event) {
                            if (event.target === modal) {
                                toggleModal();
                            } else if (event.target === modal2) {
                                toggleModal2();
                            }
                        }
                
                        trigger.addEventListener("click", toggleModal);
                        closeButton.addEventListener("click", toggleModal);
                        window.addEventListener("click", windowOnClick);
                       </script>






   <!-- 비밀번호 확인 성공 시 넘어가는 div style="visibility:hidden"-->
   <div class="layer_popup" id="layer_pop"
      style="width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.5);">
      <div class="update"
         style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: white; padding: 1rem 1.5rem; width: 600px; height: 700px; border-radius: 0.5rem; z-index: 1;">
            <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
            <script> 
                        $(function() { 
                           $("#postcodify_search_button").postcodifyPopUp(); 
                        }); 
                     </script>
            <c:if test="${ !empty msg0 }">
               <script>
                    alert("회원 탈퇴 완료");
                  location.href='home.do';
               </script>
            </c:if>

            <c:if test="${ !empty msg2 }">
               <script>
                    alert("회원 수정 완료");
                    opener.parent.location.replace("mypage.do");
                    self.close();
               </script>
            </c:if>

         <div class="w3-content w3-container w3-margin-top">
            <div class="w3-container w3-card-4">
               <div class="w3-center w3-large w3-margin-top">
                  <h3>내 정보</h3>
                  <br>
               </div>
               <div>

                  <form id="myForm" action="mupdate.do" method="post">
                     <p>
                        EMAIL <input class="w3-input" type="text" id="user_id"
                           name="user_id" readonly value="${ loginUser.user_id }">
                     </p>
                     <!-- <p>
                           New Password 
                           <input class="w3-input" id="pw" name="pw" placeholder="변경할 패스워드를 입력하세요." type="password" required >
                        </p>
                        <p>
                           Confirm
                           <input class="w3-input" id="pw2" name="pw2" placeholder="변경할 패스워드 확인을 위해 동일하게 입력해주세요." type="password" required >
                        </p> -->
                     <p>
                        NAME <input class="w3-input" type="text" id="user_name"
                           name="user_name" value="${ loginUser.user_name }" required>
                     </p>
                     <p>
                        GENDER <br>
                        <c:if test="${ loginUser.gender eq 'M' }">
                           <td><input type="radio" name="gender" value="M" checked>남
                              <input type="radio" name="gender" value="F">여</td>
                        </c:if>
                        <c:if test="${ loginUser.gender eq 'F' }">
                           <td><input type="radio" name="gender" value="M">남
                              <input type="radio" name="gender" value="F" checked>여
                           </td>
                        </c:if>
                     </p>
                     <p>
                        AGE <input class="w3-input" type="number" min="20" max="100"
                           id="age" name="age" value="${ loginUser.age }" required>
                     </p>
                     <p>
                        PHONE <input class="w3-input" type="text" id="phone"
                           name="phone" value="${ loginUser.phone }" required>
                     </p>
                     <p>
                        ADDRESS <br>
                        <c:forTokens var="addr" items="${ loginUser.address }"
                           delims="," varStatus="status">
                           <c:if test="${ status.index eq 0 }">
                              <tr>
                                 <td>우편번호</td>
                                 <td><input type="text" name="post"
                                    class="postcodify_postcode5" value="${ addr }" size="6" />
                                    <button type="button" id="postcodify_search_button">검색</button>
                                 </td>
                              </tr>
                           </c:if>
                           <c:if test="${ status.index eq 1 }">
                              <tr>
                                 <br>
                                 <td>도로명 주소</td>
                                 <td><input type="text" name="address1"
                                    class="postcodify_address" value="${ addr }" /></td>
                              </tr>
                           </c:if>
                           <c:if test="${ status.index eq 2 }">
                              <tr>
                                 <br>
                                 <td>상세 주소</td>
                                 <td><input type="text" name="address2"
                                    class="postcodify_extra_info" value="${ addr }" /></td>
                              </tr>
                           </c:if>
                        </c:forTokens>
                     </p>

                     <p class="w3-center">
                        <button type="submit"
                           class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보
                           변경</button>
                     </p>
                     <div class="text-center">
                        <c:url var="mdelete" value="mdelete.do">
                           <c:param name="user_id" value="${ loginUser.user_id }" />
                        </c:url>
                        <button type="button"
                           class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round"
                           onclick="location.href='${ mdelete }'">탈퇴하기</button>
                        <td align="right" class="pop"><a href="mypage.do"><font color="black">닫기</font></a>
                        </td> <br>
                     </div>
                  </form>
               </div>
            </div>
         </div>

         <script>
            $('#layer_pop').hide();
         </script>
         
         <c:if test="${ !empty msg1 }">
            <script>
               $('#layer_pop').show(); //회원수정 창 열기
            </script>
         </c:if>
      </div>
   </div>
   <c:import url="../common/footbar.jsp" />
</body>
</html>