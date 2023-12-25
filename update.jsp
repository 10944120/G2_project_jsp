<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("mail") != null ){
    //if(request.getParameter("mail")==null){
	String mail = request.getParameter("mail");  		  		
	String pwd = request.getParameter("pwd"); 	
	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");	
	String gender = request.getParameter("gender");
	String phone = request.getParameter("phone");
	String address = new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");
	
    sql = "UPDATE `members` SET `mail`='"+mail+"' WHERE `mail`='"+session.getAttribute("mail")+"'";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.execute();
    sql = "UPDATE `members` SET `pwd`='"+pwd+"' WHERE `mail`='"+session.getAttribute("mail")+"'";
	pstmt = con.prepareStatement(sql);
	pstmt.execute();
	sql = "UPDATE `members` SET `name`='"+name+"' WHERE `mail`='"+session.getAttribute("mail")+"'";
	pstmt = con.prepareStatement(sql);
	pstmt.execute();
	sql = "UPDATE `members` SET `gender`='"+gender+"' WHERE `mail`='"+session.getAttribute("mail")+"'";
	pstmt = con.prepareStatement(sql);
	pstmt.execute();	
	sql = "UPDATE `members` SET `phone`='"+phone+"' WHERE `mail`='"+session.getAttribute("mail")+"'";
	pstmt = con.prepareStatement(sql);
	pstmt.execute();
	sql = "UPDATE `members` SET `address`='"+address+"' WHERE `mail`='"+session.getAttribute("mail")+"'";
	pstmt = con.prepareStatement(sql);
	pstmt.execute();
	session.setAttribute("mail",mail);
	con.close();//結束資料庫連結
	response.sendRedirect("member.jsp");
	//}
	//else{
	//con.close();//結束資料庫連結	
	//  out.print("<script>self.location=document.referrer; alert('更新失敗');</script>");
	//}
}
else{
	con.close();//結束資料庫連結
%>
<h1><font color="red">您尚未登入，請登入！</font></h1>
<form action="check.jsp" method="POST">
帳號：<input type="text" name="mail" /><br />
密碼：<input type="password" name="pwd" /><br />
<input type="submit" name="b1" value="登入" />
</form>
<%
}
%>
