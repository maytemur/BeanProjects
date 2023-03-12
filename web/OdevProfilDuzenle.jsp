<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <body>
    <%
       String username=(String)session.getAttribute("username");
       String password=(String)session.getAttribute("password");
       if(username==null){
           response.sendRedirect("OdevSessionLoginForm.html");
       }
    %>
    <form action="OdevProfilSonuc.jsp" method="POST">
    Yeni Kullanıcı Adı: <input type="text" name=yeniusername><br>
    Yeni Şifre: <input type="text" name=yenipassword><br>
    <input type="submit" value="giriş">
</form>       
    </body>
</html>
