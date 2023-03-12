<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>    
    <body>
<%
   try{
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       String url="jdbc:odbc:kurs";
       Connection con=DriverManager.getConnection(url);
       Statement stmt=con.createStatement();
       ResultSet rs=stmt.executeQuery("select * from Customer");
%><ol><%
   while(rs.next()){
           int age=rs.getInt("Age");
           String name=rs.getString("Name");           
%><li><%=name+"("+age+")"%></li>
<%}%>
</ol><%}    catch(Exception e){
    e.printStackTrace();
   }
%>
    </body>
</html>
