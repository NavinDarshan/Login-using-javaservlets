<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<body>
<c:set var = "str" value = "Navin Darshan is a good boy"></c:set>

    <c:forEach items = "${fn:split(str , ' ')}" var = "s">
    
    <br>
    ${s}
    </c:forEach>

</body>
</html>