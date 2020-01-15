<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1 align="center">실행 완료</h1>
    <table>
        <tr>
            <th scope="col">우편번호</th>
            <td>
                <input type="text" name="post" class="postcodify_postcode5" value="" size="6"/>
                <button type="button" id="postcodify_search_button">검색</button>
            </td>
        </tr>
        <tr>
            <th scope="col">도로명 주소</th>
            <td>
                <input type="text" name="address1" class="postcodify_address" value="" />
            </td>
        </tr>
        <tr>
            <th scope="col">상세 주소</th>
            <td>
                <input type="text" name="address2" class="postcodify_extra_info" value="" />
            </td>
        </tr>

    </table>
	<!-- 2. jQuery와 Postcodify를 로딩한다 -->
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<!-- 3. "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> 
		$(function() { 
            $(".postcodify_search_button").click(function(){
                alert("실행 확인");
			    $("#postcodify_search_button").postcodifyPopUp(); 
            });
		}); 
	</script>

</body>
</html>