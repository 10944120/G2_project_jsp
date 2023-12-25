<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> <%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>team</title>
    <link rel="stylesheet" type="text/css" href="assets/cc.css">
    <link rel="stylesheet" type="text/css" href="assets/cc_team.css">
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

    <div>
        <div class="box">
            <div class="box1">
                <img src="images/team/1.jpg" class="photo">
                <div class="igname">
                    <h3 class="name">周寶琳</h3>
                    <a href="https://www.instagram.com/pauline0321/" target="_black"><img src="images/team/ig.png"
                            class="igfb"></a>
                    <a href="https://www.facebook.com/profile.php?id=100002217266211" target="_black"><img
                            src="images/team/fb.png" class="igfb"></a>
                </div>
            </div>
            <div class="">
                <p class="box2">
                    我覺得這次的專案非常具有挑戰性，想要做的功能很多，但能力卻很有限，要一直不斷的跟組員溝通討論一起學習，並且要與乙班合作，所以還有時間的壓力，不想要壓縮組員製作後端的時間。在製作的過程中了解到自己還有很多不足的地方，謝謝小組員的團隊合作與努力，希望最後能製作出完整的成品。
                </p>
            </div>
        </div>

        <div class="box">
            <div class="">
                <p class="box2">
                    繼期中專案後又迎來了多媒體程式設計的期末專案，這次的專案要和乙班的同學一起，整合一個網站的前後端，實際做起來發現這比想像中的困難，不僅要寫前端的網頁樣式，還要和乙班的討論整體的架構，比起期中專案會遇到更多的困難，時間也更加緊迫。
                </p>
            </div>
            <div class="box1">
                <img src="images/team/2.jpg" class="photo">
                <div class="igname">
                    <h3 class="name">朱琪嬡</h3>
                    <a href="https://www.instagram.com/chi_ai_0123/" target="_black"><img src="images/team/ig.png"
                            class="igfb"></a>
                    <a href="https://www.facebook.com/profile.php?id=100004099704719" target="_black"><img
                            src="images/team/fb.png" class="igfb"></a>
                </div>
            </div>
        </div>

        <div class="box">
            <div class="box1">
                <img src="images/team/3.jpg" class="photo">
                <div class="igname">
                    <h3 class="name">林咨妤</h3>
                    <a href="https://www.instagram.com/lzy329422/" target="_black"><img src="images/team/ig.png"
                            class="igfb"></a>
                    <a href="https://www.facebook.com/profile.php?id=100006901682597" target="_black"><img
                            src="images/team/fb.png" class="igfb"></a>
                </div>
            </div>
            <div class="">
                <p class="box2">
                    隨著期末將近，我也開始緊張起我們的網頁了，但總還是很迷茫，不知從何下手。或許下學期就會融會貫通了，了解前端後端後，就比較會知道之間的關聯。看到甲班的partner寫出介面來，配色、排版不輸隨處可見的網頁，有些壓力，怕自己網頁後端寫得不夠好，毀了甲班同學的努力。
                </p>
            </div>
        </div>

        <div class="box">
            <div class="">
                <p class="box2">
                    第一次上網路程式設計也是我第一次接觸到html甚至是JSP、tomcat、資料庫等等，發現比想像中的難，也了解到網頁的初步製作。在上個禮拜的時候，我們跟甲班的同學有初步討論，討論完後我發現寫後段真的蠻難的，而我們的討論內容之一有要寫評論評價，就是目前我們正在上的部分，所以這幾堂課我要更認真好完成這個部分！
                </p>
            </div>
            <div class="box1">
                <img src="images/team/4.jpg" class="photo">
                <div class="igname">
                    <h3 class="name">黃曼瑄</h3>
                    <a href="https://www.instagram.com/ms891006/" target="_black"><img src="images/team/ig.png"
                            class="igfb"></a>
                    <a href="https://www.facebook.com/profile.php?id=100006100298104" target="_black"><img
                            src="images/team/fb.png" class="igfb"></a>
                </div>
            </div>
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