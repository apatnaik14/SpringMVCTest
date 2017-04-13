<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Save User Details</title>
    </head>
    <body>
    <form:form method="post" action="/SpringMVC/register" modelAttribute="user">
    <table>
    <tr>
        <td>User Name</td>
        <td><form:input path="userName" /></td>
    </tr>
    <tr>
        <td>Password</td>
        <td><form:input path="password" /></td>
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
            <input type="submit" value="send"/>
        </td>
    </tr>
</table>
</form:form>
</body>
</html>
