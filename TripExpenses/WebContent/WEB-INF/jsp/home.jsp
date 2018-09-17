<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
<p><a href="${pageContext.request.contextPath}/locations">Show all locations</a></p>
<sec:authorize access="hasAuthority('admin')">
                       <p><a href="${pageContext.request.contextPath}/addlocation">Add new location</a></p>
	</sec:authorize>
	
	<p><a href="${pageContext.request.contextPath}/employees">Show all employees</a></p>
	
	<sec:authorize access="hasAuthority('admin')">
	<p><a href="${pageContext.request.contextPath}/addemployee">Add new employee</a></p>
                      <p><a href="${pageContext.request.contextPath}/users">Show all users</a></p>
                      	<p><a href="${pageContext.request.contextPath}/adduser">Add new user</a></p>
                      <p><a href="${pageContext.request.contextPath}/authorities">Show all authorities</a></p>
                      
	</sec:authorize>
	

	
	<p><a href="${pageContext.request.contextPath}/addbusinesstrip">Add new business trip</a></p>
	<p><a href="${pageContext.request.contextPath}/businesstrips">Show all business trips</a></p>
	<p><a href="${pageContext.request.contextPath}/tripbills">Show all trip bills</a></p>
	<p><a href="${pageContext.request.contextPath}/addbill">Add new bill</a></p>
	<p><a href="${pageContext.request.contextPath}/bills">Show all bills</a></p>
	 <sec:authorize access="!isAuthenticated()">
	<c:url var="loginUrl" value="login" />
	<form action="${loginUrl}" method="post">
	<input type="submit" class="btn btn-info"   value="login">
                  
                         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"> 
                </form>
	</sec:authorize>
	
	<sec:authorize access="isAuthenticated()">
	<c:url var="logoutUrl" value="logout" />
	<form action="${logoutUrl}" method="post">
	<input type="submit" class="btn btn-info"   value="logout"> Logged in as <security:authentication property="principal.username" /> 
                   
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"> 
</form>
</sec:authorize>
</body>
</html>