<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/?serverTimezone=UTC";
Connection con=DriverManager.getConnection(url,"root","12345678");
String sql="use mmm";
con.createStatement().execute(sql);
%>