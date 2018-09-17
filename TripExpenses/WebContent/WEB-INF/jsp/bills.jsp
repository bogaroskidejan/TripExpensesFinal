
    
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All bills</title>
</head>
<body>
                <table class = "table" border="2" width="600" >
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Bill Date</th>  
                        <th>Bill Item</th> 
                        <th>Price</th>
                        <th>Business trip</th>
                        <th>Action:</th>                  
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="bill" items="${bills}">
                        <tr>
                            <td>${bill.billid}</td>
                            <td>${bill.billitem}</td>                        
                            <td>${bill.price}</td>
                            <td>${bill.billdate}</td>  
                            <td>${bill.businesstrip}</td>  
                            
                            <td><sec:authorize access="hasAuthority('admin')">
<a onclick="if(!(confirm('Are u sure u want to delete? '))) return false" href="${pageContext.request.contextPath}/deletebill?billid=${bill.billid}">Delete</a>                      
	</sec:authorize>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
</body>
</html>