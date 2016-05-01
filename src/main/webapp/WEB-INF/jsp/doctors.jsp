<%-- 
    Document   : doctors
    Created on : 23-mrt-2016, 10:29:00
    Author     : Eline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"
   uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>Doctors</title>
    </head>
    <body>
         <%@include file="header.jsp"%>
        <h1>Overview of our doctors</h1>
         <div id ="container">
            <table id="overview" class="table">
                <th>Firstname</th>
                <th>Lastname</th>
                <th>DoctorId</th>
                <th>Age</th>
                <th>Street</th>
                <th>House number</th>
                <th>Town</th>
                <th>Zip code</th>
                <th>Region</th>
                <th>Country</th>
                <th>PassportId</th>
                
                <c:forEach var="doctor" items="${doctors}">
                <tr>
                 
                    <td><c:url value= '${doctor.firstName}' /></td>
                    <td><c:url value= '${doctor.lastName}' /></td>
                    <td><c:url value= '${doctor.id}' /></td>
                    <td><c:url value= '${doctor.age}' /></td>
                    <td><c:url value= '${doctor.address.street}' /></td>
                    <td><c:url value= '${doctor.address.houseNumber}' /></td>
                    <td><c:url value= '${doctor.address.town}' /></td>
                    <td><c:url value= '${doctor.address.zipCode}' /></td>
                    <td><c:url value= '${doctor.address.region}' /></td>
                    <td><c:url value= '${doctor.address.country}' /></td>
                    <td><c:url value= '${doctor.passportId}' /></td>
                    <td><a href="<c:url value="doctors/${doctor.id}.htm"/>"></a><img src="${pageContext.request.contextPath}/images/edit_button.png" class="edit" alt="Edit_Button"></td>
                    
                </tr>
                </c:forEach>
            </table>
             <br>
             <form:form class="add" method="GET" action="${pageContext.request.contextPath}/doctors/new.htm" >
                <input type="submit" value="Add new doctor" />
            </form:form>
            <%--<form method="GET" class="add" action="<c:url value="/doctors/new.htm" />">
                <input type="submit" value="New doctor" />
            </form>--%>
        </div>
    </body>
</html>
