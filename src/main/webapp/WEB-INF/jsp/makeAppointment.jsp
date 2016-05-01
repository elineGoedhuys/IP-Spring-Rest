<%-- 
    Document   : makeAppointment
    Created on : 23-mrt-2016, 10:29:14
    Author     : Eline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"
   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>Make appointment</title>
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-timepicker.js"></script>
        <script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>
  
  <script>
  $(document).ready(function() {
    $("#datepicker").datepicker();
  });
 
  </script>
  
 
        
    </head>
    <body>
         <%@include file="header.jsp"%>
        <h1>Make new appointment</h1>
        <form:form modelAttribute="makeAppointment" method="POST" action="${pageContext.request.contextPath}/makeAppointment.htm">
            <table>
                
                <tr>
                    <td><form:label path="doctorId">Doctor ID</form:label></td>
                    <td><form:input path="doctorId" value="${appointment.doctorId}"/></td>
                </tr>
                <tr>
                    <td><form:label path="patientId">Patient ID</form:label></td>
                    <td><form:input path="patientId" value="${appointment.patientId}"/></td>
                </tr>
                <tr>
                    <td><form:label path="date">Date</form:label></td>
                    <td><form:input id="datepicker" path="date" value="${appointment.date}"/></td>
                </tr>
                <tr>
                    <td><form:label path="hour">Hour</form:label></td>
                    <td><form:input id="timepicker5" path="hour" value="${appointment.hour}"/></td>
                </tr>
                <tr>
                    <td><form:label path="place">Place</form:label></td>
                    <td><form:input path="place" value="${appointment.place}"/></td>
                </tr>
                 <tr>
                    <td class="save" colspan="2">
                         <input type="submit" value="Save"/>
                      </td>
                 </tr>
            </table>
        </form:form>
    </body>
            
</html>
