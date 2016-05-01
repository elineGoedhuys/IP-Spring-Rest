<%-- 
    Document   : header
    Created on : 18-mrt-2016, 19:06:33
    Author     : Eline
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" href="css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <img src="${pageContext.request.contextPath}/images/NYcity1.png" alt="NYcity">
        <nav class="nav">
        <ul class="ul">
        <li><a href="<c:url value="/index.htm" />">Home</a></li>
        <li><a href="<c:url value="/patients.htm" />">Patients</a></li>
        <li><a href="<c:url value="/doctors.htm" />">Doctors</a></li>
        <li><a href="<c:url value="/makeAppointment.htm" />">Make appointment</a></li>
    </ul>
</nav>
    </body>
</html>
