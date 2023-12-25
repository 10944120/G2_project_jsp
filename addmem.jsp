<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>addmem</title>
</head>
<body>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use hehe";
           con.createStatement().execute(sql);
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
		   //上傳頭貼不知道怎麼用String mempic=request.getParameter("mempic");
           String mail=request.getParameter("mail");
		   String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
           String pwd=request.getParameter("pwd");
           String gender=request.getParameter("gender");
		   String birth=request.getParameter("birth");
		   String phone=request.getParameter("phone");
		   String address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");
		   
           //有時間再新增會員加入時間java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
//Step 4: 執行 SQL 指令	
           sql="INSERT members (`mail`, `name`, `pwd`, `gender`, `birth`,`phone`,`address`) ";
           sql+="VALUES ('" + mail + "', ";
           sql+="'"+name+"', ";
           sql+="'"+pwd+"', ";
           sql+="'"+gender+"', ";   
           sql+="'"+birth+"',"; 
		   sql+="'"+phone+"',";
		   sql+="'"+address+"')";
		   session.setAttribute("mail",mail);
           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("member.jsp");
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
