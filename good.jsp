<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> <%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>good</title>
  <link rel="stylesheet" type="text/css" href="assets/cc.css">
  <link rel="stylesheet" type="text/css" href="assets/cc_good.css">
  <link rel="stylesheet" type="text/css" href="assets/cc_star.css">
  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
    crossorigin="anonymous"></script>
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

  <!-- 內容 -------------------------------------------->
  <%
  String p = request.getParameter("p");
	sql="SELECT * FROM good WHERE goodnum='"+p+"'";
	ResultSet rs=con.createStatement().executeQuery(sql);
	while(rs.next())
  {
  %>
  <div class="good">
    <div class="dog">
      <div class="dog01">
        
		
		<div class="dog02">
          <img src="images/goods/<%=rs.getString(1)%>-1.JPG" style="width:100%">
        </div>

        <div class="dog02">
          <img src="images/goods/<%=rs.getString(1)%>-2.JPG" style="width:100%">
        </div>

        <div class="dog02">
          <img src="images/goods/<%=rs.getString(1)%>-3.JPG" style="width:100%">
        </div>

        <a class="prev" onclick="plusSlides(-1)">❮</a>
        <a class="next" onclick="plusSlides(1)">❯</a>

        <div class="row">
          <div class="column">
            <img class="demo cursor" src="images/goods/<%=rs.getString(1)%>-1.JPG" style="width:100%" onclick="currentSlide(1)">
          </div>
          <div class="column">
            <img class="demo cursor" src="images/goods/<%=rs.getString(1)%>-2.JPG" style="width:100%" onclick="currentSlide(2)">
          </div>
          <div class="column">
            <img class="demo cursor" src="images/goods/<%=rs.getString(1)%>-3.JPG" style="width:100%" onclick="currentSlide(3)">
          </div>

        </div>
      </div>
      <!-- 商品文字 -->
	  <body>
	<%if(session.getAttribute("mail") != null)
  {%>
	  <form class="fform" action="addcart.jsp" method="post">
      <div class="text">
        <h2 class="text01"><%=rs.getString(2)%></h2>
        <h3 class="text02">$<%=rs.getString(3)%></h3>
        <h3 class="text03">數量：</h3>
        <select name="mquan" size="1" class="select">
          <option  value="1">1</option>
          <option  value="2">2</option>
          <option  value="3">3</option>
          <option  value="4">4</option>
          <option  value="5">5</option>
        </select>
        <h3 class="text03" name="quan">剩餘庫存：<%=rs.getString(4)%></h3>
		        <%out.print("<input type='hidden' name='goodnum' value='"+rs.getString(1)+"';>");%>
                <%out.print("<input type='hidden' name='goodname' value='"+rs.getString(2)+"';>");%>
                <%out.print("<input type='hidden' name='price' value='"+rs.getString(3)+"';>");%>
                <%out.print("<input type='hidden' name='quan' value='"+rs.getString(4)+"';>");%>
                <%out.print("<input type='hidden' name='mquan' value='"+rs.getString(13)+"';>");%>
        <input type="submit" class="b01" value="放入購物車">
      </div>
	  </form>
  <%}
	else
  {%>
	  <form class="fform" action="unenter.html" method="post">
      <div class="text">
        <h2 class="text01"><%=rs.getString(2)%></h2>
        <h3 class="text02">$<%=rs.getString(3)%></h3>
        <h3 class="text03">數量：</h3>
        <select name="mquan" size="1" class="select">
          <option  value="1">1</option>
          <option  value="2">2</option>
          <option  value="3">3</option>
          <option  value="4">4</option>
          <option  value="5">5</option>
        </select>
        <h3 class="text03" name="quan">剩餘庫存：<%=rs.getString(4)%></h3>
		        <%out.print("<input type='hidden' name='goodnum' value='"+rs.getString(1)+"';>");%>
                <%out.print("<input type='hidden' name='goodname' value='"+rs.getString(2)+"';>");%>
                <%out.print("<input type='hidden' name='price' value='"+rs.getString(3)+"';>");%>
                <%out.print("<input type='hidden' name='quan' value='"+rs.getString(4)+"';>");%>
                <%out.print("<input type='hidden' name='mquan' value='"+rs.getString(13)+"';>");%>
        <input type="submit" class="b01" value="放入購物車">
      </div>
	  </form>
  <%}%>
    </div>
  </div>
  
  <!-- 商品說明 -->
  <div class="tip">
    <div class="tip01">
      <h2 class="tip02">商品說明</h2>
      <div class="tip03"><%=rs.getString(6)%></div>
    </div>
  </div>
  <%}
  if(session.getAttribute("mail") != null)
  {%>
  <form name="form1" method="post" action="addmes.jsp" >
  <!-- 我要評論 ---------------------------------------->
  <div class="mycomment">
    <div class="my01">
      <h2 class="my02">我要評論</h2>
      <div class="my03">
        <div class="my04">
          <img src="images/head.png" class="my05">
        </div>
        <div class="my06">
          <!-- 星星 -->
          <div class="happy">
            <div class="rating effect">
              <input type="radio" name="rating_stars" value="star_one" id="star_one" name="star" />
              <label for="star_one" class="stars">One star</label>
              <input type="radio" name="rating_stars" value="star_two" id="star_two" name="star"/>
              <label for="star_two" class="stars">Two stars</label>
              <input type="radio" name="rating_stars" value="star_three" id="star_three" name="star"/>
              <label for="star_three" class="stars">Three stars</label>
              <input type="radio" name="rating_stars" value="star_four" id="star_four" name="star"/>
              <label for="star_four" class="stars">Four stars</label>
              <input type="radio" name="rating_stars" value="star_five" id="star_five" name="star" />
              <label for="star_five" class="stars">Five stars</label>
            </div>
          </div>
          <textarea class="my07" name="message"></textarea>
          <div class="my08">
            <input type="submit" value="送出" class="go">
			<input type="hidden" value="<%=p%>" name="page">
          </div>
        </div>
      </div>
    </div>
  </div>
  </form>
  <%}%>
  <!-- 購買評論 ----------------------------------------->
  <div class="mycomment">
    <div class="my01">
      
	  <%
           sql="SELECT * FROM `message`"; //算出共幾筆留言
		   ResultSet rs2=con.createStatement().executeQuery(sql);

           rs2.last();
           int total_content=rs2.getRow();
		   if(total_content==0)
		   {
				%><div class="mym">
				<h2 class="my02">產品評論</h2>
				<div class="mym01"><%out.print("尚無評論");%></div>
				</div><%
		   }
		   
		   else{
				%>
				<a id="2"></a>
				<div class="mym">
				<h2 class="my02">產品評論</h2>
				<div class="mym01"><%out.println("共"+total_content+"筆留言<p>");
				int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
				String page_string = request.getParameter("page");
				if (page_string == null) 
                page_string = "0";          
				int current_page=Integer.valueOf(page_string);
				if(current_page==0) //若未指定page, 令current_page為1
	            current_page=1;
				int start_record=(current_page-1)*5;
				sql="SELECT * FROM `message` ORDER BY `mesnum` DESC LIMIT ";  
				//遞減排序, 讓最新的資料排在最前面
				sql+=start_record+",5";

				%>
				</div>
				</div><%
           rs2=con.createStatement().executeQuery(sql);%>
         <%  while(rs2.next())
                {%>

      <div class="my03">
        <div class="my04">
          <img src="images/head.png" class="my05">
        </div>
        <div class="my06">
          <!-- 星星 -->
          <div class="happy">
            <div class="rating effect">
			
			 <%if (rs2.getString(4).equals("star_one")){%>
              <input type="radio" name="rating_stars" value="star_one" id="star_one"  />
			  <label for="star_one" class="stars">One star</label>
			  
			<%}%>
			 <%if (rs2.getString(4).equals("star_two")){%>
			 <input type="radio" name="rating_stars" value="star_one" id="star_one" />
			  <label for="star_one" class="stars">One star</label>
			  <input type="radio" name="rating_stars" value="star_two" id="star_two"  />
              <label for="star_two" class="stars">Two stars</label>
			  
              <%}%>
			 <%if (rs2.getString(4).equals("star_three")){%>
			  <input type="radio" name="rating_stars" value="star_one" id="star_one" />
			  <label for="star_one" class="stars">One star</label>
			  <input type="radio" name="rating_stars" value="star_two" id="star_two" />
              <label for="star_two" class="stars">Two stars</label>
			  <input type="radio" name="rating_stars" value="star_three" id="star_three" />
              <label for="star_three" class="stars">Three stars</label>
			 
              <%}%>
			  <%if (rs2.getString(4).equals("star_four")){%>
			  <input type="radio" name="rating_stars" value="star_one" id="star_one" />
			  <label for="star_one" class="stars">One star</label>
			  <input type="radio" name="rating_stars" value="star_two" id="star_two" />
              <label for="star_two" class="stars">Two stars</label>
			  <input type="radio" name="rating_stars" value="star_three" id="star_three" />
              <label for="star_three" class="stars">Three stars</label>
			  <input type="radio" name="rating_stars" value="star_four" id="star_four"  />
              <label for="star_four" class="stars">Four stars</label>
			  
              <%}%>
			   <%if (rs2.getString(4).equals("star_five")) {%>
			  <input type="radio" name="rating_stars" value="star_one" id="star_one" />
			  <label for="star_one" class="stars">One star</label>
			  <input type="radio" name="rating_stars" value="star_two" id="star_two" />
              <label for="star_two" class="stars">Two stars</label>
			  <input type="radio" name="rating_stars" value="star_three" id="star_three" />
              <label for="star_three" class="stars">Three stars</label>
			  <input type="radio" name="rating_stars" value="star_four" id="star_four" />
              <label for="star_four" class="stars">Four stars</label>
			  <input type="radio" name="rating_stars" value="star_five" id="star_five" />
              <label for="star_five" class="stars">Five stars</label>
              <%}%> 
			   <%if (rs2.getString(4).equals("null")) {%>
			  <input type="radio" name="rating_stars" value="star_one" id="star_one" />
			  <label for="star_one" class="stars">One star</label>
			  <input type="radio" name="rating_stars" value="star_two" id="star_two" />
              <label for="star_two" class="stars">Two stars</label>
			  <input type="radio" name="rating_stars" value="star_three" id="star_three" />
              <label for="star_three" class="stars">Three stars</label>
			  <input type="radio" name="rating_stars" value="star_four" id="star_four" />
              <label for="star_four" class="stars">Four stars</label>
			  <input type="radio" name="rating_stars" value="star_five" id="star_five" />
              <label for="star_five" class="stars">Five stars</label>
              <%}%> 
            </div>
          </div>
          <div class="com"><%out.println(rs2.getString(3));%></div>
          <div class="my08">
            <!-- 留言時間 -->
            <div class="time"><%out.println("留言時間:"+rs2.getString(5));%></div>
          </div>
        </div>
      </div>
	  <hr>
		   <%   }
     
				%><div class="page-icon"><%
				for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
					out.print("<a href='good.jsp?p="+p+"&page="+i+"'>"+i+"</a>&nbsp;");%>
				</div>
	  <!-- 留言頁數開始 ----------------------------------------
      <div class="page-icon">
        <a class="page-disabled" href="#">上一頁</span>
          <a href="#">1</a>
          <a href="#">2</a>
          <a href="#">3</a>
          <a class="page-next" href="#">下一頁</a>
      </div>
	  - 留言頁數結束 ---------------------------------------->
			<%}
