<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	
		try {
				String url="jdbc:mysql://localhost/?serverTimezone=UTC";
				Connection con=DriverManager.getConnection(url,"root","12345678");
				String sql="USE `mmm`";
				con.createStatement().execute(sql);
				request.setCharacterEncoding("UTF-8");  
				
				String ppid = request.getParameter("npid");
				String pdiv1 = request.getParameter("ndiv class");
				String pahref= request.getParameter("na href");
				String ppicture = request.getParameter("npicture");
				String pdiv2 = request.getParameter("ndiv class2");
				String ppname = request.getParameter("nname");
				String pprice= request.getParameter("nprice");
				String pcount = request.getParameter("ncount");
				String pintroduction = request.getParameter("nintroduction");
				String padd = request.getParameter("nadd");
				String pdate = request.getParameter("ndate");
				String ptime = request.getParameter("ntime");
				String ptotal = request.getParameter("ntotal");
				
				//舊版MySQL從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1"),"UTF-8"編碼
				//String ppname=new String(request.getParameter("nname").getBytes("ISO-8859-1"),"UTF-8");
				
				boolean no= con.createStatement().execute(sql); //執行成功傳回false
												
					//sql="SELECT MAX(id1) FROM `member` ";
					//ResultSet rs=con.createStatement().executeQuery(sql);
					//rs.next();
					
					//int a=rs.getInt(1)+1;  
					
				try{
				 sql = "INSERT `good`(`id`, `div class`, `a href`,`img src`,`div class2`,`name`,`price`,`count`,`introduction`,`add`,`date`,`time`,`total`)"+" VALUES('"+ppid+"','"+pdiv1+"','"+pahref+"','"+ ppicture+"','"+ pdiv2+"','"+ ppname+"','"+ pprice+"','"+ pcount+"','"+ pintroduction+"','"+ padd+"','"+ pdate+"','"+ ptime+"','"+ ptotal+"')";
				con.createStatement().execute(sql);
					out.print("<script>alert('新增成功');window.location='selectnewp.jsp'</script>");
				con.close();//結束資料庫連結
				}
				catch(SQLException sExec){
					out.print("<script>alert('失敗，在試一次');window.location='selectnewp.jsp'</script>");
					out.print(sql);
					//out.print(rs.getInt(1));
							con.close();//結束資料庫連結

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


