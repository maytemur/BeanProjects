<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <title>Onay Sonuc</title>
    </head>
    <body>  
    <%
    int no=Integer.parseInt(request.getParameter("id"));
    String name=request.getParameter("name");
    int age=Integer.parseInt(request.getParameter("age"));
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        String url="jdbc:odbc:Kurs";
        Connection con=DriverManager.getConnection(url);        
        PreparedStatement ps=con.prepareStatement("update Customer set Age=?,Name=? where CustomerId=?");
               ps.setInt(3,no);
               ps.setInt(1,age);
               ps.setString(2,name);
               int result=ps.executeUpdate();
               if(result>0){
                   response.sendRedirect("Odev_13_12_table.jsp");
               }
%>
    </body>
</html>
