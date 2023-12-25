<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>order</title>
    <link rel="stylesheet" type="text/css" href="assets/cc.css">
    <link rel="stylesheet" type="text/css" href="assets/cc_member.css">
</head>

<body>
	<%if(session.getAttribute("mail") != null)
  {%>
    <div class="meun">
        <img class="hehe" src="images/hehe.png">
        <div class="right">
            <div class="top">
                <input class="search-box" type="text">
                <button class="search-btn">搜尋</button>
				<div class="enter"><a href="enter.jsp">
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
                <input class="search-box" type="text">
                <button class="search-btn">搜尋</button>
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
	<%}
	String O = request.getParameter("Order");
	sql="SELECT * FROM `order` WHERE `Order`='"+O+"'";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	while(rs.next())
	{
	%>
    <div class="mem01">
        <div class="mem02">
            <h2 class="mem03">收件人資訊</h2>
            <!-- 收件人資訊一大包 -->

            <div>
                <div class="pp">
                    <div class="pp1">
                        <table class="table0">

                            <tr>
                                <th class="mem-1">收件人</th>
                                <td class="mem-3"><%=rs.getString(9)%></td>
                            </tr>
                            <tr>
                                <th class="mem-1">收件人電話</th>
                                <td class="mem-3"><%=rs.getString(10)%></td>
                            </tr>
                            <tr>
                                <th class="mem-1">收件人地址</th>
                                <td class="mem-3"><%=rs.getString(11)%></td>
                            </tr>
                            <tr>
                                <th class="mem-1">付款方式</th>
                                <td class="mem-3">貨到付款</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

            <!-- 收件人資訊一大包結束 -->
        </div>
    </div>
    <div class="mem01">
        <div class="mem02">
            <h2 class="mem03">訂單內容</h2>
            <div class="pp1">
                <table class="table">
                    <tr class="mem04">
                        <th class="mem04-1">訂單編號</th>
                        <td class="mem04-1">#<%=rs.getString(13)+rs.getString(1)+rs.getString(3)%></td>
                        
                    </tr>
                </table>
                <!-- 商品一大包 -->
                <div class="gg">
                    <div class="gg01">
                        <img src="images/goods/1-1.JPG" class="gg02">
                    </div>
                    <div class="gg03"><%=rs.getString(4)%></div>
                    <div class="gg04">$<span id=""><%=rs.getString(6)%></span></div>
                    <div class="gg04"><%=rs.getString(8)%></div>
                    <div class="gg04">$<span id=""><%=Integer.valueOf(rs.getString(6))*Integer.valueOf(rs.getString(8))%></span></div>
                </div>
                <hr>
                <!-- 商品一大包結束 -->
                <div class="pp3">
                    <div class="pp4">
                        <table class="table02">
                            <tr>
                                <th class="mem-1">小計</th>
                                <td class="mem-2">$<span id=""><%=Integer.valueOf(rs.getString(6))*Integer.valueOf(rs.getString(8))%></span></td>
                            </tr>
                            <tr>
                                <th class="mem-1">運費</th>
                                <td class="mem-2">$80</td>
                            </tr>
                            <tr>
                                <th class="mem-1">總金額</th>
                                <td class="mem-2">$<span id=""><%=(Integer.valueOf(rs.getString(6))*Integer.valueOf(rs.getString(8)))+80%></span></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%}%>
</body>

</html>