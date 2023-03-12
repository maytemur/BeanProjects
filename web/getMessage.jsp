<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>    
<%!
       public String getMessage(){
           return "Hello JSP";           
       }
       public class Test{
           public Test(){}
           public String getTestMessage(){
               return "Birak bu işleri bu işlerde para kazanamazsin";
           }
       }
    %>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Message</title>
    </head>
    <body>

    <h1><%=getMessage()%></h1>
    <%
       Test t=new Test();
    %>
    <p>Test class mesaji : <%=t.getTestMessage()%></p>      
    </body>
</html>
