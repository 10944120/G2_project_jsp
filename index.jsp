<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="config.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index</title>
    <style>
        @import"../assets/css/index.css";
        @import url("https://fonts.googleapis.com/css?family=Noto+Sans+TC&display=swap");
    </style>
    <script src="asset/js/nav.js"></script>
</head>
<body><!--change your life-->
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
    <div id="fly-in">
        <div><span>BEAUTIFUL</span>HOME</div>
        <div><span>Your are the</span>BEAUTIFUL WOMAN</div>
        <div><span>Have a look</span>flying mood</div>
        <div><span>The prince in the door</span>waiting for you!</div>
        <div><span>Easy in the hour</span>beautiful in life!</div>
        <div><span>The world is not lack of beauty,</span>but a lack of modification!</div>
        <div><span>Enjoy the beautiful place to</span>relax space</div>
        <div><span>The heart is beautiful,</span>look too</div>
    </div>
      
    <section class="contain"><!--隨機廣告-->
        <div class="contain-ad">
            <div>
                <img src="../assets/images/change1.png">
            </div>
            <div>
                <img src="../assets/images/change2.png">
            </div>
            <div>
                <img src="../assets/images/change3.png">
            </div>
        </div>
        <div class="contain-sale">
            <h2 class="sale-glowIn">
                <span style="animation-delay: 0s">排</span>
                <span style="animation-delay: 0.3s">行</span>
                <span style="animation-delay: 0.6s">榜</span>
            </h2>
            <table>
                <tr>
                    <td>
                        <div class="bord">
                            <div class="bord-col"><a href="eyes.jsp"><img src="../assets/images/eyeone.png" class="pic"></a></div>
                        </div>
                    </td>
                    <td>
                        <div class="bord">
                            <div class="bord-col"><a href="breast.jsp"><img src="../assets/images/breasttwo.png" class="pic"></a></div>
                        </div>
                    </td>
                    <td>
                        <div class="bord">
                            <div class="bord-col"><a href="pull.jsp"><img src="../assets/images/pullthree.png" class="pic"></a></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="bord-txt">割雙眼皮</div>
                    </td>
                    <td>
                        <div class="bord-txt">隆乳</div>
                    </td>
                    <td>
                        <div class="bord-txt">拉皮</div>
                    </td>
                </tr>
                <tr>
                    <td><br><br></td>
                    <td><br><br></td>
                    <td><br><br></td>
                </tr>
            </table>
        </div>
    </section>
    <footer>
        <h3>｜只要臉換得快，沒有悲傷只有愛｜</h3> 
 <%
    try {	 
				sql="use mmm"; 
				con.createStatement().execute(sql); 
				sql="SELECT * FROM `counter`"; 
				ResultSet rs=con.createStatement().executeQuery(sql); 
			if(rs.next())
            {
				String count = rs.getString(1); 
				int c =Integer.parseInt(count); 
				if (session.isNew()) 
				{ 
					c++; 
				    count= String.valueOf(c);
				    sql="update `counter` set `count` =" +count;
				    con.createStatement().execute(sql); 
				 
				}
			
				out.print("網頁瀏覽人數 "+count +" 人"); 
				con.close();
			} 
			
		}
			
    catch (SQLException sExec) 
	{
           out.println("警告：MySQL 錯誤！"+sExec.toString()); 
    }


%>
    </footer>
				  
</body>
</html>