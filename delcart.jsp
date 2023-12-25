<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");  
    String number=(String)session.getAttribute("id");
	String productid= request.getParameter("productid");
    sql="SELECT *FROM `cartt` where `userid` = '"+number+"' and `id` = '"+productid+"'";
    ResultSet rs=con.createStatement().executeQuery(sql);
    rs.next();
try
{
    sql = "DELETE FROM `cartt` WHERE `cardid`='"+rs.getString(7)+"'";
	con.createStatement().execute(sql);	
	con.close();//結束資料庫連結
	out.print("<script>alert('刪除成功');</script>");
	response.setHeader("refresh","0;URL=cart.jsp") ;
}
catch(SQLException e)
{
	out.print("<script>alert('刪除失敗');</script>");
	response.setHeader("refresh","0;URL=cart.jsp") ;
}

%>