%>
</div>
</div>
  <script>
    // 商品相簿
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
      var slides = document.getElementsByClassName("dog02");
      var dots = document.getElementsByClassName("demo");
      if (n > slides.length) { slideIndex = 1 }
      if (n < 1) { slideIndex = slides.length }
      for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
      }
      for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active");
      }
      slides[slideIndex - 1].style.display = "block";
      dots[slideIndex - 1].className += " active";
      captionText.innerHTML = dots[slideIndex - 1].alt;
    }
  </script>
  <script>
    // 星星
    $(function () {
      $(".star_good").hover(function () {
        var id = $(this).attr("id").substr(4);
        for (var i = 1; i <= id; i++) {
          $("#star" + i).attr("src", "images/star1.png");
          $("#star" + i).width("30px");
          $("#star" + i).height("30px");
        }

      }, function () {
        for (var i = 1; i <= 5; i++) {
          $("#star" + i).attr("src", "images/star0.png");
          $("#star" + i).width("30px");
          $("#star" + i).height("30px");
        }
        for (var i = 1; i <= 5; i++) {
          if ($("#star" + i).hasClass("cat")) {
            for (var j = 1; j <= i; j++) {
              $("#star" + j).attr("src", "images/star1.png");
              $("#star" + j).width("30px");
              $("#star" + j).height("30px");
            }
            for (var k = i + 1; k <= 5; k++) {
              $("#star" + k).attr("src", "images/star0.png");
              $("#star" + k).width("30px");
              $("#star" + k).height("30px");
            }
            break;
          }
        }

      });


      $(".star_click").click(function () {
        var id = $(this).attr("id").substr(4);

        for (var i = 1; i <= 5; i++) {
          $("#star" + i).removeClass("cat");
        }

        $("#star" + id).addClass("cat");
        for (var i = 1; i <= id; i++) {
          $("#star" + i).attr("src", "images/star1.png");
          $("#star" + i).width("30px");
          $("#star" + i).height("30px");
        }

      });


    })
  </script>
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