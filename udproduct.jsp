<<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>

<%
	request.setCharacterEncoding("utf-8");
    if(request.getParameter("name") != "" && request.getParameter("price") != "" && request.getParameter("count") != "")
	{
		String xx = request.getParameter("confirm");
		String name = request.getParameter("pname");
		String price =request.getParameter("pprice");
		String count = request.getParameter("pcount");
		
		sql = "Update `product` Set `count` = '"+count+"', `price` ='"+price+"' WHERE `id` ='"+ xx+"'"; 
        con.createStatement().executeUpdate(sql);	
        con.close();
		out.print("<script>alert('修改成功！'); </script>");
		response.setHeader("refresh","0;URL=backstage.jsp") ;
    }
    else
	{
		out.println("<script>alert('修改失敗！');</script>");
		response.setHeader("refresh","0;URL=backstage.jsp") ;
	}
%>
