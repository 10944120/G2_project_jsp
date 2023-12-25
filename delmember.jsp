<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@ include file="config.jsp"%>
<%
    String number=request.getParameter("userid");
    sql="SELECT *FROM `member`;";
    ResultSet rs=con.createStatement().executeQuery(sql);
    rs.next();	
try
{
	sql = "DELETE FROM `member` WHERE `id`='"+number+"'";
    con.createStatement().execute(sql);
	con.close();
    out.print("<script>alert('刪除成功');</script>");
	response.setHeader("refresh","0;URL=backstage.jsp") ;
}
catch(SQLException e)
{
	out.print("<script>alert('刪除失敗');</script>");
	response.setHeader("refresh","0;URL=backstage.jsp") ;
}
%>

