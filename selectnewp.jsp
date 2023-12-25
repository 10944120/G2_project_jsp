<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="config.jsp"%>
<html>
    <head>
        <title>JSP SELECT</title>
    </head>
    <body>
       
<%
                    sql = "SELECT * FROM good	";
                    ResultSet rs =  con.createStatement().executeQuery(sql);				   
				String pname[]={"0","id: ","div class: ","a href: ","picture: ","div class2: ","name: ","price: ","count: "};
					
//Step 5: 顯示結果                    
                    while(rs.next()){			
                 
					
                    				
		    //一筆一筆讀取資料，如果回傳false,表示資料讀取完畢。
		    //用回圈印出結果，getString(1)表示id,getString(2)表示name,依此類推
			for(int i=1; i<9; i++){	
			      for(int y=i; y<pname.length; y++){	
							out.print(pname[y]);
                            break;							
				  }	
                            out.println(rs.getString(i) + "<BR>");	
							 }	
			
					     out.println("---------------------------------------<BR>");
			}	           				
					
			
			%>
			<div class="loginall-signupform">
                        <div class="loginall-group">
						<form action="addp.jsp" method="POST">	
                            <label for="account" class="label">id add</label>
                            <input id="account" type="text" class="input" placeholder="請輸入商品id" name="npid">
                        </div>
                        <div class="loginall-group">
                            <label for="setpass" class="label">div class</label>
                            <input id="setpass" type="text" class="input"  placeholder="請輸入div class" name="ndiv class" value="col-4">
                        </div><br>
                       <div class="loginall-group">
                            <label for="setpass" class="label">a href</label>
                            <input id="setpass" type="text" class="input"  placeholder="請輸入連結" name="na href"  value="eyes.jsp">
                        </div><br>
                        <div class="loginall-group">
                            <label for="setemail" class="label">picture</label>
                            <input id="setemail" type="text" class="input" placeholder="請輸入圖片" name="npicture" value="../assets/images/eyes.png">
                        </div><br> <div class="loginall-group">
                            <label for="setemail" class="label">div class2</label>
                            <input id="setemail" type="text" class="input" placeholder="請輸入div class2" name="ndiv class2" value="bord-txt">
                        </div><br> <div class="loginall-group">
                            <label for="setemail" class="label">name</label>
                            <input id="setemail" type="text" class="input" placeholder="請輸入名稱" name="nname">
                        </div><br>
						 </div><br> <div class="loginall-group">
                            <label for="setemail" class="label">price</label>
                            <input id="setemail" type="text" class="input" placeholder="請輸入價錢" name="nprice">
                        </div><br>
						 </div><br> <div class="loginall-group">
                            <label for="setemail" class="label">count</label>
                            <input id="setemail" type="text" class="input" placeholder="請輸入庫存" name="ncount">
                        </div><br>
						 
                    </div>
		
					
					    <input type="hidden" name="addp" >
						<button type="submit">新增商品</button></form><%
			
//Step 6: 關閉連線					
                    con.close();
        
       %>
			<input type="button" value="回到後台" onclick="location.href='backstage.jsp'">
    </body>
</html>