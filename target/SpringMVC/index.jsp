<%-- 
    Document   : index
    Created on : Apr 9, 2017, 2:19:40 AM
    Author     : Arpan Patnaik
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Index Page</title>
    </head>
    <body>
	<br>
	<div style="text-align:center">
		<h2>
			Employee Save Page<br> <br>
		</h2>
		<h3>
			<a href="<c:url value="/get"/>">Click to GET Emp Details </a><br><br>
                        <a href="<c:url value="/set"/>">Click to SET Emp Details </a>
		</h3>
	</div>
</body>
</html>

