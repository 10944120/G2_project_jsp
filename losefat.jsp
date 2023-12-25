<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>抽脂</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="star-rating-svg.css">
    <style>
         @import"../assets/css/product.css";
    </style>
    <script src="rating.js"></script> 
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
        <div class="item">
            <div class="item-photo">
                 <img src="../assets/images/losefat.png">
            </div>
        <!--    <div class="item-tit">
                 <h1>抽脂</h1>
            </div>
            <div class="item-intro">
                <p>最動聽的，不是「我愛你」，而是「你瘦了」</p>
           </div>-->
<% 

try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","12345678");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
		sql="select * from mmm.good";
		con.createStatement().execute(sql); 
		
		PreparedStatement pstmt = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
		ResultSet rs1=pstmt.executeQuery();
		
//Step 5: 顯示結果      
        rs1.next();
        int totalNo=rs1.getRow();
	
		for (int i=0; i<totalNo;i++){
		rs1.next();
		rs1.next();
		rs1.next();
		rs1.next();
		out.print("<div class='item-tit'><h1>"+rs1.getString(6)+"</h1></div>");
		out.print("<div class='item-intro'><p>"+rs1.getString(9)+"</p></div>");
		out.print("<div class='item-money'><p>NT$"+rs1.getString(7)+"</p>");
		out.print("</div>");
		out.print("<div class='item-cart'>");
		out.print("<form method='post' id='cart' action='addcart.jsp'>");
		out.print("<div class='item-cart-people'>人數:"+"</div>");
		out.print("<input type='number' min='1' name='num' id='item-cart-number'>");
		out.print("<input type='hidden' name='product' value='"+rs1.getString(1)+"'>");		
		out.print("<div class='item-cart-amount'>材料庫存:"+rs1.getString(8)+"</div>");
		out.print("<input type='submit' id='item-cart-img' value='加入購物車' onclick='submit()' class='item-cart-img'>");
		out.print("<input type='hidden' value='"+rs1.getString(1)+"'>");
		out.print("</div>");
		out.print("</form>");
		}	
		
//Step 6: 關閉連線
          con.close();
        }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
		   
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤"+err.toString());
}

%>
        <!--<div class="item-money">
                 <p>NT$160000</p>
            </div>
            <div class="item-cart">
                 <form action="#" method="post" id="cart" name="人數">
                    <div class="item-cart-people">人數:</div>
                    <input type="number" min="0" name="人數" id="item-cart-number">
                    <div class="item-cart-amount">材料庫存:500</div>
                    <input type="submit" value="加入購物車" onclick="submit()" class="item-cart-img">
                 </form>
            </div>-->
        </div>
    </section>
    <section>
        <div class="write">
            <form action="board5.jsp" method="post" id="message" name="留言">
                <div>
                    <input type="textarea" name="message" placeholder="留評論" id="txt">
	                <div class="rating-box">
                        <div class="rating">
                            <span class="fa fa-star-o" style="font-size: 50px; color: rgb(206, 206, 22);"></span>
                            <span class="fa fa-star-o" style="font-size: 50px; color: rgb(206, 206, 22);"></span>
                            <span class="fa fa-star-o" style="font-size: 50px; color: rgb(206, 206, 22);"></span>
                            <span class="fa fa-star-o" style="font-size: 50px; color: rgb(206, 206, 22);"></span>
                            <span class="fa fa-star-o" style="font-size: 50px; color: rgb(206, 206, 22);"></span>
                        </div>
                        <h4 id="rating-value"></h1>
                    </div>
                    <input type="submit" value="送出" onclick="submit()" class="write-submit">
                </div>                         
            </form>
        </div>
        <div class="message">
		
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","12345678");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="USE `mmm`";
           con.createStatement().execute(sql); 
		   
		   
