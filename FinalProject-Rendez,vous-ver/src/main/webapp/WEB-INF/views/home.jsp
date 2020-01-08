<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://kit.fontawesome.com/8af8965544.js" crossorigin="anonymous"></script>
    <script src="https://fonts.googleapis.com/css?family=Montserrat&display=swap"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<script language="Javascript" type="text/javascript">

function setCookie( name, value, expirehours ) { 
 var todayDate = new Date(); 
 todayDate.setHours( todayDate.getHours() + expirehours ); 
 document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";" 
} 

function closeWin() { 
 if(document.getElementById("pop_today").checked){
  setCookie( "ncookie", "done" , 24 ); 
 }
 document.getElementById('layer_pop').style.display = "none";
}

</script>

<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

li, a, button {
    font-family: "Montserrat", sans-serif;
    font-weight: 500;
    font-size: 16px;
    color: black;
    text-decoration: none;
}

.search-box {
    margin: 0;
    padding: 0;
    background: rgb(194, 153, 92);
    height: 60px;
    border-radius: 40px;
    padding: 10px;
}

.search-box:hover > .search-text {
    width:300px;
    padding: 0 6px;
    font-weight: bold;
}

.search-box:hover > .search-btn {
    background-color: white;
}

.search-btn {
    color: rgb(194, 153, 92);
    float: right;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background: black;
    display: flex;
    justify-content: center;
    align-items: center;
    transition: 0.4s;
}

.search-text {
    border: none;
    background: none;
    outline: none;
    float: left;
    padding: 0;
    color: rgb(80,80,80);
    font-size: 16px;
    transition: 0.4s;
    line-height: 40px;
    width: 0px;

}

header {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    padding: 0 10%;
}

.logo {
    width: 100px;
    height: 100px;
    cursor: pointer;
    margin-right: auto;
}

.nav_links {
    list-style: none;
}

.nav_links li {
    display: inline-block;
    padding: 0px 20px;
}

.nav_links li a {
    transition: all 0.3s ease 0s;
    color: black;
    font-weight: bold;
}

.nav_links li a:hover {
    color: #FFDEAD;
}

button {
    margin-left: 20px;
    padding: 9px 25px;
    background-color: rgb(194, 153, 92);
    border: none;
    border-radius: 50px;
    cursor: pointer;
    transition: all 0.3s ease 0s;
    color: black;
    font-weight: bold;
}

button:hover {
    background-color: rgb(245, 214, 167);
}

/****************************************/

/* reset */        
#wrap {width: 1920px; margin: 0px auto;}

/* banner */
#banner {position: relative; width: 1920px; margin: 0 auto; text-align: center;  height: 450px; }
#banner img {width: 100%; display: block;}
        
/* slider */
.slideList {position: relative; width: 5760px; height: 450px;}
.slideList .slideImg {float: left; width: 1920px; height: 450px;}

/****************************************************/


#wrap2{
    width: 900px;
    margin: 100px auto 0 auto;
}

#tabs{
  overflow: hidden;
  width: 700px; /* 01.탭부분 전체의 넓이 입니다. */
  margin: 0 auto;
  margin-bottom:40px;
  padding-left:38px; /* 02.탭 메뉴를 중앙정렬할때 왼쪽 패딩값으로 조절해 맞춥니다*/
  list-style: none;
}

#tabs li{
  float: left;
  margin: 0 10px 0 0; /* 03.탭메뉴 사이사이의 간격을 조정합니다 */
}


/*비활성화 탭(기본 탭모양) 설정*/
#tabs a{ 
  position: relative;
  width:180px; 
  height:50px; /* 04.탭메뉴 하나의 넓이와 높이 */
  background: #CCC;
  float: left;
  text-decoration: none;
  text-align:center;
  font-size:14pt; /* 05.탭메뉴 폰트사이즈 */
  line-height:50px; /* 06.텝메뉴 폰트를 세로중앙정렬 맞추기위해 -> 04.탭메뉴 높이와 같은 값을 입력해주세요 */
  color: #444;
}

#tabs a::after{
  z-index: 1;
  background: #fff; 
}

/*활성화탭(탭 클릭했을때 모양) 설정*/
#tabs #current a,
#tabs #current a::after{ 
  background: darkorange; /* 07.탭메뉴 색상 설정 */
  z-index: 3;
}

/* ------------------------------------------------- */

/*컨텐츠 부분*/
#content
{
	/*width:750px;
	height: 350px; /* 08.컨텐츠 넓이와 높이 */
	/*padding:20px; /* 09.컨텐츠 안쪽 여백 설정 */ 
	position: relative;
	z-index: 2;	
    border-radius: 5px 5px 5px 5px;
}

#content h2, #content h3, #content p
{
    margin: 0 0 15px 0;
}

/* ------------------------------------------------- */

#about
{
    color: #999;
}

#about a
{
    color: #eee;
}

#c1 {
    width: 400px;
    height: 460px;
    margin: 10px;
    float: left;
}

#c2 {
    width: 400px;
    height: 220px;
    margin: 10px;
}

