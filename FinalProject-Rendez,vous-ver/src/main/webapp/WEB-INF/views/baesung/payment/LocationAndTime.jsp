<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
div, table, ul, li, ol, dl, dt, dd, h1, h2, h3, h4, h5, h6, p {
    font-family: "Noto Sans", "CJK KR", 본고딕 !important;
}
div, table, ul, li, ol, dl, dt, dd, h1, h2, h3, h4, h5, h6, p {
    margin: 0;
    padding: 0;
    font-size: 14px;
    font-weight: normal;
    list-style: none;
    font-family: "NotoSansCJKkr","나눔바른고딕","NanumBarunGothic","맑은 고딕","Malgun Gothic","Apple Gothic","돋움",Dotum,"Helvetica Neue",Helvetica,Arial,sans-serif !important;
}

div {
    display: block;
}


    .header_new .hcont {
    width: 1200px;
    height: 80px;
    margin: 0 auto;
}
.header_new .search .lcont {
    width: 420px;
    height: 40px;
    border: 3px solid #ff005a;
    border-radius: 40px;
    margin-top: 10px;
}
.header_new .search .lcont .inputlmg {
    width: 40px;
    height: 40px;
    float: left;
    margin-top: 6px;
    margin-left: 10px;
}
.header_new .search .lcont input[type=text] {
    width: 350px;
    padding-top: 3px;
    margin-top: 0px;
    height: 80%;
    border: none;
    font-size: 16px;
    color: #333333;
    font-weight: 500;
}
.header_new .rcont {
    width: 620px;
    box-sizing: border-box;
    float: right;
    position: relative;
}

.header_new .rcont li.vod {
    width: 118px;
}
.header_new .rcont .padding28 {
    padding-top: 28px;
}

.header_new .rcont .padding28 {
    padding-top: 28px;
}
.header_new .rcont .proimg {
    background: #000;
    width: 55px;
    height: 55px;
    border-radius: 200px;
    background-size: cover;
    background-position: center;
}
.header_new {
    border-bottom: 1px solid #c9c9c9;
}
.header_new {
    box-sizing: border-box;
    width: 100%;
    height: 80px;
}
.header_new .rcont .padding28 {
    padding-top: 28px;
}
.header_new .rcont li {
    font-weight: 600;
    float: left;
    font-size: 16px;
    color: #333333;
    width: 90px;
    height: 30px;
    text-align: center;
    padding-right: 10px;
    float: right;
    cursor: pointer;
}