//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
           sql="SELECT * FROM `board`"; //算出共幾筆留言
           ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
           //ResultSet.TYPE_SCROLL_INSENSITIVE表紀錄指標可前後移動，ResultSet.CONCUR_READ_ONLY表唯讀
           //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();
           int total_content=rs.getRow();
           out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+"<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;歷史評價</h1>"+"<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;共"+total_content+"筆留言</p>");
           
           //每頁顯示5筆, 算出共幾頁
           int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
           out.println("<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;請選擇頁數</span>");
           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
           for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
			   out.print("<a href='eyes.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白

           out.println("<p>");

           //讀取page變數
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "0";          
           int current_page=Integer.valueOf(page_string);
           if(current_page==0) //若未指定page, 令current_page為1
	          current_page=1;
	       //計算開始記錄位置   
//Step 5: 顯示結果 
           int start_record=(current_page-1)*5;
           //遞減排序, 讓最新的資料排在最前面
           sql="SELECT * FROM `board` ORDER BY `GBNO` DESC LIMIT ";
           sql+=start_record+",5";

// current_page... SELECT * FROM `board` ORDER BY `GBNO` DESC LIMIT
//      current_page=1: SELECT * FROM `board` ORDER BY `GBNO` DESC LIMIT 0, 5
//      current_page=2: SELECT * FROM `board` ORDER BY `GBNO` DESC LIMIT 5, 5
//      current_page=3: SELECT * FROM `board` ORDER BY `GBNO` DESC LIMIT 10, 5
           rs=con.createStatement().executeQuery(sql);
//  逐筆顯示, 直到沒有資料(最多還是5筆)
           while(rs.next())
                {
					out.println("<br>"+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+"評論 "+rs.getString(1)+" : "+rs.getString(2)+"<br>");
					out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+"__________________________________________________________________________________________________"+"<br>"+"<br>");
                }
//Step 6: 關閉連線
          con.close();
      }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
		   
    }
}
catch (ClassNotFoundException err) {
      out.println("class錯誤"+err.toString());
}
%>
        <!--<div class="message-ex">
                 <div class="message-ex-photo"><img src="../assets/images/messageone.jpg" class="message-ex-img"></div>
                 <div class="message-ex-tit"><h3>鮭魚真</h3></div>
                 <div class="ratings">
                    <div class="empty-stars"></div>
                    <div class="full-stars"></div>
                 </div>
                 <div class="message-ex-txt"><p>我有最性感的小蠻腰</p></div>
            </div>
            <div class="message-ex">
                 <div class="message-ex-photo"><img src="../assets/images/messagetwo.jpg" class="message-ex-img"></div>
                 <div class="message-ex-tit"><h3>太陽真</h3></div>
                 <div class="ratings">
                    <div class="empty-stars"></div>
                    <div class="full-stars"></div>
                 </div>
                 <div class="message-ex-txt2"><p>要看我穿比基尼了嗎</p></div>
            </div>-->
        </div>
    </section>
    <script>
        const stars=document.querySelector(".rating").children;
        let ratingValue
        let index //目前選到的星星
        //document.getElementById("rating-value").innerHTML = "請給分"
        for(let i=0;i<stars.length;i++){
            stars[i].addEventListener("mouseover",function(){
            //  console.log(i)
            //document.getElementById("rating-value").innerHTML = "正在打分數"
            for(let j=0;j<stars.length;j++){
                stars[j].classList.remove("fa-star")//reset 所有星星
                stars[j].classList.add("fa-star-o")
            }
        for(let j=0;j<=i;j++){
            stars[j].classList.remove("fa-star-o") //先移除空心的星星
            stars[j].classList.add("fa-star") //添加新的星星 如果i=j表示選中的
            }
        })
        stars[i].addEventListener("click",function(){
            ratingValue=i+1
            index=i
            //document.getElementById("rating-value").innerHTML = "你打的分數是 "+ratingValue
        })
        stars[i].addEventListener("mouseout",function(){
            for(let j=0;j<stars.length;j++){
                stars[j].classList.remove("fa-star")//reset 所有星星
                stars[j].classList.add("fa-star-o")
            }
            for(let j=0;j<=index;j++){
                stars[j].classList.remove("fa-star-o")
                stars[j].classList.add("fa-star")
            }
        })
        }
    </script>
	
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