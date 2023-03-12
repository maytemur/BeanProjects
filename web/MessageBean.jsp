<jsp:useBean id="messageBean" class="com.dt.MessageBean" scope="session"/>
<html>
<body>
<%/*bir nesne yaratiyorsun session boyunca korunuyor scope="appllication" butun
kullanicilara acik scope="page" sadece sayfa icin gibi...*/%>

<h1><jsp:getProperty name="messageBean" property="message"/></h1>
<jsp:setProperty name="messageBean" property="message" value="Message Test"/>
<h2><jsp:getProperty name="messageBean" property="message"/></h2>
</body>
</html>