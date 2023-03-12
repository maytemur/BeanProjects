<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Degisti</title>
    </head>
    <body>
    <%
       String username=(String)session.getAttribute("username");
       if(username==null){
           response.sendRedirect("OdevSessionLoginForm.html");
       }    String yeniusername=request.getParameter("yeniusername");
            String yenipassword=request.getParameter("yenipassword");
       
    %>

    <h1>Hoşgeldin yeni kullanici ismin <%=yeniusername%>, yeni şifren :<%=yenipassword%> </h1>
    </body>
</html>
