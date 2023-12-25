<%@ page import = "java.sql.*, java.util.*"%><%@include file="config.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%
                  
	String goodnum = request.getParameter("goodnum");//商品number
	String goodname = new String(request.getParameter("goodname").getBytes("ISO-8859-1"),"UTF-8");//商品名稱
	String price = request.getParameter("price");//商品價格
	String quan = request.getParameter("quan");//庫存
	int Quan = Integer.parseInt(quan);
	String mquan = request.getParameter("mquan");//消費者選取數量
	int Mquan = Integer.parseInt(mquan);
	String mail=(String)session.getAttribute("mail");//消費者信箱
    
	
	if(Mquan>Quan)//下訂數量大於庫存
	{
	%>

	<script type="text/javascript" language="javascript">
	alert("庫存數量不足");
	window.document.location.href="goods.jsp";
	</script> 

	<%
	}
	else if(Mquan==0)//select沒有選擇數量
	{
	%>

	<script type="text/javascript" language="javascript">
	alert("不可以不選");
	window.document.location.href="goods.jsp";
	</script>

	<%
	}
                        
                      
	else
	{           
                              
	con.createStatement().execute("use hehe");
	sql = "insert into cart(goodnum,goodname,price,quan,buy,memmail)";
	sql+="values ('"+goodnum+"', ";  
	sql+="'" +goodname+ "', ";
	sql+="'"+price+"', ";
	sql+="'"+quan+"', ";
	sql+="'"+mquan+"', ";
	sql+="'"+mail+"');";                          
    //con.createStatement().execute                        
							 
	Boolean rs = con.createStatement().execute(sql);
	if(rs==true)
	{
		out.print("新增失敗");
		response.sendRedirect("goods.jsp");
	}
	else
	{								
		out.print("<script>self.location=document.referrer; alert('新增成功');</script>");               
	}
		con.close();//關閉連線
	}

%>