#ic1 {
    color: gray;
}

/*-----------------------------------------------*/

.slidershow{
  width: 500px;
  height: 400px;
  overflow: hidden;
}
.middle{
  position: absolute;
  top: 190%;
  left: 50%;
  transform: translate(-50%,-50%);
}
.navigation{
  position: absolute;
  bottom: 20px;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
}
.bar{
  width: 50px;
  height: 10px;
  border: 2px solid #ccff00;
  margin: 6px;
  cursor: pointer;
  transition: 0.4s;
}
.bar:hover{
  background: #ccff00;
}

input[name="r"]{
    position: absolute;
    visibility: hidden;
}

.slides{
  width: 500%;
  height: 100%;
  display: flex;
}

.slide{
  width: 20%;
  transition: 0.6s;
}
.slide img{
  width: 100%;
  height: 100%;
}

#r1:checked ~ .s1{
  margin-left: 0;
}
#r2:checked ~ .s1{
  margin-left: -20%;
}
#r3:checked ~ .s1{
  margin-left: -40%;
}
#r4:checked ~ .s1{
  margin-left: -60%;
}
#r5:checked ~ .s1{
  margin-left: -80%;
}

</style>
<body>

<c:import url="common/menubar.jsp"/>

    <div id="wrap">
        <section id="banner">
            <div class="slideList">
                <div class="slideImg"><img src="resources/homeImg/slide1.PNG" alt="이미지 설명"></div>
                <div class="slideImg"><img src="resources/homeImg/slide2.PNG" alt="이미지 설명"></div>
                <div class="slideImg"><img src="resources/homeImg/slide3.PNG" alt="이미지 설명"></div>
            </div>
        </section>
        <!-- //banner -->
    </div>

    <!------------------------------------------------->
    
    <div id="wrap2">
    <ul id="tabs">
        <li><a href="#" title="tab1">추천 클래스</a></li>
        <li><a href="#" title="tab2">뷰티 클래스</a></li>
        <li><a href="#" title="tab3">라이프 스타일</a></li>   
    </ul>
    <br><br>

    <div id="content">

        <div id="tab1">
            <h2>추천 수업</h2>
            <div id="class" style="border:1px solid #ccff00;">
                <div id="c1"> 
                <img id="c1" src="resources/homeImg/slide1.PNG">
                <p>&nbsp;&nbsp;<i class="fas fa-map-marker-alt"></i> 
                    서울    &nbsp;<i id="ic1" class="fas fa-ellipsis-v"></i>
                    &nbsp;15000 <i id="ic1" class="fas fa-won-sign"></i></p>
                </div>
                <div>
                <img id="c2" src="resources/homeImg/slide1.PNG">
                <p>&nbsp;&nbsp;<i class="fas fa-map-marker-alt"></i> 
                    경기    &nbsp;<i id="ic1" class="fas fa-ellipsis-v"></i>
                    &nbsp;25000 <i id="ic1" class="fas fa-won-sign"></i></p>
                </div>
                <div>
                <img id="c2" src="resources/homeImg/slide1.PNG">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   &nbsp;&nbsp;<i class="fas fa-map-marker-alt"></i> 
                   경기    &nbsp;<i id="ic1" class="fas fa-ellipsis-v"></i>
                   &nbsp;35000 <i id="ic1" class="fas fa-won-sign"></i></p>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#">더보기</a> <i class="fas fa-angle-double-right"></i>
            </div>
        </div>
        
        <div id="tab2">
            <h2>추천 수업</h2>
            <div id="class" style="border:1px solid #ccff00;">
                    <div id="c1"> 
                    <img id="c1" src="resources/homeImg/slide1.PNG">
                    <p>&nbsp;&nbsp;<i class="fas fa-map-marker-alt"></i> 
                        서울    &nbsp;<i id="ic1" class="fas fa-ellipsis-v"></i>
                        &nbsp;15000 <i id="ic1" class="fas fa-won-sign"></i></p>
                    </div>
                    <div>
                    <img id="c2" src="resources/homeImg/slide1.PNG">
                    <p>&nbsp;&nbsp;<i class="fas fa-map-marker-alt"></i> 
                        경기    &nbsp;<i id="ic1" class="fas fa-ellipsis-v"></i>
                        &nbsp;25000 <i id="ic1" class="fas fa-won-sign"></i></p>
                    </div>
                    <div>
                    <img id="c2" src="resources/homeImg/slide1.PNG">
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;<i class="fas fa-map-marker-alt"></i> 
                       경기    &nbsp;<i id="ic1" class="fas fa-ellipsis-v"></i>
                       &nbsp;35000 <i id="ic1" class="fas fa-won-sign"></i></p>
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#">더보기</a> <i class="fas fa-angle-double-right"></i>
                </div>
        </div>
        
        <div id="tab3">
            <h2>추천 수업</h2>
            <div id="class" style="border:1px solid #ccff00;">
                    <div id="c1"> 
                    <img id="c1" src="resources/homeImg/slide1.PNG">
                    <p>&nbsp;&nbsp;<i class="fas fa-map-marker-alt"></i> 
                        서울    &nbsp;<i id="ic1" class="fas fa-ellipsis-v"></i>
                        &nbsp;15000 <i id="ic1" class="fas fa-won-sign"></i></p>
                    </div>
                    <div>
                    <img id="c2" src="resources/homeImg/slide1.PNG">
                    <p>&nbsp;&nbsp;<i class="fas fa-map-marker-alt"></i> 
                        경기    &nbsp;<i id="ic1" class="fas fa-ellipsis-v"></i>
                        &nbsp;25000 <i id="ic1" class="fas fa-won-sign"></i></p>
                    </div>
                    <div>
                    <img id="c2" src="resources/homeImg/slide1.PNG">
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;<i class="fas fa-map-marker-alt"></i> 
                       경기    &nbsp;<i id="ic1" class="fas fa-ellipsis-v"></i>
                       &nbsp;35000 <i id="ic1" class="fas fa-won-sign"></i></p>
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="#">더보기</a> <i class="fas fa-angle-double-right"></i>
                </div>
        </div>
    </div>
    </div>  
    
    <div class="slidershow middle">

            <div class="slides">
              <input type="radio" name="r" id="r1" checked>
              <input type="radio" name="r" id="r2">
              <input type="radio" name="r" id="r3">
              <input type="radio" name="r" id="r4">
              <input type="radio" name="r" id="r5">
              
              <div class="slide s1">
                <img src="resources/homeImg/slide1.PNG" alt="">
              </div>
              <div class="slide">
                <img src="resources/homeImg/slide1.PNG" alt="">
              </div>
              <div class="slide">
                <img src="resources/homeImg/slide1.PNG" alt="">
              </div>
              <div class="slide">
                <img src="resources/homeImg/slide1.PNG" alt="">
              </div>
              <div class="slide">
                <img src="resources/homeImg/slide1.PNG" alt="">
              </div>
            </div>
      
            <div class="navigation">
              <label for="r1" class="bar"></label>
              <label for="r2" class="bar"></label>
              <label for="r3" class="bar"></label>
              <label for="r4" class="bar"></label>
              <label for="r5" class="bar"></label>
            </div>
          </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>
        var slideCount = $(".slideImg").length;
        var currentIndex = 0;
        var slidePosition;
        setInterval(function(){
            if(currentIndex < slideCount - 1){
                currentIndex++;
            } else {
                currentIndex = 0;
            }
            slidePosition = currentIndex * (-1920)+"px";
            $(".slideList").animate({ left: slidePosition},400);
        },3000);
    </script>

    <!----------------------------------->
    <script src="http://code.jquery.com/jquery-1.6.3.min.js"></script>
    
