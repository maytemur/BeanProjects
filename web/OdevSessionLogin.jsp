<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session</title>
    </head>
    <body>
    <%
       String username=request.getParameter("username");
       String password=request.getParameter("password");
       if(username.equals(password)&&username.toString()!=""&&password.toString()!=""){
           session.setAttribute("username",username);
           session.setAttribute("password",password);
           response.sendRedirect("OdevProfilDuzenle.jsp");
       }else{
           response.sendRedirect("OdevSessionLoginForm.html");
       }
%>    
    </body>
</html>
