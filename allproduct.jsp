<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商品總覽</title>
	
    <style>
     @import"../assets/css/allproduct.css";
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
    <div class="contain-sale">
        <h2 class="sale-glowIn">
            <span style="animation-delay: 0s">商</span>
            <span style="animation-delay: 0.3s">品</span>
            <span style="animation-delay: 0.6s">總</span>
            <span style="animation-delay: 0.9s">覽</span>
        </h2>
    <div class="container">
		<div class="row">

		
	<% 
		sql="select * from good";
		PreparedStatement pstmt = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
		ResultSet rs=pstmt.executeQuery();
                          
        rs.last();
        int totalNo=rs.getRow();
							
		sql="select * from good";
		rs=con.createStatement().executeQuery(sql);
						
		for (int i=0; i<totalNo; i++){
		rs.next();
							
		out.print("<div class='"+rs.getString(2)+"'>");
		out.print("<div class='bord'>");        //<a href='oneproduct.jsp?productid="+rs.getString(1)+"'>
		out.print("<div class='bord-col'><a href='"+rs.getString(3)+"'><img src='"+rs.getString(4)+"'></a></div>");
		out.print("</div>");								
		out.print("<div class='"+rs.getString(5)+"'>"+rs.getString(6));
		out.print("<span class='bord-txt-price'><br>"+rs.getString(7)+"</span>");
		out.print("</div>");
		out.print("</div>");
		
		}	
		%>

   <!-- 
            <div class="col-4">
                    <div class="bord">
                        <div class="bord-col"><a href="eyes.jsp"><img src="./assets/images/eyes.png" class="pic"></a></div>
                    </div>
                    <div class="bord-txt">割雙眼皮
                        <span class="bord-txt-price"><br>NT$60000</span>
                    </div>
            </div>
            <div class="col-4">
                    <div class="bord">
                        <div class="bord-col"><a href="breast.jsp"><img src="./assets/images/breast.png" class="pic"></a></div>
                    </div>
                    <div class="bord-txt">隆乳
                        <span class="bord-txt-price"><br>NT$400000</span>
                    </div>
            </div>
            <div class="col-4">
                    <div class="bord">
                        <div class="bord-col"><a href="pull.jsp"><img src="./assets/images/pull.png" class="pic"></a></div>
                    </div>
                    <div class="bord-txt">拉皮
                        <span class="bord-txt-price"><br>NT$150000</span>
                    </div>
            </div>
            <div class="col-4">
                    <div class="bord">
                        <div class="bord-col"><a href="inject.jsp"><img src="./assets/images/inject.png" class="pic"></a></div>
                    </div>
                    <div class="bord-txt">消脂針
                        <span class="bord-txt-price"><br>NT$10000</span>
                    </div>
            </div>
            <div class="col-4">
                    <div class="bord">
                        <div class="bord-col"><a href="losefat.jsp"><img src="./assets/images/losefat.png" class="pic"></a></div>
                    </div>
                    <div class="bord-txt">抽脂
                        <span class="bord-txt-price"><br>NT$160000</span>
                    </div>
            </div>
            <div class="col-4">
                    <div class="bord">
                        <div class="bord-col"><a href="nose.jsp"><img src="./assets/images/nose.png" class="pic"></a></div>
                    </div>
                    <div class="bord-txt">隆鼻
                        <span class="bord-txt-price"><br>NT$100000</span>
                    </div>
            </div>--->
        </div>
    </div>

</body>
</html>