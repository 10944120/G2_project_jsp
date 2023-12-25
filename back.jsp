<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>註冊登入</title>
    <style>
         @import"../assets/css/login.css";
    </style>
</head>
<body>
    <nav>
        <a href="cart.jsp"><img src="../assets/images/cart.png" class="cart"></a>
        <a href="member.jsp"><img src="../assets/images/teamwork.png" class="teamwork"></a>
        <div>
            <img src="../assets/images/search.png" class="search">
            <input type="search" placeholder="請輸入關鍵字" style="height: 40px;" class="search-txt">
        </div>
        <a href="back.jsp" class="back">後台登入</a>
        <a href="login.jsp" class="member">登入註冊</a>
        <a href="aboutus.jsp" class="about">關於我們</a>
        <a href="allproduct.jsp" class="product">商品總覽</a>
        <a href="index.jsp">
        <div class="title">
            <span style="animation-delay: 0s;">整</span>
            <span style="animation-delay: 0.2s;">人</span>
            <span style="animation-delay: 0.4s;">專</span>
            <span style="animation-delay: 0.6s;">家</span>
        </div>
        </a>
    </nav>
    <section>

        
        <div class="loginall">
            <div class="loginall-login">
                <input id="tab1" type="radio" name="tab" class="signin" checked>
                <label for="tab1" class="tab">後台管理</label>
                <input id="tab2" type="radio" name="tab" class="signup">
                <label for="tab2" class="tab"></label>
                <div class="loginall-loginform">
                    <div class="loginall-signinform">

                    <div class="loginall-group">
						<form action="bcheck.jsp" method="POST">					
                            <label for="account" class="label" >帳號</label>
                            <input id="account" type="text" class="input" name="id" placeholder="請輸入帳號">
                        </div>
                        <div class="loginall-group">
						
                            <label for="pass" class="label" >密碼</label> 
                            <input id="pass" type="password" class="input" data-type="password" name="pwd" placeholder="請輸入密碼">
                            <input type="checkbox" onclick="showpassword()" data-type="text"><font class="font">顯示密碼</font>
                        
                        </div>
           
                        <div class="loginall-group">
                            <a href="member.jsp"><input type="submit" class="button" name="b1" value="登入"></a> 	
                        </form>							
                        </div>
						
                    </div>
                </div>
            </div> 
        </div>

    </section>

<script type="text/javascript">
    function showpassword(){
        var a = document.getElementById("pass");
            if (a.type == "password"){
                    a.type = "text";
                }
            else{
                    a.type = "password";
                }
            }
    function showsetpassword(){
            var a = document.getElementById("setpass");
            var b = document.getElementById("checkpass");
            if (a.type == "password"){
                a.type = "text";
                b.type = "text";
                }
            else{
                a.type = "password";
                b.type = "password";
                }
            }
</script>


</body>
</html>