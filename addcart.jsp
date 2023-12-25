<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
  <title>add</title>
</head>

<body>

  <%
if(session.getAttribute("id")!=null){
  try {
  //Step 1: 載入資料庫驅動程式 
      Class.forName("com.mysql.jdbc.Driver");
      try {
  //Step 2: 建立連線 	
          String url="jdbc:mysql://localhost/?serverTimezone=UTC";
          String sql="";
          Connection con=DriverManager.getConnection(url,"root","12345678");
          if(con.isClosed())
            out.println("連線建立失敗");
          else {
  //Step 3: 選擇資料庫   
          sql="use mmm";
          con.createStatement().execute(sql);
          String ppid = request.getParameter("product");
		  
		  sql="select * from mmm.good where id='"+ppid+"'";
		  con.createStatement().execute(sql); 
		  PreparedStatement pstmt = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
		  ResultSet rs1=pstmt.executeQuery();
		  while(rs1.next()){
          String ppicture = rs1.getString("img src");
		  String ppname = rs1.getString("name");
          String pprice= rs1.getString("price");
		  String ppcount= request.getParameter("num");
		  String user= session.getAttribute("id").toString();
          
  //Step 4: 執行 SQL 指令	
          sql="use mmm";
          con.createStatement().execute(sql);
          sql="insert `cartt` (`id`, `img src`,`name`,`price`,`add`,`userid`) ";
          sql+="value ('"+ppid+"',";
		  sql+="'"+ppicture+"',";
          sql+="'"+ppname+"',";
          sql+="'"+pprice+"',";
		  sql+="'"+ppcount+"',";
		  sql+="'"+user+"')";
		  
          con.createStatement().execute(sql);}
  //Step 6: 關閉連線
            con.close();
        }
      }
      catch (SQLException sExec) {
            out.println("SQL錯誤"+sExec.toString());
      }
  }
  catch (ClassNotFoundException err) {
    out.println("class錯誤"+err.toString());
  }
}
else{
  response.sendRedirect("login.jsp");
}
%>
  新增完畢: <a href="cart.jsp">前往購物車</a></br>
  <a href="allproduct.jsp">繼續購物</a>
</body>

</html>


