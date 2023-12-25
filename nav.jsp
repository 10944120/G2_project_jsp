<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <nav>
        <a href="cart.html"><img src="../assets/images/cart.png" class="cart"></a>
        <a href="member.html"><img src="../assets/images/teamwork.png" class="teamwork"></a>
        <div>
            <img src="../assets/images/search.png" class="search">
            <input type="search" placeholder="請輸入關鍵字" style="height: 40px;" class="search-txt">
        </div>
        <a href="back.html" class="back">後台登入</a>
        <a href="login.html" class="member">登入註冊</a>
        <a href="aboutus.html" class="about">關於我們</a>
        <a href="allproduct.html" class="product">商品總覽</a>
        <div class="title">
            <span style="animation-delay: 0s;">整</span>
            <span style="animation-delay: 0.2s;">人</span>
            <span style="animation-delay: 0.4s;">專</span>
            <span style="animation-delay: 0.6s;">家</span>
        </div>
    </nav>
	
 <%
int count;
String countString;
try {
String sql="";
String url="jdbc:mysql://localhost/?serverTimezone=UTC";
Connection con=DriverManager.getConnection(url,"root","1234");
if(con.isClosed())
out.println("連線建立失敗");
else{
sql="use book";
con.createStatement().execute(sql);	
sql="select * from counter" ;
ResultSet rs=con.createStatement().executeQuery(sql);

if (rs.next()){
countString = rs.getString(1);
count = Integer.parseInt(countString);
Object obj = session.getAttribute("online");
//if (obj == null){ //判斷session是否結束

if (session.isNew())
{
    count=count + 1;
countString = String.valueOf(count);
sql="update counter set count = " + countString ;
con.createStatement().execute(sql);
session.setAttribute("online",count);
}
out.println(count);
}
       con.close();
      }
}
catch(Exception err)
{
    out.println(err.toString());
}

%>
</body>
</html>