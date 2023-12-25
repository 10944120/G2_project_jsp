<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>購物車</title>
    <style>
         @import"../assets/css/cart.css";
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
        <form action="#" method="post">
		<%sql="SELECT * FROM `cart` WHERE `id`='" +session.getAttribute("id")+"'"; 
           ResultSet rs=con.createStatement().executeQuery(sql);
		   
		   rs=con.createStatement().executeQuery(sql);%>
            <table class="table">
                <tr>
                    <td class="table-txt">商品資料</td>
                    <td class="table-name">商品名稱</td>
                    <td class="table-amount" colspan="3">人數</td>
                    <td class="table-price">單價</td>
                    <td class="table-total">小計</td>
                </tr>
				

		   <!-- 商品一大包開始 -->
				
				<%
				int a=0;
				while(rs.next()) 
                {%>
            <tr>
                    <td><img src="<%=rs.getString(4)%>" class="table-img"></td>
                    <td><%=rs.getString(6)%></td>
                    <td colspan="3">
                        <div class="button">
                            <input type="button" class="num-button" value="-" id="btnOne" onclick="minusNUM(0)">
                            <input type="text" id="num" class="number" value="<%=rs.getString(10)%>">
                            <input type="button" class="num-button" value="+" id="btnTwo" onclick="addNUM(0)">
                        </div>
                    </td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=Integer.parseInt(rs.getString(7))*Integer.parseInt(rs.getString(10))%></td>
					<input type="hidden" name="id" value="<%=(rs.getString(1))%>">
                    <td colspan="7">
                        <input type="submit" value="刪除" onclick="submit()" class="item-cart-btn">
                    </td>
                </tr>
                <!--<tr>
                    <td><img src="../assets/images/pull.png"  class="table-img"></td>
                    <td>拉皮</td>
                    <div class="button">
                        <td colspan="3">
                            <input type="button" class="num-button" value="-" id="btnOne" onclick="minusNUM(1)">
                            <input type="text" id="num" class="number" value="1">
                            <input type="button" class="num-button" value="+" id="btnTwo" onclick="addNUM(1)">
                        </td>
                    </div>
                    <td>150000</td>
                    <td>300000</td>
                    <td colspan="7">
                        <input type="submit" value="刪除" onclick="submit()" class="item-cart-btn">
                    </td>
                </tr>-->
			    <%}%>
                <!-- 商品一大包結束 -->
            </table>
            <table class="table">
                <tr>
                    <td colspan="8">
                        <span>總金額&emsp;&emsp;</span>
                        <span><%=a%></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="8"></td>
                </tr>
                <tr>
                    <td colspan="8">日期：<input type="date" class="item-cart-img"></td>
                </tr>
                <tr>
                    <td colspan="8">時間：<input type="time" class="item-cart-img"></td>
                </tr>
                <tr>
                    <td colspan="8"></td>
                </tr>
                <tr>
                    <td colspan="8">
                        <input type="submit" value="送出訂單" onclick="submit()" class="item-cart-img">
                    </td>
                </tr>
            </table>
        </form>
    </section>
    <script>
        function minusNUM(num){
            let input = Number(document.getElementsByClassName('number')[num].value);
            if(input != 1){
                document.getElementsByClassName('number')[num].value = input-1;
            }
        }
        function addNUM(num){
            let input = Number(document.getElementsByClassName('number')[num].value);
            if(input != 0){
                document.getElementsByClassName('number')[num].value = input+1;
            }
        }
    </script>

</body>
</html>