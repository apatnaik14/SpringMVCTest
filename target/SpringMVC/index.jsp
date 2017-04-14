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
    <link rel="stylesheet" href="resources/style.css">
    <body>
	<br>
	<div style="text-align:center">
		<h2>
			Employee Save Page<br> <br>
		</h2>
		<h3>
                        <div>         
                            <a class="btn" href="<c:url value="/get"/>">Get Employee Details</a><br><br>
                            <a class="btn" href="<c:url value="/set"/>">Set Employee Details</a>
                        </div>
		</h3>
	</div>
                                  
</body>
</html>

