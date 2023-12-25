<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="config.jsp"%>
<html>
    <head>
        <title>JSP SELECT</title>
    </head>
	<body>
		<h3>刪除商品</h3>
		
	
		<%  
	    sql = "SELECT * FROM mmm.good";
        ResultSet rs =  con.createStatement().executeQuery(sql);
		
		while(rs.next())
		{%>
		<ul>
                <li>商品代號: <%=rs.getString(1)%></li>
                <li>商品名稱: <%=rs.getString(6)%></li>
				<li>商品價格: <%=rs.getString(7)%></li>
				<li>商品庫存: <%=rs.getString(8)%></li>
				
				<form method="post" action="delproduct.jsp" >
					<input type="hidden" name="userid" value="<%=rs.getString(1)%>">
					<button type="submit">刪除商品</button>
				</form>
				
				<hr>
			</ul>	
		<%}%>
			<ul>
			   <input type="button" value="回到後台" onclick="location.href='backstage.jsp'">
			</ul>
    </body>
</html>