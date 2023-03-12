<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@page pageEncoding="UTF-8"%>
<jsp:useBean id="now" class="java.util.Date"/>
<fmt:setLocale value="TR"/>
date: <fmt:formatDate value="${now}"/>
<fmt:formatDate value="${now}" type="date" dateStyle="full"/>
