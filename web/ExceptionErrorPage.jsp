<%@page pageEncoding="UTF-8"%>
<%@page isErrorPage="true" import="java.io.*"%>
<html>
    <body>

    <h3>Bir Hata Oluştu   :<%=exception.toString()%>
    </h3>
    <pre>
        <%exception.printStackTrace(new PrintWriter(out));%>
    </pre>    
    </body>
</html>
