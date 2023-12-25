<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("mail") != null ){
	%><meta http-equiv="refresh" content="0;url=member.jsp">
	<%
}
else{
	response.sendRedirect("enter.jsp");
}
%>
