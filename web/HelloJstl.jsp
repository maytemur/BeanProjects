<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <body>
        <h3><c:out value="Hello JSTL"/></h3>
        <c:set var="test" value="10"/>
        <c:if test="${test==10}">
            <c:out value="test = 10"/>
        </c:if>
        <c:set var="str" value="Hosgeldin Java Standart Library"/>
        boy : ${fn:length(str)} <br>
        Java içeriyor mu? : ${fn:contains(str,"Java")}
        <c:import url="http://localhost:8084/Projects/Student.xml" var="xml"/>
        <x:parse xml="${xml}" var="doc"/>
        <x:out select="$doc/class/@name"/>
        <br>
        <sql:query var="projects" dataSource="jdbc:odbc:kurs,sun.jdbc.odbc.JdbcOdbcDriver">
        select * from Customer</sql:query>        
        <c:set var="rows" value="${projects.rows}"/>
        <c:forEach var="row" items="${rows}">
            age : <c:out value="${row.Age}"/>  
            name :<c:out value="${row.Name}"/>  
            <br>
        </c:forEach>
    </body>
</html> 