.tutor_cont {
    width: 1100px;
    margin: 0 auto;
    padding-bottom: 100px;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.tutor_cont .title_box {
    overflow: hidden;
    margin-top: 30px;
    padding: 19px 0;
    border-bottom: 1px solid #c9c9c9;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.tutor_cont .title_box h3 {
    float: left;
    overflow: hidden;
    display: inline-block;
    font-size: 26px;
    color: #333;
}
.tutor_cont .title_box .steps {
    display: flex;
    float: right;
    font-size: 16px;
    color: #aaaaaa;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.tutor_cont .title_box .steps .on {
    color: #ff005a;
}
.tutor_cont .title_box .steps li {
    margin: 0 15px;
    font-size: 18px;
    font-weight: 500;
    cursor: pointer;
    letter-spacing: -0.5px;
}
.tutor_cont .title_box .steps b {
    font-size: 24px;
    font-weight: 600;
    margin: 0 3px;
}
.tutor_cont .title_box .steps img {
    width: 8px;
    margin-top: 6px;
    height: initial;
}
img {
    border: 0;
}
img {
    vertical-align: middle;
    border-style: none;
}
.tutor_cont .title_box .steps b {
    font-size: 24px;
    font-weight: 600;
    margin: 0 3px;
}
.tutor_cont .class_title {
    margin: 30px 0;
    color: #333;
    font-size: 20px;
    line-height: 1.1;
    letter-spacing: -0.5px;
    font-weight: 500;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
    
.tutor_cont .apply {
    overflow: hidden;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.tutor_cont .pf_box {
    width: 300px;
    float: left;
    border: 1px solid #ddd;
    padding: 31px;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.tutor_cont .pf_box .pf {
    width: 110px;
    height: 110px;
    border-radius: 50%;
    margin: 0 auto;
    background-size: cover;
    background-position: center;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.triangle-border.gray {
    background: #f2f2f2;
    border: none;
    text-align: left;
    padding: 20px;
}
.tutor_cont .gray {
    background-color: #f1f1f1;
}
.triangle-border {
    position: relative;
    font-weight: 500;
    padding: 15px;
    margin: 1em 0 3em;
    border: 1.2px solid #ff005a;
    color: #333;
    background: #fff;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    text-align: center;
    font-size: 14px;
    line-height: 1.43;
    letter-spacing: -0.4px;
}
.triangle-border span {
    color: #ff005a;
}
.tutor_cont .sh_box {
    width: 770px;
    float: right;
    border-top: 1px solid #d8d9db;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.tutor_cont .sh_box .head {
    font-size: 16px;
    color: #333;
    font-weight: 500;
    padding: 0;
    padding-top: 15px;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.tutor_cont .sh_box .head img {
    width: 18px;
    margin-right: 10px;
}
img {
    border: 0;
}
img {
    vertical-align: middle;
    border-style: none;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.class_price .regions .region {
    margin-top: 20px;
    overflow: hidden;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.class_price .regions .region .option:first-child {
    border-top: 1px solid #ddd;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.class_price .regions .region .option .top {
    color: #555555;
    font-size: 14px;
    padding: 13px 0;
    border-bottom: 1px solid #ddd;
    padding-left: 25px;
    overflow: hidden;
}
.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}
.class_price .regions .region .option .top label {
    width: 16px;
    height: 16px;
    border-radius: 50%;
    border: 1px solid #ddd;
    margin-right: 5px;
    background-size: cover;
    background-image: url(/tutor/Content/Images/check_disabled@2x.png);
    margin-left: -25px;
    cursor: pointer;
    float: left;
}
label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
}
.class_price .regions .region .option .top .text {
    width: 98%;
    float: left;
    margin-left: 10px;
    font-size: 15px;
}
.class_price .regions .region .option .top span {
    color: #ddd;
}
.class_price .regions .region .option .top font {
    color: #555;
}
.class_price .regions .region .option img.up {
    display: none;
}
.class_price .regions .region .option img {
    float: right;
    cursor: pointer;
    margin-right: 10px;
}
.class_price .regions .region .option .box {
    display: none;
    background: #f1f1f1;
    padding: 20px 15px;
    color: #888;
}
.tutor_cont .box {
    display: flex;
    padding: 30px 0;
    border-bottom: 1px solid #d8d9db;
}
.class_price .regions .region .option .box .info {
    margin: 10px 0;
}
.tutor_cont .next {
    background: #888;
    color: #fff;
    padding: 20px 30px;
    width: 230px;
    margin: 40px auto;
    font-size: 16px;
    border-radius: 6px;
    text-align: center;
}

.tutor_cont .next:hover {
    background: rgb(92,92,92);
   cursor: pointer;
}

.tutor_cont, .tutor_cont div {
    box-sizing: border-box;
}

.tutor_cont .next.on {
    background: #ff005a;
    /* margin: 0 auto; */
}

.tutor_cont .next.on:hover {
    background: rgb(211,51,107);
    
}

.class_price .regions .region .option.on .box {
    display: block;
    font-size: 15px;
}
.class_price .regions .region .option.select .top label {
    background:#ff005a;
}

.class_price .regions .region .option.on img.up {
    display: block;
}

.triangle-border.top:before {
    top: -20px;
    bottom: auto;
    left: 0;
    right: 0;
    margin: 0 auto;
    border-width: 0 20px 20px;
}
.triangle-border.gray:before {
    border-color: #f2f2f2 transparent;
}
.triangle-border.top:after {
    top: -13px;
    bottom: auto;
    left: 0;
    margin: 0 auto;
    right: 0;
    border-width: 0 13px 13px;
}
.triangle-border.gray:after {
    border-color: #f2f2f2 transparent;
}

.class_price .regions .region .option.on img.dwn {
    display: none;
}

#nextButton:hover{
    cursor: pointer;
}


    </style>


</head>
<body>
    <c:import url="../../common/menubar.jsp"/>

    <div class="tutor_cont">
        <div class="title_box">
            <h3>수업신청</h3>
            <div class="steps">
                <li class="on"><b>01</b>일정/장소</li>
                <img src="resources/baesung/images/icon_next.png">
                <li><b>02</b>신청서 작성</li>
                <img src="resources/baesung/images/icon_next.png">
                <li><b>03</b>결제</li>
            </div>
        </div>
        <form id="StartInfo" name="form" action="apply.do" method="POST">
            <input type="hidden" id="lNo" name="lNo" value="">
            <input type="hidden" id="lInning" name="lInning" value="">
        </form>
    
        <div class="class_title">
            ${tClass.lTitle }	</div>
        <div class="apply">
            <div class="pf_box">
                <div class="pf" style="background-image:url(resources/baesung/images/${tClass.uCName})"></div>
                <p class="triangle-border top gray" style="margin-top:50px">
                    수업에 오신걸 환영해요!<br>
                    <span>장소,수업일,시간</span>
                    을 선택해<br>주세요.</p>
            </div>
            <div class="sh_box class_price">
                <div class="head"><img style="margin-top:-7px" src="resources/baesung/images/icon_input_calendar@2x.png">원하시는 수업일정을 선택해주세요.</div>
    
                <!--원써니 수정 장소/시간 pc-->
                <div class="regions">
                    <div class="region on" id="region">
                    
                    <c:forEach items="${ltList }" var="lTime">
                          <div class="option">
                         <div class="top">
                         <label onclick="selectRegion('${lTime.lNo}','${lTime.lInning}')"></label>
                         <div class="text">${lTime.lDay} ${lTime.lTime }	<span>|</span> <font>${tClass.lRegionSub }</font>
                         <img src="resources/baesung/images/icon_up.png" class="up">
                         <img src="resources/baesung/images/icon_down.png" class="dwn">
                         </div>
                            </div>
                            <div class="box">
                                상세장소 :  ${tClass.lRegionDetail }
                                <div class="info">                               
                                 </div>
                            </div>
                           </div>
                           
                      </c:forEach>     
           		 </div>
                </div>
                <script>	
                    $(function(){
                        $('img','.option','.region').click(function(){
                            if($(this).parent().parent().parent().hasClass('on')){
                                console.log('클래스 이미 있다');
                                $(this).parent().parent().parent().removeClass('on');
                            }else{
                                $(this).parent().parent().parent().parent().find('.option').removeClass('on');
                                $(this).parent().parent().parent().addClass('on');
                            }
                        });
                        $('label','.option','.region').click(function(){
                            $(this).parent().parent().addClass('select').siblings().removeClass('select');
                        });
                    });
                    function more(event){
                        var elm = event;
    
                        if($('#region').hasClass('on')){
                            $('#region').removeClass('on');
                            $(elm).removeClass('on').find('span').html("시작일 더보기");
                        }
                        else{
                            $('#region').addClass('on');
                            $(elm).addClass('on').find('span').html("시작일 접기");
                        }
                    }
                </script>
                <!--div class="more" onclick="more(this)">
                    <img src="/tutor/Content/Images/icon_img_area.png">
                    <img style="margin-top:8px"src="/tutor/Content/Images/icon_del_bk.png">&nbsp;&nbsp;<span >시작일 더보기</span>
                </div-->
    
            </div>
        </div>
        
        <div id="nextButton" class="next button" onclick="setMode()">날짜를 선택해주세요</div>
        <script>
        function setMode()
        {
            if ($('#StartRegion').val()=='')
            {
                alert('수업일정을 선택해주세요.');
            }
            else{
                $('#StartInfo').submit();
            }		
        }
        
        function selectRegion(lNo,lInning)
        {
            $('#lNo').val(lNo);
            $('#lInning').val(lInning);
            $('#nextButton').addClass('on').html("신청서 작성하러 가기");
            //$(this).parent().parent().addClass('on');
            $(elem).parent().parent().parent().find('div').removeClass('on');
    
            $(elem).parent().parent().addClass('on');
    
            find('span')
            
        }
    </script>
    </div>


</body>
</html>