<script>
$(document).ready(function() {
	$("#content #tab1").hide(); // Initially hide all content
    $("#content #tab2").hide();
    $("#content #tab3").hide();
	$("#tabs li:first").attr("id","current"); // Activate first tab
	$("#content div:first").fadeIn(); // Show first tab content
    
    $('#tabs a').click(function(e) {
        e.preventDefault();        
        $("#content #tab1").hide(); //Hide all content
        $("#content #tab2").hide();
        $("#content #tab3").hide();
        $("#tabs li").attr("id",""); //Reset id's
        $(this).parent().attr("id","current"); // Activate this
        $('#' + $(this).attr('title')).fadeIn(); // Show content for current tab
    });
})();
</script>

<!--팝업-->
    <div class="layer_popup" style="position:absolute; width:500px; left:50%; margin-left:-920px; top:120px; z-index:1; border:1px solid #333333;" id="layer_pop">
        <table width="500" border="0" cellpadding="0" cellspacing="0">
         <tr>
          <td><img src="resources/homeImg/pop.png" width="500" height="600" border="0" usemap="#m_pop" /></td>
         </tr>
         <tr>
          <td align="center" height="30" bgcolor="#333333">
            <table width="95%" border="0" cellpadding="0" cellspacing="0">
               <tr>
                <td align="left" class="pop"><input type="checkbox" name="pop_today" id="pop_today" /><font color="#FFFFFF">오늘 하루 이 창 열지 않음</font></td>
                <td align="right" class="pop"><a href="javascript:closeWin();"><font color="white">닫기</font></a></td>
               </tr>
            </table>
          </td>
         </tr>
        </table>
    </div>
    
<script language="Javascript" type="text/javascript">
     
     cookiedata = document.cookie; 

     // alert(cookiedata.indexOf("ncookie=done"));
     if (cookiedata.indexOf("ncookie=done") < 0){ 
      // alert("false");
      document.getElementById('layer_pop').style.display = "inline";
     } 
     else {
      // alert("true");
      document.getElementById('layer_pop').style.display = "none";
     }
     
</script>

<br><br><br><br><br>
<br><br><br><br><br>
<br><br><br><br><br>
<br><br><br><br><br>
<br><br><br><br><br>
<br><br><br><br><br>
<br><br><br><br><br>

<c:import url="common/footbar.jsp"/>

</body>
</html>