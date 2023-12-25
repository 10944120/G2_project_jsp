<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@include file="config.jsp" %>
<%
if(request.getParameter("id") !=null && !request.getParameter("id").equals("") )
{
    sql = "SELECT * FROM `good` WHERE `id`='" +request.getParameter("id")+"'"  ; 
	
    ResultSet rs =con.createStatement().executeQuery(sql);

    
    if(rs.next()){            
        session.setAttribute("id",request.getParameter("id"));
		con.close();//結束資料庫連結
        response.sendRedirect("cmember.jsp") ;
    }
    else{
		con.close();//結束資料庫連結
        out.println("<script>self.location=document.referrer; alert('查無此id');</script>") ;
	}
}

else
	out.println("<script>self.location=document.referrer; alert('帳密不可空白');</script>") ;
%>