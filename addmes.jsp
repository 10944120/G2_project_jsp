<!-- Step 0: import library -->
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<html>
<head>
<title>add</title>
</head>
<body>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use hehe";
           con.createStatement().execute(sql);
          	
           String message=new String(request.getParameter("message").getBytes("ISO-8859-1"),"UTF-8");
          // String product=new String(request.getParameter("product").getBytes("ISO-8859-1"),"UTF-8");
		  String star=request.getParameter("rating_stars");
		  String pnum=request.getParameter("page");
           java.sql.Date wrdate=new java.sql.Date(System.currentTimeMillis());
		   //String pproduct=request.getParameter("product");
//Step 4: 執行 SQL 指令	
           sql="INSERT message (`pnum`,`message`,`wrdate`,`star`) ";
           sql+="VALUES ('" + pnum + "', ";
		   sql+="'" + message + "', ";
		   sql+="'"+wrdate+"', "; 
           sql+="'"+star+"')";
           con.createStatement().execute(sql);
		   con.close();
		   
		   response.sendRedirect("good.jsp?p="+ pnum);
		}      
    }
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
