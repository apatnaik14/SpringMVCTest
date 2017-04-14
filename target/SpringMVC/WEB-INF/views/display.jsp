<%-- 
    Document   : display
    Created on : Apr 10, 2017, 6:39:06 AM
    Author     : Arpan Patnaik
--%>

<%@page import="com.test.springmvc.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form:form modelAttribute="userVar">
<html>
   <head>
      <title>Employee Information Page</title>
      <link rel="stylesheet" href="resources/style.css">
   </head>

   <body>     
      <h2 align="center">Submitted Employee Information</h2>
      <br/>
      <table id="employee" align="center">
        <tr>
		<th>Name</th>
		<th>Designation</th>
		<th>Password</th>
		<th>Age</th>
                <th>Location</th>
	</tr>
         <c:forEach items="${userVar.users}" var="user">
         <tr>
            <td>${user.userName}</td>
            <td>${user.designation}</td>
            <td>${user.password}</td>
            <td>${user.age}</td>
            <td>${user.location}</td>
         </tr>
      </c:forEach>
      </table>  
   </body>
</html>
</form:form>