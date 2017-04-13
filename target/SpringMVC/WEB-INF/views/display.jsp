<%-- 
    Document   : display
    Created on : Apr 10, 2017, 6:39:06 AM
    Author     : Arpan Patnaik
--%>

<%@page import="com.test.springmvc.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<form:form modelAttribute="userList">
<html>
   <head>
      <title>Spring MVC Form Handling</title>
   </head>

   <body>
      <h2>Submitted Student Information</h2>
      <table>
         <c:forEach items="${userList}" var="user">
         <tr>
            <td>Name: </td>
            <td>${user.userName}</td>
         </tr>
         <tr>
            <td>Designation: </td>
            <td>${user.designation}</td>
         </tr>
         <tr>
            <td>Password: </td>
            <td>${user.password}</td>
         </tr>
         <tr>
            <td>Age: </td>
            <td>${user.age}</td>
         </tr>
         <tr>
            <td>Location: </td>
            <td>${user.location}</td>
         </tr>
      </c:forEach>
      </table>  
   </body>
   
</html>
</form:form>