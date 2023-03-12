<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <body>
<% 
String username=request.getParameter("username");
String password=request.getParameter("password");
if(!username.equals(password)){
    
pageContext.forward("test.jsp");
}
%>

    <h1>Hoşgeldin <%=username%>, Şifreniz : <%=password%></h1>
    
<%////******<%=username>----><%out.print(username)> demek****/////%>
    
    </body>
</html>