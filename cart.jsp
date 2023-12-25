<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> <%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cart</title>
    <link rel="stylesheet" type="text/css" href="assets/cc.css">
    <link rel="stylesheet" type="text/css" href="assets/cc_cart.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
</head>

<body>
	<%if(session.getAttribute("mail") != null)
  {%>
    <div class="meun">
        <img class="hehe" src="images/hehe.png">
        <div class="right">
            <div class="top">
				<form action="search.jsp" method="POST" class="form">
                <input class="search-box" name="search" type="text">
                <input type="submit" value="搜尋" class="search-btn">
				</form>
				<div class="enter"><a href="logout.jsp">
					<h2 class="enter01">登出</h2>
				</a></div>
                <a href="cart.jsp"><img class="cart" src="images/shoppingcart.png"></a>
            </div>
            <ul class="navigation">
                <li><a href="index.jsp">首頁</a>
                <li><a href="activity.jsp">活動</a>
                    <ul>
                        <li><a href="activity.jsp">聖誕節歡樂送</a></li>
                        <li><a href="activity.jsp#2">免運倒數</a></li>
                        <li><a href="activity.jsp#3">支持環保</a></li>
                        <li><a href="activity.jsp#4">手作教室</a></li>
                    </ul>
                </li>
                <li><a href="goods.jsp">商品</a>
                    <ul>
                        <li><a href="goods.jsp">服飾</a></li>
                        <li><a href="goods.jsp#2">飾品</a></li>
                    </ul>
                </li>
                <li><a href="checkmemin.jsp">會員專區</a></li>
                <li><a href="#">關於我們</a>
                    <ul>
                        <li><a href="team.jsp">組員介紹</a></li>
                        <li><a href="mailto:pauline687@gmail.com">聯絡我們</a></li>
                    </ul>
                </li>
                <li><a href="help.jsp">幫助</a></li>
            </ul>
        </div>
    </div>
	<%}
	else
	{%>
	<div class="meun">
        <img class="hehe" src="images/hehe.png">
        <div class="right">
            <div class="top">
                <form action="search.jsp" method="POST" class="form">
                <input class="search-box" name="search" type="text">
                <input type="submit" value="搜尋" class="search-btn">
				</form>
				<div class="enter"><a href="enter.jsp">
					<h2 class="enter01">登入/註冊</h2>
				</a></div>
            </div>
            <ul class="navigation">
                <li><a href="index.jsp">首頁</a>
                <li><a href="activity.jsp">活動</a>
                    <ul>
                        <li><a href="activity.jsp">聖誕節歡樂送</a></li>
                        <li><a href="activity.jsp#2">免運倒數</a></li>
                        <li><a href="activity.jsp#3">支持環保</a></li>
                        <li><a href="activity.jsp#4">手作教室</a></li>
                    </ul>
                </li>
                <li><a href="goods.jsp">商品</a>
                    <ul>
                        <li><a href="goods.jsp">服飾</a></li>
                        <li><a href="goods.jsp#2">飾品</a></li>
                    </ul>
                </li>
                <li><a href="checkmemin.jsp">會員專區</a></li>
                <li><a href="#">關於我們</a>
                    <ul>
                        <li><a href="team.jsp">組員介紹</a></li>
                        <li><a href="mailto:pauline687@gmail.com">聯絡我們</a></li>
                    </ul>
                </li>
                <li><a href="help.jsp">幫助</a></li>
            </ul>
        </div>
    </div>
	<%}%>
    <!-- 購物車 --------------------------------------->
    <div class="cc">
        <div class="ccc">
		   <%sql="SELECT * FROM `cart` WHERE `memmail`='" +session.getAttribute("mail")+"'"; 
           ResultSet rs=con.createStatement().executeQuery(sql);
		   
		   rs=con.createStatement().executeQuery(sql);%>
            <table id="t01">
                <tr>
                    <th>商品</th>
                    <th></th>
                    <th>單價</th>
                    <th>數量</th>
                    <th>總計</th>
                    <th></th>
                </tr>
                <!-- 商品一大包開始 -->
				
				<%
				int a=0;
				while(rs.next())
                {%>
                <tr id="no">
				<form name="form1" method="post" action="deletegood.jsp" >
                    <td><img src="images/goods/<%=rs.getString(2)%>-1.JPG" class="t_img"></td>
                    <td><%=rs.getString(3)%></td>
                    <td>$<span id=""><%=rs.getString(4)%></span></td>
                    <td><%=rs.getString(6)%></td>
                    <td>$<span id="total">
					<%=Integer.parseInt(rs.getString(4))*Integer.parseInt(rs.getString(6))%>
					<input type="hidden" name="mail" value="<%=a+=Integer.parseInt(rs.getString(4))*Integer.parseInt(rs.getString(6))%>">
						 </span>
				<input type="hidden" name="ordernum" value="<%=(rs.getString(1))%>">
					</td>
                    <td><input type="submit" class="t_but" value="刪除"></td>
				</form>
                </tr>
				<%}%>
                <!-- 商品一大包結束 -->
            </table>
        </div>
		<form action="recordIntoOrder.jsp" method="post">
            <div class="cc02">
                <div>
                    <table id="okgo">
                        <tr>
                            <th>收件人</th>
                            <td><input type="text" name="name" class="okok" required></td>
                        </tr>
                        <tr>
                            <th>收件人電話</th>
                            <td><input type="mobile" id="mobile" pattern="\d{10}" name="phone" class="okok" required></td>
                        </tr>
                        <tr>
                            <th>收件人地址</th>
                            <td><input type="text" name="address" class="okok" required></td>
                        </tr>
                        <tr>
                            <th>付款方式</th>
                            <td>貨到付款</td>
                        </tr>
                    </table>
                </div>
                <div class="tip">
                    <div class="tip_head">訂單摘要</div>
                    <div class="count">
                        <div class="lable">商品總價：</div>
                        <div class="price">$<span id=""><%=a%></span></div>
                    </div>
                    <div class="post">
                        <div class="lable">運費總計：</div>
                        <div class="price">$80</div>
                    </div>
                    <hr>
                    <div class="amount">
                        <div class="lable">結帳總金額：</div>
                        <div class="price">$<span id=""><%=a+80%></span></div>
                    </div>
                    <input type="submit" value="送出訂單" class="go_but">
                </div>
            </div>
        </form>
		
    </div>

</body>

</html>