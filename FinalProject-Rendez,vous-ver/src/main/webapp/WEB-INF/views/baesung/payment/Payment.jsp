<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
  <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

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
.tutor_cont .pf_box .pf {
    width: 110px;
    height: 110px;
    border-radius: 50%;
    margin: 0 auto;
    background-size: cover;
    background-position: center;
}


.triangle-border.gray {
    background: #f2f2f2;
    border: none;
    text-align: left;
    padding: 20px;
}

.tutor_cont .sh_box {
    width: 770px;
    float: right;
    border-top: 1px solid #d8d9db;
}

.appcont .level3 {
    height: 40px;
}
.appcont .level3 .left {
    float: left;
    width: 110px;
    font-weight: 500;
    font-size: 16px;
    margin-top: 20px;
    line-height: 20px;
    padding-left: 10px;
}
.appcont .level3 .right2 {
    float: left;
    width: 500px;
    font-weight: 600;
    font-size: 20px;
    margin-top: 12px;
    padding-left: 40px;
    color: #ff005b;
}

a {
    text-decoration: none;
    cursor: pointer;
}
.appcont .level2 {
    margin-top: 20px;
    height: 100px;
    background: #e3e3e3;
}
.appcont .top {
    border-top: 1px solid #dadada;
}

.appcont .level2 .center2 {
    float: left;
    width: 500px;
    font-weight: 400;
    font-size: 16px;
    margin-top: 20px;
    padding-left: 10px;
}
.appcont .level2 .center3 {
    float: left;
    width: 100%;
    font-size: 16px;
    margin-top: 20px;
    padding-left: 10px;
}
.appcont .all {
    padding: 10px;
}
.appcont .all input {
    width: 20px;
    height: auto;
}
.appcont input {
    width: 150px;
    height: auto;
    padding: 15px;
    background: #fff;
    border: 1px solid #ebebeb;
    font-size: 16px;
    color: #333;
}
input[type=checkbox], input[type=radio] {
    margin: 4px 0 0;
    margin-top: 1px\9;
    line-height: normal;
}
input[type=checkbox], input[type=radio] {
    box-sizing: border-box;
    padding: 0;
}
.appcont .bottom {
    border-bottom: 1px solid #dadada;
}
.appcont .level .left {
    float: left;
    width: 100px;
    font-weight: 500;
    font-size: 16px;
    margin-top: 20px;
    line-height: 20px;
    padding-left: 10px;
}
.appcont .level .right {
    float: left;
    width: 500px;
    font-weight: 400;
    font-size: 16px;
    margin-top: 20px;
    padding-left: 20px;
}
.appcont .level .levelbox {
    padding: 5px 0 5px 0;
    float: left;
    width: 31%;
    border: 1px solid #d8d8d8;
    text-align: center;
    margin-right: 5px;
    background: #fff;
    color: #999;
    line-height: 25px;
}
.appcont .level .on {
    background: #ff005a;
    border: 1px solid #ff005a;
    color: #fff;
}
.appcont .level .levelbox {
    padding: 5px 0 5px 0;
    float: left;
    width: 31%;
    border: 1px solid #d8d8d8;
    text-align: center;
    margin-right: 5px;
    background: #fff;
    color: #999;
    line-height: 25px;
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

div, table, ul, li, ol, dl, dt, dd, h1, h2, h3, h4, h5, h6, p {
    font-family: 'Noto Sans','CJK KR','ë³¸ê³ ë”•' !important;
}
.appcont .level .on {
    background: #ff005a;
    border: 1px solid #ff005a;
    color: #fff;
}
#testNext:hover{
    background:rgb(92, 92, 92);
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
                <li><b>01</b>장소/일시</li>
                <img src="resources/baesung/images/icon_next.png">
                <li><b>02</b>신청서 작성</li>
                <img src="resources/baesung/images/icon_next.png">
                <li class="on"><b>03</b>결제</li>
            </div>
        </div>
    
        <div class="class_title">
             ${tClass.lTitle }	</div>
        <div class="apply">
            <div class="pf_box">
                <div class="pf" style="background-image:url(resources/baesung/images/${tClass.uCName})"></div>
                <p class="triangle-border top gray" style="margin-top:50px; margin-bottom: 50px;">
                    결제 후 신청이 완료되니 서둘러주세요! 수업이 조기 마감될 수 있습니다.	
            </p></div>
            <div class="sh_box class_price">
                <div class="appcont">
                    
                    <div id="alltime">
                        <div class="level3">
                            <div class="left">					
                            전체 수업료						
                            </div>
                            <div class="right2">
                                <font style="font-size:14px;font-weight:500;">${tClass.price }원</font>
                            </div>
                        </div>
                        <div class="level3">
                            <div class="left">					
                            쿠폰					
                            </div>
                            <div class="right2">					
                                <a onclick="couponPop();" style="color: #ff005b;"><span id="couponArea2" style="font-size:13px;font-weight:500;">쿠폰없음 </span>&gt;</a>
                            </div>
                        </div>
                        <div class="level3">
                            <div class="left">					
                            결제 금액
                            </div>
                            <div class="right2">
                                <span id="payArea2">${tClass.price}</span>원 <font color="#666" style="font-size:12px;" id="priceInfo"></font>
                            </div>
                        </div>
                        <div class="level2 top">					
                            <div class="center2">수업료는 탈잉에서 보관하다가 첫 수업 후 튜터님께 전달 해 드려요.</div>									
                        </div>		
                    </div>
    
                    <div class="all">
                        <div>						
                            <input type="hidden" onclick="layer();" id="allCheck" checked="">
                        </div>
                    </div>
                    <br>
                    
                    <div class="level bottom" style="height:88px;">
                        <div class="left">결제수단</div>
                        <div class="right" id="pay">
                                <div class="levelbox" id="button1" style="cursor:pointer" onclick="payCheck(1);">신용카드/간편결제</div>
                                <div class="levelbox" style="cursor:pointer" id="button2" onclick="payCheck(2);">휴대폰 결제</div>	 			
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <input type="hidden" id="paynum" name="paynum" value="">
        <input type="hidden" id="aid" name="aid" value="155272">
        <div class="next button" onclick="pay()" id="testNext">다음</div>
    </div>
	 <input type="hidden" value="${tClass.price}" id="payFinalPrice">

    <script>
    function couponUse(val1, name, price)//code, name, discountRate
	{
		Price = '';
		val = 0;
		val = val1;
		if(val==0) // 쿠폰 해제 
		{
			
			$('#couponArea2').text('쿠폰없음');
			//$('#priceInfo').text('할인미적용');
			
			Price = '${tClass.price}';
			strtotalPrice = formatMoney(Price.toString());
			
			$('#payArea2').text(strtotalPrice);
			$('#payFinalPrice').val(Price);
		
			//strtotalPrice = formatMoney(totalPrice.toString());
			//stronePrice = formatMoney(onePrice.toString());


		}
		else
		{					
			
			//strPrice = formatMoney(price.toString());
			
			Price = ${tClass.price} * ((100 -price)/100);
			strtotalPrice = formatMoney(Price.toString());
			
			$('#payArea2').text(strtotalPrice);
			$('#couponArea2').text(name+' '+price+'%할인');
			$('#payFinalPrice').val(Price);
			//$('#priceInfo').text('쿠폰할인적용');
	
			
			//stronePrice = formatMoney(onePrice.toString());

		
		}
	}
    
        function payCheck(val)
        {			
            var area = $('#pay');
            // payMethod = "card"
            area.find('div').removeClass('on');
            
            $('#button'+val).addClass('on');
            $('#paynum').val(val);
            
            //location.href = 'payComplete.do?payMethod='+payMethod;
            //location.href = 'payComplete.do?payMethod='+payMethod+'&couponNo='+val;
        }
    
        function pay(){
        	
        	 paynum = $('#paynum').val();
        		payMethod = ""
        	 
        	 if(paynum =='')
             {
                 alert('결제 수단을 선택해주세요.');
                 return;
             }else{
            	 
            	 if(paynum == 1){
            		 payMethod = 'card';
            	 }else if(paynum ==2){
            		 payMethod = 'phone';
            	 }
            	  
             }
        	
        	var IMP = window.IMP; // 생략가능
        	IMP.init('imp68401756'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        	
        	IMP.request_pay({
        	    pg : 'inicis', // version 1.1.0부터 지원.
        	    pay_method : payMethod,
        	    merchant_uid : 'merchant_' + new Date().getTime(),
        	    name : '${tClass.lTitle}',
        	    amount : Price,
        	    buyer_email : 'whqotjd@naver.com',
        	    buyer_name : '${loginUser.user_name}',
        	    buyer_tel : '${loginUser.phone}',
        	    buyer_addr : '${loginUser.address}',
        	    buyer_postcode : '123-456',
        	    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
        	}, function(rsp) {
        	    if ( rsp.success ) {
        	        var msg = '결제가 완료되었습니다.';
        	        msg += '고유ID : ' + rsp.imp_uid;
        	        msg += '상점 거래ID : ' + rsp.merchant_uid;
        	        msg += '결제 금액 : ' + rsp.paid_amount;
        	        msg += '카드 승인번호 : ' + rsp.apply_num;
        	        
        	        alert(val);
        	        location.href = 'payComplete.do?payMethod='+payMethod+'&couponNo='+val;
        	    } else {
        	        var msg = '결제에 실패하였습니다.';
        	        msg += '에러내용 : ' + rsp.error_msg;
        	    }
        	    alert(msg);
        	});
        	
        }
        

     /* function pay(val)
        {
            paynum = $('#paynum').val();
            aid = $('#aid').val();
            couponId = $('#couponId').val();
            Amount = $('#Amount').val();	
    
            if(Amount==0)
            {
                Full = 1;
                order = "Danal_"+"0"+"_"+aid+"_"+Full+"_"+"0"+"_0_"+couponId;		
                location.href="/Talent/Danal/Success2t.php?ORDERID="+order;
                return;
            }
    
            if($('#allCheck').is(':checked')==true)
            {
                Full = 1;
                if($('#payPassTotal').val()==1)
                {
                    order = "Danal_"+"0"+"_"+aid+"_"+Full+"_"+"0"+"_0_"+couponId;		
                    location.href="/Talent/Danal/Success2t.php?ORDERID="+order;
                    return;
                }
            }
            else
            {		
                Full = 0;
                if($('#payPassOne').val()==1)
                {
                    order = "Danal_"+"0"+"_"+aid+"_"+Full+"_"+"0"+"_0_"+couponId;		
                    location.href="/Talent/Danal/Success2t.php?ORDERID="+order;
                    return;
                }
            }
        
            if(paynum =='')
            {
                alert('결제 수단을 선택해주세요.');
                return;
            }
            
            //신용카드 결제
            if(paynum == 1)
            {
                popupWindow = window.open('/Talent/Danal/Order2t.php?Application_Id='+aid+'&couponId='+couponId+'&Full='+Full, '_blank', 'height=460,width=680,scrollbars=no,status=no');
            }
            else //가상계좌 무통장
            {
                popupWindow = window.open('/Talent/DanalBank/Order.php?Application_Id='+aid+'&couponId='+couponId+'&Full='+Full, '_blank', 'height=670,width=720,scrollbars=no,status=no');
            }
        }	 */
    </script>
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
           "userId": "whqotjd@naver.com", //fill with user id
           "profile": {
             "name": "조배성", //fill with user name
             "mobileNumber": "01091414811", //fill with user phone number
             "CUSTOM_VALUE_1": "VALUE_1", //any other custom meta data
             "CUSTOM_VALUE_2": "VALUE_2"
           }
     });
      ChannelIO('onHide', function() {
        $(window).scrollTop(scrollTop);
    });
    </script>
<script>
	function layer()
	{
		if($('#allCheck').is(':checked')==true)
		{
			$('#onetime').hide();
			$('#alltime').show();
		}
		else
		{
			$('#onetime').show();
			$('#alltime').hide();		
		}
	}

	function couponPop()
	{
		popupWindow = window.open('coupon.do', '_blank', 'height=800,width=550,scrollbars=no,status=no');
	}

	function cend()
	{
		aid = $('#aid').val();
		location.href="/Talent/Cend/"+aid;
	}

	function formatMoney(val) {
		if (val.length < 4)
			return val;
		return formatMoney(val.substring(0, val.length - 3)) + ',' + val.substring(val.length - 3, val.length);
	}

	
</script>

</body>
</html>