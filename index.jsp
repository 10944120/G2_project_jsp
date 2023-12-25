<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> <%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hehe</title>
    <link rel="stylesheet" type="text/css" href="assets/cc.css">
    <link rel="stylesheet" type="text/css" href="assets/cc_ad.css">
    <link rel="stylesheet" type="text/css" href="assets/cc_goods.css">
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
	
    <!-- 動態廣告 -->
    <div class="slideshow-container">
        <div class="mySlides fade">
            <img src="images/1.png" style="width:100%">
        </div>
        <div class="mySlides fade">
            <img src="images/2.png" style="width:100%">
        </div>
        <div class="mySlides fade">
            <img src="images/3.png" style="width:100%">
        </div>
        <div class="mySlides fade">
            <img src="images/4.png" style="width:100%">
        </div>
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
    <br>
    <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
        <span class="dot" onclick="currentSlide(4)"></span>
    </div>
    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>
    <div class="tt">
        <h2 class="add01">熱門商品</h2>
    </div>
	
	
	 <%         
    sql="SELECT * FROM `good` ORDER BY `salenum` DESC LIMIT 4";
    ResultSet rs=con.createStatement().executeQuery(sql); 

	%><div class="aa"> <%
	while(rs.next()){
        %>

        <a href="good.jsp?p=<%=rs.getString(1)%>" target="_blank">
            <div class="aa01">
                <img src="images/goods/<%=rs.getString(1)%>-1.JPG" class="aa02">
                <div class="aa03">
                    <div class="aa04"><%=rs.getString(2)%></div>
                    <div class="aa05">$<%=rs.getString(3)%></div>
                    <div class="aa06">銷量：<%=rs.getString(5)%></div>
                </div>
            </div>
        </a>
	<%}%>
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