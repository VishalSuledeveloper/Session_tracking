<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SessionTracking</title>
</head>
<body>
<h1 style="color:blue">Session Tracking Demo-URL Rewriting </h1>

<form action="page1.jsp" method="get">
	<table>
		<tr>
			<td> Enter Name:</td>
			<td> <input type="text" name="fname"></td>
			
		</tr>
		<tr>
			<td> <input type="submit" name="submit" value="submit"></td>
	
	</table>

</form>

<%
	String msg=request.getParameter("status");

	if (msg==null)
	{
		msg="";
	}
%>
<h2 style="color:red"><%=msg%></h2>

</body>
</html>