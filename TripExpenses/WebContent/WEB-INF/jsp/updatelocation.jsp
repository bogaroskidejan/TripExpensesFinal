<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update location</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/doupdatelocation" method="post">
	<table class="formtable">
	

		<input name="locid" type="hidden"  value="${location.locid}" /> 

		<tr>
			<td class="label">Name: </td>
			<td class="control">
			<input  class="control" name="locname" value="${location.locname}" />
			</td>
			
			
		</tr>
		<tr>
			<td class="label">Country: </td>
			<td class="control">
			<input    name="loccountry"  value="${location.loccountry}" />
			</td>
		</tr>
		<tr>
			<td class="label">Daily allowance: </td>
			<td class="control">
			<input name="locdailyallowance" value="${location.locdailyallowance}" />
			</td>
		</tr>
		<tr>
			<td class="label">Loc distance: </td>
			<td class="control">
			<input name="locdistance"  value="${location.locdistance}" />
			</td>
		</tr>
		<tr>
			<td class="label"></td>
			<td class="control"><input type="submit" value="Update location"></td>
		</tr>
		 
	</table>
	<!-- <input name="${_csrf.paramaterName }" type="hidden" value="${_csrf.token}}" /> -->
	
</form>
</body>
</html>