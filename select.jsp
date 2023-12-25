<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="config.jsp"%>
<html>
    <head>
        <title>JSP SELECT</title>
    </head>
    <body>
       <h3>會員資料管理</h3>
<%  
	    sql = "SELECT * FROM mmm.member";
        ResultSet rs =  con.createStatement().executeQuery(sql);
		
		while(rs.next())
		{%>
		<ul>
            <li>帳號: <%=rs.getString(1)%></li>
            <li>GMAIL: <%=rs.getString(2)%></li>
		    <li>電話: <%=rs.getString(3)%></li>
		    <li>密碼: <%=rs.getString(4)%></li>
			<form  action="delmember.jsp" method="post">
				<input type="hidden" name="userid" value="<%=rs.getString(1)%>">
			<button type="submit">刪除會員</button></form>
			</form>	
		<hr>
		</ul>
		<%}%>
	    <ul>
			<input type="button" value="回到後台" onclick="location.href='backstage.jsp'">
		</ul>
    </body>
</html>
