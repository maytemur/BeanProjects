<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@page pageEncoding="UTF-8"%>
<html>
<body>
<c:import url="http://localhost:8084/Projects/Student.xml" var="xml"/>
<x:parse xml="${xml}" var="doc"/>
<x:out select="$doc/class/@name"/>
</body>
</html>