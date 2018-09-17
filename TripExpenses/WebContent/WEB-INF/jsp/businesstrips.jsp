
    
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All users</title>
</head>
<body>

<table class = "table" border="2" width="600" >
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>From Date:</th>  
                        <th>To Date:</th>  
                        <th>Days count:</th> 
                          <th>Total allowance:</th> 
                        <th>Employee:</th>
                        <th>Location:</th>  
                        <th>Action:</th>  
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="businesstrip" items="${businesstrips}">
                        <tr>
                            <td>${businesstrip.bustripid}</td>
                            <td>${businesstrip.fromdate}</td>  
                            <td>${businesstrip.todate}</td>  
                            <td>${businesstrip.dayscount}</td>  
                             <td>${businesstrip.triptotallow}</td>  
                            <td>${businesstrip.employee}</td>  
                            <td>${businesstrip.location}</td>  
                            <td><sec:authorize access="hasAuthority('admin')">
	<a onclick="if(!(confirm('Are u sure u want to delete? '))) return false" href="${pageContext.request.contextPath}/deletebusinesstrip?bustripid=${businesstrip.bustripid}">Delete</a>
                      
	</sec:authorize>
                            </td>                      
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            	
</body>
</html>