<%@page import="java.sql.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<html><head><title>Table Page</title></head>
<body>
<%            
                int no=Integer.parseInt(request.getParameter("no"));
                String name=request.getParameter("name");
                int age=Integer.parseInt(request.getParameter("age"));
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        String url="jdbc:odbc:Kurs";
        Connection baglanti=DriverManager.getConnection(url);          
                
                
        String sql="insert into Customer(CustomerId,Age,Name) values(?,?,?)";
        PreparedStatement ekle=baglanti.prepareStatement(sql);       
        ekle.setInt(1, no);
        ekle.setInt(2, age);
        ekle.setString(3,name);
        
       int sonuc=ekle.executeUpdate();
       if(sonuc>0){
           response.sendRedirect("Odev_13_12_table.jsp");
       }
%><h1>ekleme ok</h1>
</body></html>