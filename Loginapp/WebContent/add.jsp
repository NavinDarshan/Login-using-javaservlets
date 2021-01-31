<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Title</title>
</head>
<body bgcolor="green">

	<sql:setDataSource var="world" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/world" user="root" password="Navin" />

	<sql:query var="res" dataSource="${world}">select * from country</sql:query>
	
	<c:forEach items = "${res.rows}" var = "city">
	<c:out value="${city.ID}"/> : <c:out value="${city.Name}"/><br/>
	</c:forEach>
	

</body>
</html>