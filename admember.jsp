<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admember</title>
    <link rel="stylesheet" type="text/css" href="assets/cc.css">
    <link rel="stylesheet" type="text/css" href="assets/cc_user.css">
    <link rel="stylesheet" type="text/css" href="assets/cc_member.css">
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
        <h1 class="ww">會員資訊</h1>
		<%sql= "SELECT * FROM `members`" ;
	ResultSet tmp=con.createStatement().executeQuery(sql);
    //ResultSet tmp =pstmt.executeQuery(abc);%>
        <!-- 會員一大包開始 -->
		
	<%while(tmp.next())
	  {%>
  <form name="form1" method="post" action="bkaddmember.jsp" >
        <div class="mem01">
            <div class="mem02">
                <div class="pp1">
                    <table class="table">
                        <tr class="mem04">
                            <th class="mem04-1">會員編號</th>
                            <td class="mem04-1" name="num"><%=tmp.getString(1)%></td>
                            <td class="mem04-1"><input type="submit" value="刪除會員" class="byby"></td>
                        </tr>
                    </table>
                    <div class="am01">
                        <div class="am02">
                            <img src="images/head.png" class="am02-1">
                        </div>
                        <div class="am03">
                            <table class="amanda">
                                <tr>
                                    <th class="ama" >姓名</th>
                                    <td class="amaa"><%=tmp.getString(4)%></td>
                                    <th class="ama">生日</th>
                                    <td class="amaa"><%=tmp.getString(7)%></td>
                                </tr>
                                <tr>
                                    <th class="ama">性別</th>
                                    <td class="amaa"><%=tmp.getString(6)%></td>
                                    <th class="ama">電話</th>
                                    <td class="amaa"><%=tmp.getString(8)%></td>
                                </tr>
                                <tr>
                                    <th class="ama">信箱</th>
                                    <td class="amaa" colspan="3"><input type="hidden" name="mail" value="<%=tmp.getString(3)%>"><%=tmp.getString(3)%></td>
                                </tr>
                                <tr>
                                    <th class="ama">密碼</th>
                                    <td class="amaa" colspan="3"><%=tmp.getString(5)%></td>
                                </tr>
                                <tr>
                                    <th class="ama">地址</th>
                                    <td class="amaaa" colspan="3">
                                        <%=tmp.getString(9)%></td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
	  </div>
	  </form><%}%>
        <!-- 會員一大包結束 -->
    </div>
</body>

</html>