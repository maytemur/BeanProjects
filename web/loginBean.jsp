<%@page pageEncoding="UTF-8"%>
<jsp:useBean id="loginBean" class="com.dt.LoginBean" scope="session"/>
<jsp:setProperty name="loginBean" property="*"/>
<html>
<body>
Hoşgeldiniz <jsp:getProperty name="loginBean" property="username"/>
<br>
Şifreniz : <jsp:getProperty name="loginBean" property="password"/>
</body>
</html>