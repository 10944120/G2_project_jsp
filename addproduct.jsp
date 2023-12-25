<%@ page import = "java.sql.*, java.util.*,  java.text.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="config.jsp"%>

<%
String id=request.getParameter("additem");
    sql="SELECT *FROM `product`;";
    ResultSet rs=con.createStatement().executeQuery(sql);
    rs.next();
try
{
    request.setCharacterEncoding("utf-8");
	
	String name=request.getParameter("name");
	String count=request.getParameter("count");
	String price=request.getParameter("price");
	

	
	sql="INSERT `product` ( name1, price, count )"+"VALUES ('"+name+"','"+price+"','"+count+"')";

				
	con.createStatement().execute(sql);	 //執行SQL
	con.close();						 //關閉連線
	out.print("<script>alert('商品新增成功！');</script>"); 
	response.setHeader("refresh","0;URL=backstage.jsp");
}
catch ( SQLException e)
{
	out.print(e.toString());
		   
}
%>
</body>
</html>