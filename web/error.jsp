<html>
<body>
<%
    String isim=request.getParameter("username");
    String soyad=request.getParameter("password");%>
                <h2><%=isim%></h2>
                <h2><%=soyad%></h2>
    <h2>gecersizdir ,tekrar giris yapiniz</h2>
    <a href="login.html">Tiklayiniz</a>
        </body>  
</html>