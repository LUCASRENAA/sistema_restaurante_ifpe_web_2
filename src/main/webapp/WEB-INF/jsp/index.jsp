<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Index</h1>
<a href="/login"/>logar</a></br>
<a href="/registro">registro</a>
${msg}


<c:forEach items="${pratos}" var="item">
			<tr>
			
				<td>${item.nome}</td>
			</tr>
		</c:forEach>
		
</body>
</html>