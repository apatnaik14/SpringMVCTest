<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/style.css">
        <title>Save Employee Details</title>
    </head>
    <body>
    <h2 align="center">Submit Employee Information</h2>
    <form:form method="post" action="/SpringMVC/register" modelAttribute="user">
    <table id="employee" align="center">
    <tr>
        <td>User Name</td>
        <td><form:input path="userName" /></td>
    </tr>
    <tr>
        <td>Password</td>
        <td><form:input type="password" path="password" /></td>
    </tr>
    <tr>
        <td>Age</td>
        <td><form:input path="age" /></td>
    </tr>
    <tr>
        <td>Designation</td>
        <td><form:input path="designation" /></td>
    </tr>
    <tr>
        <td>Location</td>
        <td><form:input path="location" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input class="btn" type="submit" value="Save"/>
        </td>
    </tr>
</table>
</form:form>
</body>
</html>
