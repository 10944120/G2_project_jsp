<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員中心</title>
    <style>
         @import"../assets/css/member.css";
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

	<%
if(session.getAttribute("id") != null ){
    sql = "SELECT * FROM `member` WHERE `id`='" +session.getAttribute("id")+"';"; 
	ResultSet rs =con.createStatement().executeQuery(sql);
	String id="",gmail="", tel="", pwd="";
	//讀出id, pwd當成使用者要更改時的內定值
	while(rs.next()){
	    id=rs.getString("id");
		gmail=rs.getString("gmail");
		tel=rs.getString("tel");
		pwd=rs.getString("pwd");
	}
    con.close();//結束資料庫連結
%>
    <section>
        <h2 class="sale-glowIn">
            <span style="animation-delay: 0s">會</span>
            <span style="animation-delay: 0.3s">員</span>
            <span style="animation-delay: 0.6s">中</span>
            <span style="animation-delay: 0.9s">心</span>
        </h2>
			
       
            <div class="loginall">
                <div class="loginall-loginform">
                    <div class="loginall-signinform">
                        <div class="loginall-group">
						<form action="update.jsp" method="POST">
                                <label for="account" class="label"  >姓名</label>
                                <input id="account" type="text" class="input" name="id"  value="<%=id%>"/>
                        </div>
                        <div class="loginall-group">
                                <label for="account" class="label" >信箱</label>
                                <input id="account" type="email" class="input" name="gmail" value="<%=gmail%>" />
                        </div>
                        <div class="loginall-group">
                            <label for="account" class="label" >電話</label>
                            <input id="account" type="text" class="input" name="tel" value="<%=tel%>" />
                        </div>
						
						
                        <div class="loginall-group">
                                <label for="pass" class="label">更改密碼</label>
                                <input id="pass" type="password" class="input" data-type="password" name="pwd" value="<%=pwd%>"/>
                                <input type="checkbox" onclick="showpassword()" data-type="text"  ><font class="font">顯示密碼</font>
                        </div>
                        <div class="loginall-group">
                            <a href="#"><input type="submit" class="button" value="儲存" name="b1"></a> </form>
							<form action="logout.jsp" method="POST"><a href="#"><input type="submit" class="button" value="登出"></a> </form>
                        </div>
                    </div>
                 </div>
            </div>
			
<%
}
else{
	con.close();//結束資料庫連結
%>
<div style="margin: 100px 0 0 100px ;">
<h1><a href="login.jsp" style="color:rgb(133, 66, 19);">您尚未登入，請點這裡登入！ </a></h1>
</div>
<%
}
%>		
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