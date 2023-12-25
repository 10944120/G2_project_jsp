<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> <%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>member</title>
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


	<%
	sql="SELECT * FROM members WHERE mail='"+session.getAttribute("mail")+"'";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	while(rs.next())
	{
	%>
	<form action="update.jsp" method="POST">
    <div class="mem01">
        <div class="mem02">
            <h2 class="mem03">會員基本資料</h2>
            <div class="mm">
                <div class="mm01">
                    <img src="images/head.png" class="m_po">
                </div>
                <div class="mm02">
                    <div class="mm03">
                        <div class="mm04">姓名：
                            <input type="text" class="ff" name="name" value="<%=rs.getString(4)%>" required>
                        </div>
                    </div>
                    <div class="mm03">
                        <div class="mm04">性別：
							<%if (rs.getString(6).equals("boy")){%>
								<input type="radio" name="gender" value="boy" class="rr" checked="true">男
								<input type="radio" name="gender" value="girl" class="rr">女
							<%}
							else{%>
								<input type="radio" name="gender" value="boy" class="rr">男
								<input type="radio" name="gender" value="girl" class="rr"  checked="true">女
							<%}%>
                            <!---<input type="radio" name="gender" value="girl" class="rr">女
                            <input type="radio" name="gender" value="boy" class="rr">男--->
							
                        </div>
                    </div>
                    <div class="mm03">
                        <div class="mm04">生日：
                            <input type="date" class="ff" name="birth" value="<%=rs.getString(7)%>" required>
                        </div>
                    </div>
                    <div class="mm03">
                        <div class="mm04">電話：
                            <input type="mobile" id="mobile" pattern="\d{10}" class="ff" name="phone" value="<%=rs.getString(8)%>">
                        </div>
                    </div>
                    <div class="mm03">
                        <div class="mm04">地址：
                            <input type="text" class="ff" name="address" value="<%=rs.getString(9)%>">
                        </div>
                    </div>
                    <div class="mm03">
                        <div class="mm04">信箱：
                            <input type="email" class="ff" name="mail" onKeyup="nocn()" onblur="nocn();" value="<%=rs.getString(3)%>" required>
                        </div>
                    </div>
                    <div class="mm03">
                        <div class="mm04">密碼：
                            <input type="password" class="ff" name="pwd" value="<%=rs.getString(5)%>" required>
                        </div>
                    </div>
                    <div class="mm_but">
                        <input type="submit" value="確認修改資料" class="mm_but01">
                    </div>
                </div>
            </div>

        </div>
    </div>
	</form>
	<%}%>
    <div class="mem01">
        <div class="mem02">
            <h2 class="mem03">購買訂單</h2>
            <!-- 商品一大包 -->
            <div>	
	<%
	sql="SELECT * FROM `order` WHERE `memmail`='"+session.getAttribute("mail")+"'";
	pstmt = con.prepareStatement(sql);
	rs=pstmt.executeQuery();
	while(rs.next())
	{
	%>			<form action="deleteorder.jsp" method="post">
                <table class="table">
				
                    <tr class="mem04">
                        <th class="mem04-1">購買日期</th>
                        <td class="mem04-1"><%=rs.getString(13)%></td>
						<td class="mem04-1"><input type="submit" value="我要退貨" class="byby"></td>
                    </tr>
				
                </table>
                <div class="pp">
                    <div class="pp1">
                        <table class="table01">

                            <tr>
                                <th class="mem-1">狀態</th>
                                <td class="mem-2">待出貨</td>
                            </tr>
                            <tr>
                                <th class="mem-1">訂單編號</th>
                                <td class="mem-2" style="width:200px;"><a href="order.jsp?Order=<%=rs.getString(1)%>" class="memorder">#<%=rs.getString(13)+rs.getString(1)+rs.getString(3)%></a></td>
								<input type="hidden" name="deleteorder" value="<%=rs.getString(1)%>"/>
								<input type="hidden" name="goodnum" value="<%=rs.getString(3)%>"/>
								<input type="hidden" name="buy" value="<%=rs.getString(8)%>"/>
							</tr>
                            <tr>
                                <th class="mem-1">消費金額</th>
                                <td class="mem-2">$<%=rs.getString(12)%></td>
                            </tr>
                        </table>
                    </div>
                    <div class="pp2">
                        <img src="images/goods/<%=rs.getString(3)%>-1.JPG" class="po">
                    </div>
                </div>
				</form>
	<%}%>
            </div>
            <!-- 商品一大包結束 -->

        </div>
    </div>

    <div class="ww">
        <img src="images/5.png" class="www">
        <img src="images/6.png" class="www">
        <img src="images/7.png" class="www">
    </div>
    <%
String thePath=request.getRealPath("/")+"mystore" ; 

//getRealPath表本網頁所在的根目錄
File count=new File(thePath,"count.txt");//要事先建立
BufferedReader count_in=new BufferedReader(new FileReader(count));//建立檔案輸入串流
String strNo=(String)session.getAttribute("x");
int x=Integer.parseInt(count_in.readLine());//使用readLine讀取檔案, 格式為字串
count_in.close();//關閉輸入串流
//計數器加1
if (session.isNew())
     x++;
session.setAttribute("x", strNo);%>
    <footer>heheshop © 2021<br><%out.print("網站總瀏覽量"+x);%></footer>
<% FileWriter count_out=new FileWriter(count);
count_out.write(String.valueOf(x));//將數字轉成字串,寫入輸出串流

count_out.flush();//將buffer寫入
count_out.close();//關閉串流
%>

</body>

</html>