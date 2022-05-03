<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
		//javacode-c=scriptlet tag
		
		String name=request.getParameter("fname");
		if(name.equals("vishal"))
		{
			session.setAttribute("username", name);
			
			//endcodeURL()-used to encode /append data to URL
			String UpdatedURL=response.encodeUrl("page2.jsp?username=+name");
			
		

%>

		<a href='<%=UpdatedURL %>'>Click here to run page 2</a>
<%
		}	
		else
		{
				response.sendRedirect("index.jsp?status=Please Enter Valid Username");
				
		}
%>


</body>
</html>