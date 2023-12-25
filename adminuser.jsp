<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminuser</title>
    <link rel="stylesheet" type="text/css" href="assets/cc.css">
    <link rel="stylesheet" type="text/css" href="assets/cc_user.css">
    <link rel="stylesheet" type="text/css" href="assets/cc_member.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script>
    	$(function(){
    		$(".checkbox_add").change(function(){
    			if ($(this).prop("checked"))
    			{
    				$(this).val("v");
    			}
    			else 
    			{
    				$(this).val("x");	
    			}
    		})
    	})
    </script>
</head>

<body>
    <div class="choose">
        <ul>
			<li><img src="images/hehe.png" class="cho_img"></li>
            <li><a href="adminuser.jsp" class="cho01">商品資訊</a></li>
            <li><a href="adminuser.jsp#1" class="cho01">訂單總覽</a></li>
            <li><a href="admember.jsp" class="cho01">會員資訊</a></li>
            <a href="logout.jsp"><input type="submit" value="登出" class="cho02"></a>
        </ul>
    </div>
	
    <div class="w">
        <h1 class="ww">商品資訊</h1>
	<%sql= "SELECT * FROM `good`" ;
	ResultSet tmp=con.createStatement().executeQuery(sql);
    //ResultSet tmp =pstmt.executeQuery(abc);%>
	
        <div class="in">
            <table id="uu">
                <tr>
                    <th></th>
					<th>上架</th>
                    <th>商品名稱</th>
					<th>價格</th>
                    <th>庫存</th>
                    <th>圖片</th>
                    <th>商品編號</th>
                    <th></th>
                </tr>
                <!-- 商品一大包 -->
				<%while(tmp.next())
	  {%>
				<form name="form1" method="post" action="addpro.jsp" >
				<tr>
                    <td class="uu_number"><input type="text" class="uu-6" name="num" value="<%=tmp.getString(1)%>"></td>
                    <td>
							<%if (tmp.getString(10).equals("v")){%>
								<input type="checkbox" class="c01 uu-2 checkbox_add" name="add" value="v" checked="true">
							<%}
							else{%>
								<input type="checkbox" class="c01 uu-2 checkbox_add" name="add" value="x">
							<%}%>
					</td>
                    <td><input type="text" class="uu-1" name="name" value="<%=tmp.getString(2)%>"></td>
                    <td><input type="text" class="uu-2" name="price" value="<%=tmp.getString(3)%>"></td>
                    <td><input type="text" class="uu-2" name="reserve" value="<%=tmp.getString(4)%>"></td>
                    <td><img src="images/goods/<%=tmp.getString(1)%>-1.JPG" class="uu-3"></td>
                    <td><input type="text" class="uu-4" value="<%=tmp.getString(12)%>"></td>
                    <td><input type="submit" class="uu-5" value="修改"></td>
                </tr>
				</form>
				<%}%>
	  <!-- 商品一大包結束 -->
                </table>
        </div>
        <a id="1"></a>
        <h1 class="ww">訂單總覽</h1>
        <!-- 第一章訂單開始 -->
	<%String O = request.getParameter("Order");
	sql="SELECT * FROM `order`";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	while(rs.next())
	{
	%>
        <div class="mem01">
            <div class="mem02">
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
                        <div class="gg04">單價：$<%=rs.getString(6)%></div>
                        <div class="gg04">數量：<%=rs.getString(8)%></div>
                        <div class="gg04">總計(含運費)：$<%=Integer.valueOf(rs.getString(6))*Integer.valueOf(rs.getString(8))%></div>
                    </div>
                    <hr>
                    <!-- 商品一大包結束 -->
                    
                </div>
            </div>
        </div>
        <!-- 第一章訂單結束 -->
	<%}%>
    </div>
</body>

</html>