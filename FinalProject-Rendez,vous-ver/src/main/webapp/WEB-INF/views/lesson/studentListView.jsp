<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강생 목록</title>
	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="${contextPath }/resources/h1/Images/logo.ico">
    <title>Cubic Admin Template</title>
    <!-- ===== Bootstrap CSS ===== -->
    <link href="${contextPath }/resources/h2/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- ===== Plugin CSS ===== -->
    <!-- ===== Animation CSS ===== -->
    <link href="${contextPath }/resources/h2/css/animate.css" rel="stylesheet">
    <!-- ===== Custom CSS ===== -->
    <link href="${contextPath }/resources/h2/css/style.css" rel="stylesheet">
    <!-- ===== Color CSS ===== -->
    <link href="${contextPath }/resources/h2/css/colors/default.css" id="theme" rel="stylesheet">
    




</head>
<body class="mini-sidebar">

    <div id="wrapper">


        <div class="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="white-box p-0">
                            <!-- .left-right-aside-column-->
                            <div class="page-aside">
                            	<div id="sdsd" class="printableArea">
                                <div class="right-aside">
                                    <div class="right-page-header">
                                        <div class="pull-right">
                                        </div>
                                        <h3 class="box-title">${lTitle } - ${lInning}회차 수강생 목록 </h3> </div>
                                    <div class="clearfix"></div>
                                    <div class="scrollable">
                                        <div class="table-responsive">
                                            <table id="demo-foo-addrow" class="table m-t-30 table-hover contact-list" data-page-size="10">
                                                <thead>
                                                    <tr>
                                                        <th>사진</th>
                                                        <th>이름</th>
                                                        <th>이메일</th>
                                                        <th>연락처</th>
                                                        <th>나이</th>
                                                        <th>성별</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
<!--                                                <tr>
                                                        <td>1</td>
                                                        <td>
                                                        <a href="contact-detail.html"><img src="../plugins/images/users/1.jpg" alt="user" class="img-circle" /> Genelia Deshmukh</a>
                                                        </td>
                                                        <td>genelia@gmail.com</td>
                                                        <td>+123 456 789</td>
                                                        <td><span class="label label-danger">Designer</span> </td>
                                                        <td>23</td>
                                                    </tr> -->
                                                    <c:forEach var="s" items="${students}">
                                                    <tr>
                                                        <td>
                                                        <img src="${contextPath }/resources/user/img/${s.uCName}" class="img-circle" style="width:50px ;height:50px"/>
                                                        </td>
                                                        <td>${s.user_name }</td>
                                                        <td>${s.user_id }</td>
                                                        <td>${s.phone }</td>
                                                        <td>${s.age }</td>
                                                        <td>${s.gender }</td>
                                                    </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                            <br>
                                            <hr>
                                        </div>
                                    </div>
                                </div>
                                <!-- .left-aside-column-->
                                </div>
                                <div id="btnArea" style="margin-bottom: 50px; left:1000px">
                                <button id="print" class="btn btn-default btn-outline" type="button" style="l"> <span><i class="fa fa-print"></i> Print</span> </button>
                                </div>
                            </div>
                            <!-- /.left-right-aside-column-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
            <footer class="footer t-a-c">
                © 2020 RENDEZ
            </footer>
        </div>
        
        

        
        
        
        
        
        
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="${contextPath }/resources/h2/plugins/components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="${contextPath }/resources/h2/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="${contextPath }/resources/h2/js/sidebarmenu.js"></script>
    <script src="${contextPath }/resources/h2/js/jquery.PrintArea.js" type="text/JavaScript"></script>
    <script>
    $(function() {
        $("#print").on("click", function() {
            var mode = 'iframe'; //popup
            var close = mode == "popup";
            var options = {
                mode: mode,
                popClose: close
            };
            $("div.printableArea").printArea(options);
        });
    });
    </script>

</body>
</html>