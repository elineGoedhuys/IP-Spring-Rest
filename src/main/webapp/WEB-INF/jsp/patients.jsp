<%-- 
    Document   : patients
    Created on : 29-apr-2016, 20:48:06
    Author     : Eline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"
   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        
        <title>Patients overview</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <h1><spring:message code="lbl.page"/></h1>
        <div id ="container">
            <table id="overview" class="table">
                <th><spring:message code="lbl.firstName" /> </th>
                <th><spring:message code="lbl.lastName" /> </th>
                <th><spring:message code="lbl.patientId" /></th>
                <th><spring:message code="lbl.age" /></th>
                <th><spring:message code="lbl.street" /></th>
                <th><spring:message code="lbl.houseNumber"  /></th>
                <th><spring:message code="lbl.town" /></th>
                <th><spring:message code="lbl.zipCode"  /></th>
                <th><spring:message code="lbl.region"  /></th>
                <th><spring:message code="lbl.country" /></th>
                <th><spring:message code="lbl.passportId"/></th>
                
                <c:forEach var="patient" items="${patients}">
                <tr>
                 
                    <td><c:url value= '${patient.firstName}' /></td>
                    <td><c:url value= '${patient.lastName}' /></td>
                    <td><c:url value= '${patient.id}' /></td>
                    <td><c:url value= '${patient.age}' /></td>
                    <td><c:url value= '${patient.address.street}' /></td>
                    <td><c:url value= '${patient.address.houseNumber}' /></td>
                    <td><c:url value= '${patient.address.town}' /></td>
                    <td><c:url value= '${patient.address.zipCode}' /></td>
                    <td><c:url value= '${patient.address.region}' /></td>
                    <td><c:url value= '${patient.address.country}' /></td>
                    <td><c:url value= '${patient.passportId}' /></td>
                    <td><a href="<c:url value="patients/${patient.id}.htm"/>"></a><img src="${pageContext.request.contextPath}/images/edit_button.png" class="edit" alt="Edit_Button"></td>
                    
                </tr>
                </c:forEach>
            </table>
            <br>
             <form:form class="add" method="GET" action="${pageContext.request.contextPath}/patients/new.htm" >
                <input type="submit" value="Add new patient" />
            </form:form>
        </div>
    </body>
</html>
