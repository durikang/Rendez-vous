<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.ripples/0.5.3/jquery.ripples.min.js"></script>
    <script src="https://kit.fontawesome.com/8af8965544.js" crossorigin="anonymous"></script>
</head>
<style>
    .footer-main-div {
        width: 100%;
        height: auto;
        margin: auto;
        background: #272727;
        padding: 20px 0px;
    }
    .footer-social-icons {
        width: 100%;
        height: auto;
        margin: auto;
    }
    .footer-social-icons ul {
        margin: 0px;
        padding: 0px;
        text-align: center;
    }
    .footer-social-icons ul li {
        display: inline-block;
        width: 50px;
        height: 50px;
        margin: 0px 10px;
        border-radius: 100%;
        background: #c9c0b1;
    }
    .footer-social-icons ul li a {
        color: #272727;
        font-size: 25px;
        display: block;
        text-decoration:none;
    }
    .footer-social-icons ul li a i {
        line-height: 50px;
    }
    
    .footer-social-icons ul li:hover a{
        color: white;
    }
    .footer-menu-one {
        width: 100%;
        height: auto;
        margin: auto;
        margin-top: 25px;
    }
    .footer-menu-one ul {
        margin: 0px;
        padding: 0px;
        text-align: center;
    }
    .footer-menu-one ul li {
        display: inline-block;
        margin: 0px 20px;
        color:#fff;
    }
    .footer-menu-one ul li a {
        font-family: arial;
        font-size: 16px;
        font-weight: 600;
        color: #fff;
        letter-spacing: 1px;
        text-transform: uppercase;
        text-decoration:none;
    }

    .footer-menu-one ul li a:hover {
        color: #c9c0b1;
    }

    .footer-menu-two {
        width: 100%;
        height: auto;
        margin: auto;
        margin-top: 15px;
    }
    .footer-menu-two ul {
        margin: 0px;
        padding: 0px;
        text-align: center;
    }
    .footer-menu-two ul li {
        display: inline-block;
        margin: 0px 20px;
        color:#fff;
    }
    .footer-menu-two ul li a {
        font-family: arial;
        font-size: 16px;
        font-weight: 600;
        color: #fff;
        letter-spacing: 1px;
        text-transform: uppercase;
        text-decoration:none;
    }

    .footer-menu-two ul li a:hover {
        color: #c9c0b1;
    }

    .footer-bottom {
        width: 100%;
        height: auto;
        margin: auto;
        background: #272727;
        padding: 5px;
    }
    .footer-bottom p {
        font-family: arial;
        font-size: 14px;
        text-align: center;
        color: #fff;
        font-weight: 600;
        letter-spacing: 1px;
    }
</style>
<body>
    <div class="footer-main-div">
        <div class="footer-social-icons">
            <ul>
                <li><a href="#" target="blank"><i class="fab fa-facebook"></i></a></li>
                <li><a href="#" target="blank"><i class="fab fa-twitter"></i></a></li>
                <li><a href="#" target="blank"><i class="fab fa-google"></i></a></li>
                <li><a href="#" target="blank"><i class="fab fa-youtube"></i></a></li>
            </ul>
        </div>
        <div class="footer-menu-one">
            <ul>
                <li><a href="#">Home</a></li>
                <li>|</li>
                <li><a href="#">About us</a></li>
                <li>|</li>
                <li><a href="support_main.do">Services</a></li>
                <li>|</li>
                <li><a href="#">Products</a></li>
                <li>|</li>
                <li><a href="#">Contact us</a></li>
            </ul>
        </div>

        <div class="footer-menu-two">
            <ul>
                <li><a href="#">Blog</a></li>
                <li>|</li>
                <li><a href="#">News</a></li>
                <li>|</li>
                <li><a href="#">Gallery</a></li>
                <li>|</li>
                <li><a href="#">Media</a></li>
            </ul>
        </div>
    </div>
    <div class="footer-bottom">
        <p>Copyright(C) 2019.Rendez,vous.All rights reserved. </p>
    </div>
</body>
</html> 