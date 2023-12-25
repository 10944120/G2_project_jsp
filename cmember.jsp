<!DOCTYPE html>
<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@include file="config.jsp" %>
	<%
	request.setCharacterEncoding("UTF-8"); 
if(session.getAttribute("id") != null ){
    sql = "SELECT * FROM `good` WHERE `id`='" +session.getAttribute("id")+"';"; 
	ResultSet rs =con.createStatement().executeQuery(sql);

	String id="", name="", price="", count="";
	//讀出id, pwd當成使用者要更改時的內定值
	while(rs.next()){
	    id=rs.getString("id");
		name=rs.getString("name");
		price=rs.getString("price");
		count=rs.getString("count");
	}
	
	
	//舊版MySQL從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
    //String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
	boolean no= con.createStatement().execute(sql); //執行成功傳回false
	
    con.close();//結束資料庫連結
%>
    <section>

						<form action="cupdate.jsp" method="POST">
                                <label for="account" class="label"  >商品id</label>
                                <input id="account" type="text" class="input" name="id"  value="<%=id%>"/><br>
                         							
								<label for="account" class="label" >名稱</label>
                                <input id="account" type="text" class="input" name="name" value="<%=name%>" /><br>
								
								<label for="account" class="label" >價錢</label>
                                <input id="account" type="text" class="input" name="price" value="<%=price%>" /><br>
								
								<label for="account" class="label" >庫存</label>
                                <input id="account" type="text" class="input" name="count" value="<%=count%>" /><br>

        
                            <a href="#"><input type="submit" class="button" value="儲存" name="b1"></a> </form>

<%
}
else{
	con.close();//結束資料庫連結
%>
<div style="margin: 100px 0 0 100px ;">
<h1><a href="login.jsp" style="color:rgb(133, 66, 19);">您尚未登入，請點這裡登入！ </a></h1>
</div>
<%
}
%>		
    </section>