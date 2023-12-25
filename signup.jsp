<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> <%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>signup</title>
  <link rel="stylesheet" type="text/css" href="assets/cc.css">
  <link rel="stylesheet" type="text/css" href="assets/su.css">
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


  <div class="t">註冊</div>
  <div class="t01">
    <!-- 頭貼 --------------------------------------->
    <form action="/somewhere/to/upload" enctype="multipart/form-data">
      <img id="preview_progressbarTW_img" src="images/head.png" class="head02" />
      <div class="head03">
        <a href="javascript:;" class="a-upload">
          <input type="file" onchange="readURL(this)" targetID="preview_progressbarTW_img" value="上傳頭貼"
            accept="image/gif, image/jpeg, image/png" />上傳頭貼
        </a>
      </div>

    </form>
    <script>
      function readURL(input) {
        if (input.files && input.files[0]) {
          var imageTagID = input.getAttribute("targetID");
          var reader = new FileReader();
          reader.onload = function (e) {
            var img = document.getElementById(imageTagID);
            img.setAttribute("src", e.target.result)
          }
          reader.readAsDataURL(input.files[0]);
        }
      }
    </script>
    <!-- 右半部 --------------------------------------->
    <div class="t02">
      <form name="memsignup" method="post" action="addmem.jsp" onsubmit="return validateForm()">
        <div class="tt">
          <div class="f">姓名：
            <input type="text" class="ff" name="name" placeholder="此欄位必填" required>
          </div>
        </div>
        <div class="tt">
          <div class="f">性別：
            <input type="radio" name="gender" value="girl" class="rr" checked="true">女
            <input type="radio" name="gender" value="boy" class="rr">男
          </div>
        </div>
        <div class="tt">
          <div class="f">生日：
            <input type="date" name="birth" class="ff" placeholder="此欄位必填" required>
          </div>
        </div>
        <div class="tt">
          <div class="f">電話：
            <input type="mobile" id="mobile" pattern="\d{10}" name="phone" class="ff">
          </div>
        </div>
        <div class="tt">
          <div class="f">地址：
            <input type="text" name="address" class="ff">
          </div>
        </div>
        <div class="tt">
          <div class="f">信箱：
            <input type="email" class="ff" name="mail" onKeyup="mail()" onblur="mail();" placeholder="此欄位必填" required>
          </div>
        </div>
        <div class="tt">
          <div class="f">密碼：
            <input type="password" name="pwd" class="ff" placeholder="此欄位必填" required>
          </div>
        </div>
        <div class="b">
          <input type="submit" value="送出" class="bb">
        </div>
      </form>
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