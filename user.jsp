<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("mail") != null ){
    sql = "SELECT * FROM `members` WHERE `mail`='" +session.getAttribute("mail")+"';"; 
	ResultSet rs =con.createStatement().executeQuery(sql);
	String mail="", pwd="";
	//讀出id, pwd當成使用者要更改時的內定值
	while(rs.next()){
	    mail=rs.getString("mail");
		pwd=rs.getString("pwd");
	}
    con.close();//結束資料庫連結
%>
哈囉，<%=mail%>，<a href='logout.jsp'>登出</a><br />
請修改會員資料：<br />
<form action="update.jsp" method="POST">
您的姓名：<input type="text" name="mail" value="<%=mail%>" />
您的密碼：<input type="password" name="pwd" value="<%=pwd%>" />
<input type="submit" name="b1" value="更新資料" />
</form>
<%
}
else{
	con.close();//結束資料庫連結
	response.sendRedirect("unenter.html");
}
%>
