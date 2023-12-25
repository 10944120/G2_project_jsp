<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>後台系統</title>
    <style>
        @import"../assets/css/backstage.css";
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
        <div class="tit">
            <h1 class="sale-glowIn">
            <span style="animation-delay: 0s">後</span>
            <span style="animation-delay: 0.3s">台</span>
            <span style="animation-delay: 0.6s">系</span>
            <span style="animation-delay: 0.9s">統</span>
            </h1>
        </div>
        <div class="button">
		    <form  action="selectnewp.jsp" method="post">
            <input type="submit" value="新增商品"onclick="submit()" id="additem">
			</form>
			<form  action="changp.jsp" method="post">
            <input type="submit" type="submit" value="修改商品" onclick="submit()" id="reviseitem">
            </form>
			<form  action="selectp.jsp" method="post">
			<input type="submit" type="submit" value="刪除商品" onclick="submit()" id="deleteitem">
            </form>
			<form  action="#" method="post">
			<input type="submit" value="訂單管理" onclick="submit()" id="orderdata">
            </form>
			<form  action="select.jsp" method="post">
			<input type="submit" value="會員資料管理" onclick="submit()" id="memberdata">
			</form>
        </div>
    </section>
</body>
</html>