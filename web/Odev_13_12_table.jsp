<%@page import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="com.dt.*"%>
<html><head><title>Table Page</title></head>
<body><%
    try{
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    String url="jdbc:odbc:Kurs";
    Connection con=DriverManager.getConnection(url);
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from Customer");                
%>
<form action="Odev_13_12_ekle.jsp" method="POST">
<table><tr><td>No:</td><td><input type="text" name="no"></td></tr><br>    
<tr><td>Ad Soyad:</td><td><input type="text" name="name"></td></tr><br>
    <tr><td>Yaş :</td><td><input type="text" name="age"></td></tr><br>
<tr><td><input type="submit" value="Kullanıcı Ekle" name="ekle" /></td></tr></table></form>
<table border="2"><tr><td>ID</td><td>NAME</td><td>YAS</td></tr><%         
while(rs.next()){
        int id=rs.getInt("CustomerId");        
        int age=rs.getInt("Age");
        String name=rs.getString("Name");
        %>        
<tr><td><%=id%></td><td><%=name%></td><td><%=age%></td><td><a href="Odev_13_12_SilUser.jsp?id=
<%=id%>">Sil</a></td><td>
<a href="Odev_13_12_UpdateUser.jsp?id=<%=id%>">Duzenle</a></td>
</tr>
<%
      }
    %></table><%
 }catch(Exception e){
    e.printStackTrace();
    }%>
</body></html>