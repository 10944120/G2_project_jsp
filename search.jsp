<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>goods search</title>
    <link rel="stylesheet" type="text/css" href="assets/cc.css">
    <link rel="stylesheet" type="text/css" href="assets/cc_goods.css">
</head>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        String sql="";     
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use hehe";
           con.createStatement().execute(sql);
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
          %>
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
    <!-- 內容 -------------------------------------------->
    <div class="tt">
        <h2 class="add01">搜尋結果</h2>
    </div>
	<%
		      sql="use hehe";
              con.createStatement().execute(sql);
              request.setCharacterEncoding("utf-8");             
              sql="SELECT * FROM `good` WHERE `add`='v' AND `goodname` LIKE '%"+request.getParameter("search")+"%'";
              ResultSet tmp=con.createStatement().executeQuery(sql);
                              
		%>
	<%
	int j=1;
	while(tmp.next()){
		if(j%4==1)
		{%><div class="aa"><%}%>
        <a href="good.jsp?p=<%=tmp.getString(1)%>" target="_blank">
            <div class="aa01">
                <img src="images/goods/<%=tmp.getString(1)%>-1.JPG" class="aa02">
                <div class="aa03">
                    <div class="aa04"><%=tmp.getString(2)%></div>
                    <div class="aa05">$<%=tmp.getString(3)%></div>
                    <div class="aa06">庫存剩餘：<%=tmp.getString(4)%></div>
                </div>
            </div>
        </a>

        
	<%if(j%4==0)
		{%></div><%}
	j++;}%>
</body>
					 <%

//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
          }
		
  
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}

catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
} %>
</html>