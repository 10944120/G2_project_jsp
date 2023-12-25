<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@include file="config.jsp" %>
<%
request.setCharacterEncoding("UTF-8"); 
if(session.getAttribute("id") != null ){
    if(request.getParameter("id")!=null){
    sql = "UPDATE `good` SET `id`='"+request.getParameter("id")+"', `name`='"+request.getParameter("name")+"', `price`='"+request.getParameter("price")+"', `count`='"+request.getParameter("count")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	//con.createStatement().execute(sql);
    //sql = "UPDATE `member` SET `pwd`='"+request.getParameter("pwd")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	con.createStatement().execute(sql);	
	
	
	//舊版MySQL從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
    //String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
	boolean no= con.createStatement().execute(sql); //執行成功傳回false
	
	con.close();//結束資料庫連結
		  out.print("<script>alert('更新成功!!');window.location='backstage.jsp'</script>");
	}
	else{
	  con.close();//結束資料庫連結	
	  out.print("更新失敗!! 請填寫完整，<a href='user.jsp'>按此</a>重新編輯!!");

	}
}
else{
	con.close();//結束資料庫連結
%>
<h1><font color="red">您尚未登入，請登入！</font></h1>
<form action="check.jsp" method="POST">
帳號：<input type="text" name="id" /><br />
密碼：<input type="password" name="pwd" /><br />
<input type="submit" name="b1" value="登入" />
</form>
<%
}
%>