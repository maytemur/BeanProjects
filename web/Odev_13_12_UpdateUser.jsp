<%@page import="java.sql.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
    <%
       int no=Integer.parseInt(request.getParameter("id"));
%>
               <form action="Odev_13_12_UpdateUser_onay.jsp?id=<%=no%>" method="POST">
<table><tr><td>Ad Soyad:</td><td><input type="text" name="name"></td></tr><br>
    <tr><td>Yaş :</td><td><input type="text" name="age"></td></tr><br>
<tr><td><input type="submit" value="Update" name="update" /></td></tr></table></form>
   </body>
</html>