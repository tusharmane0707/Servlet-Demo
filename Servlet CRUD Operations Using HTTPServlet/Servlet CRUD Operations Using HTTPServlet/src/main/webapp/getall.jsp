<%@page import="com.jsp.employee.dto.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.employee.service.EmployeeService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	  EmployeeService employeeService = new EmployeeService();
	  List<Employee> employees = employeeService.getAllEmployee();
	%>
	<table border="2px" cellspacing="0" cellpadding="1">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>EMAIL</th>
			<th>GENDER</th>
			<th>SALARY</th>
		</tr>

		<%
		for (Employee e : employees) {
		%>
		<tr>
			<td><%=e.getId()%></td>
			<td><%=e.getName()%></td>
			<td><%=e.getEmail()%></td>
			<td><%=e.getGender()%></td>
			<td><%=e.getSalary()%></td>
			<td><a href="delete.jsp?id=<%= e.getId()%>">Delete</a> </td>
			<td><a href="update.jsp?id=<%= e.getId()%>">Update</a></td>
			
		</tr>

		<%
		}
		%>
	</table>
	

</body>
</html>