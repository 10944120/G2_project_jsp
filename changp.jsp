<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ include file="config.jsp"%>
<section>             
                <h3>修改商品</h3>  
						<form action="ccheck.jsp" method="POST">					
                            <label for="account" class="label" >商品id: </label>
                            <input id="account" type="text" class="input" name="id" placeholder="請輸入商品id">                                              
                            <a href="member.jsp"><input type="submit" class="button" name="b1" value="搜尋"></a> 	
                        </form>							                     						             
    </section>