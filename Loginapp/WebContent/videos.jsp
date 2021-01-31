<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Videos</title>
</head>
<body>

<% 
response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
if(session.getAttribute("username") == null){
	response.sendRedirect("login.jsp");
}
%>

Its videos page

</body>
</html>