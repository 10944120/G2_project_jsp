<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("id") != null ){
    if(request.getParameter("id")!=null){
    sql = "UPDATE `member` SET `id`='"+request.getParameter("id")+"', `gmail`='"+request.getParameter("gmail")+"', `tel`='"+request.getParameter("tel")+"', `pwd`='"+request.getParameter("pwd")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	//con.createStatement().execute(sql);
    //sql = "UPDATE `member` SET `pwd`='"+request.getParameter("pwd")+"' WHERE `id`='"+session.getAttribute("id")+"'";
	con.createStatement().execute(sql);	
	con.close();//結束資料庫連結
		  out.print("<script>alert('更新成功!!');window.location='member.jsp'</script>");
	}
	else{
	  con.close();//結束資料庫連結	
	  out.print("更新失敗!! 請填寫完整，<a href='user.jsp'>按此</a>回會員頁面!!");

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
