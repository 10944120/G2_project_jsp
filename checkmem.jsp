<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(request.getParameter("mail") !=null && request.getParameter("pwd") != null){
    sql = "SELECT * FROM `members` WHERE `mail`= ? AND `pwd`= ?"  ; 
    PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1, request.getParameter("mail"));
	pstmt.setString(2, request.getParameter("pwd"));
    ResultSet rs =pstmt.executeQuery();
    
    if(rs.next()){            
        session.setAttribute("mail",request.getParameter("mail"));
		con.close();//結束資料庫連結
        response.sendRedirect("member.jsp") ;
    }
    else{
		con.close();//結束資料庫連結
        out.println("<script>self.location=document.referrer; alert('帳號密碼不符，請重新登入');</script>") ;
	}
}
%>