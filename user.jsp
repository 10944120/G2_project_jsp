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
				String name = request.getParameter("nid");
				String psd = request.getParameter("npwd");
				String email = request.getParameter("ngmail");
				
				
				
					
					
					//sql="SELECT MAX(id1) FROM `member` ";
					//ResultSet rs=con.createStatement().executeQuery(sql);
					//rs.next();
					
					//int a=rs.getInt(1)+1;  
					
				try{
				 sql = "INSERT `member`(`id`, `pwd` , `gmail`)"+" VALUES('"+name+"','"+psd+"','"+email+"')";
				con.createStatement().execute(sql);
					out.print("<script>alert('註冊成功，請重新登入');window.location='login.jsp'</script>");
				con.close();//結束資料庫連結
				}
				catch(SQLException sExec){
					out.print("<script>alert('註冊失敗，返回登入');window.location='member.jsp'</script>");
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
