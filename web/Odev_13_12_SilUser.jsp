<%@page import="java.sql.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Silme</title>
    </head>
    <body>
    <%
    int no=Integer.parseInt(request.getParameter("id"));
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        String url="jdbc:odbc:Kurs";
        Connection con=DriverManager.getConnection(url); 
               PreparedStatement ps=con.prepareStatement("delete from Customer where CustomerId=?");
               ps.setInt(1,no);               
               int result=ps.executeUpdate();
               if(result>0){
                   response.sendRedirect("Odev_13_12_table.jsp");
               }
%>
    </body>
</html>
