<!-- Step 0: import library -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<html>
<head>
<title>board1</title>
</head>
<body>
<% /* String message=request.getParameter("message");
	out.println(name);
		*/ %>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","12345678");
		
		if(session.getAttribute("id") != null ){
  
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use mmm";
           con.createStatement().execute(sql); //刪
		   request.setCharacterEncoding("UTF-8");  
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
   
		String message = request.getParameter("message");
		//舊版MySQL從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
        //String message=new String(request.getParameter("message").getBytes("ISO-8859-1"),"UTF-8");
		boolean no= con.createStatement().execute(sql); //執行成功傳回false


//Step 4: 執行 SQL 指令	
           sql = "insert `board`(`message`) values('"+message+"')"; 

		   con.createStatement().execute(sql);	
//Step 6: 關閉連線
			
           con.close();
		   response.sendRedirect("pull.jsp");
		}
		}		
else{
 con.close();//結束資料庫連結
%>
<div style="margin: 100px 0 0 100px ;">
<h1><a href="login.jsp" style="color:rgb(133, 66, 19);">您尚未登入，請點這裡登入！ </a></h1>
</div>
<%
}
    }//刪
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>

</body>
</html>