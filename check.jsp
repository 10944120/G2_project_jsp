<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(request.getParameter("id") !=null && !request.getParameter("id").equals("") 
	&& request.getParameter("pwd") != null && !request.getParameter("id").equals("")){
    sql = "SELECT * FROM `member` WHERE `id`='" +request.getParameter("id") + 
	      "'  AND `pwd`='" + request.getParameter("pwd") + "'"  ; 
	
    ResultSet rs =con.createStatement().executeQuery(sql);
    
    if(rs.next()){            
        session.setAttribute("id",request.getParameter("id"));
		con.close();//結束資料庫連結
        response.sendRedirect("member.jsp") ;
    }
    else{
		con.close();//結束資料庫連結
        out.println("<script>self.location=document.referrer; alert('帳號密碼不符，請重新登入');</script>") ;
	}
}

else
	out.println("<script>self.location=document.referrer; alert('帳密不可空白');</script>") ;
%>
